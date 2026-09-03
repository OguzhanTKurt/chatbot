from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response

from apps.chat.models import Conversation
from .models import Document, GlobalDocument
from apps.engine.document_parser import parse_document

@api_view(["POST"])
def upload_document(request, conversation_id):
    try:
        try:
            conversation = Conversation.objects.get(pk=conversation_id)
        except Conversation.DoesNotExist:
            return Response({"error": "Sohbet bulunamadı."}, status=status.HTTP_404_NOT_FOUND)

        file_obj = request.FILES.get("file")
        if not file_obj:
            return Response({"error": "Dosya bulunamadı."}, status=status.HTTP_400_BAD_REQUEST)

        # Dosyayı kaydet
        doc = Document(conversation=conversation, file=file_obj, filename=file_obj.name)
        doc.save()

        # Dosya içeriğini oku
        extracted_text = parse_document(doc.file.path, doc.filename)
        
        doc.extracted_text = extracted_text
        doc.save(update_fields=["extracted_text"])

        # Vektör DB'ye kaydet
        if extracted_text:
            from apps.rag.chunker import DocumentChunker
            chunker = DocumentChunker()
            chunker.chunk_and_save(extracted_text, document=doc, conversation=conversation)

        return Response({
            "id": str(doc.id),
            "filename": doc.filename,
            "message": "Doküman başarıyla yüklendi ve işlendi."
        }, status=status.HTTP_201_CREATED)
    except Exception as e:
        import logging
        import traceback
        logging.getLogger(__name__).error(f"Doküman yükleme hatası: {e}\n{traceback.format_exc()}")
        return Response({"error": str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

@api_view(["DELETE"])
def delete_document(request, conversation_id, document_id):
    try:
        conversation = Conversation.objects.get(pk=conversation_id)
    except Conversation.DoesNotExist:
        return Response({"error": "Sohbet bulunamadı."}, status=status.HTTP_404_NOT_FOUND)

    try:
        doc = Document.objects.get(pk=document_id, conversation=conversation)
        doc.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    except Exception as e:
        return Response({"error": str(e)}, status=status.HTTP_400_BAD_REQUEST)

@api_view(["GET"])
def global_document_list(request):
    docs = GlobalDocument.objects.all()
    data = [{"id": str(d.id), "filename": d.filename, "created_at": d.created_at} for d in docs]
    return Response(data)

@api_view(["POST"])
def upload_global_document(request):
    try:
        file_obj = request.FILES.get("file")
        if not file_obj:
            return Response({"error": "Dosya bulunamadı."}, status=status.HTTP_400_BAD_REQUEST)

        doc = GlobalDocument(file=file_obj, filename=file_obj.name)
        doc.save()

        extracted_text = parse_document(doc.file.path, doc.filename)
        
        doc.extracted_text = extracted_text
        doc.save(update_fields=["extracted_text"])

        # Vektör DB'ye kaydet
        if extracted_text:
            from apps.rag.chunker import DocumentChunker
            chunker = DocumentChunker()
            chunker.chunk_and_save(extracted_text, global_document=doc)

        return Response({
            "id": str(doc.id),
            "filename": doc.filename,
            "message": "Global doküman başarıyla yüklendi."
        }, status=status.HTTP_201_CREATED)
    except Exception as e:
        import traceback
        return Response({"error": str(e), "traceback": traceback.format_exc()}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

@api_view(["DELETE"])
def delete_global_document(request, document_id):
    try:
        doc = GlobalDocument.objects.get(pk=document_id)
        doc.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
    except GlobalDocument.DoesNotExist:
        return Response({"error": "Doküman bulunamadı."}, status=status.HTTP_404_NOT_FOUND)
