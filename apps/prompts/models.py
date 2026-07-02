from django.db import models

class SystemPrompt(models.Model):
    name = models.CharField(max_length=255, unique=True, default="default")
    content = models.TextField()
    is_active = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"{self.name} (Active: {self.is_active})"

    def save(self, *args, **kwargs):
        if self.is_active:
            # Sadece 1 tane aktif olabilir
            SystemPrompt.objects.filter(is_active=True).update(is_active=False)
        super().save(*args, **kwargs)
