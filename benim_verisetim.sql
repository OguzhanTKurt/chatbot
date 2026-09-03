--
-- PostgreSQL database dump
--

\restrict yMTTdmQh9r0EiOJTSrWK8wM1YQgennFQkqAjTxrQqj5vfcaJUeZXn6bCU8SCOb1

-- Dumped from database version 16.14 (Debian 16.14-1.pgdg12+1)
-- Dumped by pg_dump version 16.14 (Debian 16.14-1.pgdg12+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: vector; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS vector WITH SCHEMA public;


--
-- Name: EXTENSION vector; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION vector IS 'vector data type and ivfflat and hnsw access methods';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: Dil; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."Dil" (
    "Türkçe" text,
    "Italyanca" text,
    "Ingilizce" text
);


ALTER TABLE public."Dil" OWNER TO chatbot_user;

--
-- Name: FIRMA; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."FIRMA" (
    "FIRMA" text
);


ALTER TABLE public."FIRMA" OWNER TO chatbot_user;

--
-- Name: GRUPLAR; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."GRUPLAR" (
    "GRUPLAR" text
);


ALTER TABLE public."GRUPLAR" OWNER TO chatbot_user;

--
-- Name: ISEDA001Kolon; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA001Kolon" (
    "ParcaAdi" text,
    "Merkezleme Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "D" text,
    "Olcu" text,
    "D1(mm)" text,
    "DU(mm)" text,
    "L1(mm)" text,
    "L2(mm)" text,
    "D3(mm)" text,
    "C(mm)" text,
    "ACI(deg)" text,
    "R(mm)" text,
    "E(mm)" text,
    "D6(mm)" text,
    "D7(mm)" text,
    "D8(mm)" text,
    "D9(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "STQFATURALI" text,
    "STQFATURASIZ" text,
    "STQDELIKLI" text,
    "TOFASFATURALI" text,
    "TOFASFATURASIZ" text,
    "TOFASDELIKLI" text,
    "Depo_KoduFATURALI" text,
    "Depo_KoduFATURASIZ" text,
    "Depo_KoduDELIKLI" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA001Kolon" OWNER TO chatbot_user;

--
-- Name: ISEDA002AzotSilindiri; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA002AzotSilindiri" (
    "ParcaAdi" text,
    "Baskı Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "TipA" text,
    "Kuvvet" text,
    "KursA" text,
    "Olcu" text,
    "D(mm)" text,
    "Pcap" text,
    "D1(mm)" text,
    "Dba(mm)" text,
    "L(mm)" text,
    "L1(mm)" text,
    "R(mm)" text,
    "e(mm)" text,
    "d2(mm)" text,
    "d4(mm)" text,
    "g(mm)" text,
    "b(mm)" text,
    "a(mm)" text,
    "f(mm)" text,
    "h(mm)" text,
    "Ty(mm)" text,
    "M" text,
    "RekorBaglantisi" text,
    "Koruyucu" text,
    cvtadet text,
    "KursMax(mm)" text,
    "SPECiALSPRiNGS" text,
    "SPECiALSPRiNGSTESiSATSIZ" text,
    "SPECiALSPRiNGSTESiSATLI" text,
    "Not1" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "TOFASTESISATLIDOLU" text,
    "TOFASTESISATSIZDOLU" text,
    "TOFASTESISATLIBOS" text,
    "Depo_KoduTESISATDOLU" text,
    "Depo_KoduTESISATSIZDOLU" text,
    "Depo_KoduTESISATLIBOS" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA002AzotSilindiri" OWNER TO chatbot_user;

--
-- Name: ISEDA003AzotSilindiriTutucu; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA003AzotSilindiriTutucu" (
    "ParcaAdi" text,
    "Baskı Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Pcap" text,
    "Tip" text,
    "B(mm)" text,
    "B1(mm)" text,
    "A1(mm)" text,
    "A2(mm)" text,
    "A3(mm)" text,
    "D1(mm)" text,
    "D2(mm)" text,
    "D3(mm)" text,
    "H(mm)" text,
    "T(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "G(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "aa(mm)" text,
    "bb(mm)" text,
    "cc(mm)" text,
    "dd(mm)" text,
    "ee(mm)" text,
    "ff(mm)" text,
    "gg(mm)" text,
    "jj(mm)" text,
    "hh(mm)" text,
    "ii(mm)" text,
    "nn(mm)" text,
    "kk(mm)" text,
    "ZD(mm)" text,
    "ZC(mm)" text,
    "HO(mm)" text,
    "RO(mm)" text,
    "DO(mm)" text,
    "AO(mm)" text,
    "fca(mm)" text,
    "fcb(mm)" text,
    "fcc(mm)" text,
    "fcd(mm)" text,
    "fce(mm)" text,
    "fcf(mm)" text,
    "fcg(mm)" text,
    fch text,
    "fsa(mm)" text,
    "fsb(mm)" text,
    "fsc(mm)" text,
    "fsd(mm)" text,
    "fse(mm)" text,
    "fsf(mm)" text,
    "fsg(mm)" text,
    "fsh(mm)" text,
    "fsi(mm)" text,
    "fsl(mm)" text,
    "fsz(mm)" text,
    fsm text,
    "fsn(mm)" text,
    "fso(mm)" text,
    "2delik" text,
    "4delik" text,
    "Tip01" text,
    "Tip02-Tip03" text,
    "Tip04" text,
    "Tip05" text,
    "Tip06" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "SPECiALSPRiNG" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA003AzotSilindiriTutucu" OWNER TO chatbot_user;

--
-- Name: ISEDA004AskiCivatasi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA004AskiCivatasi" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "A" text,
    "F(mm)" text,
    "D5(mm)" text,
    "D2(mm)" text,
    "D3(mm)" text,
    "SP(mm)" text,
    "L(mm)" text,
    "L1(mm)" text,
    "L2(mm)" text,
    "L3(mm)" text,
    "H(mm)" text,
    "D(mm)" text,
    "S(mm)" text,
    "D1(mm)" text,
    "G(mm)" text,
    "GS" text,
    "Mi" text,
    "M" text,
    "Md(mm)" text,
    "ML(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA004AskiCivatasi" OWNER TO chatbot_user;

--
-- Name: ISEDA005KolonBurcTutucu; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA005KolonBurcTutucu" (
    "ParcaAdi" text,
    "Merkezleme Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "D1(mm)" text,
    "E(mm)" text,
    "Dx(mm)" text,
    "D2(mm)" text,
    "G(mm)" text,
    "L(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "H1(mm)" text,
    "H2(mm)" text,
    "T(mm)" text,
    "Olcu" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA005KolonBurcTutucu" OWNER TO chatbot_user;

--
-- Name: ISEDA006Yayliitici; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA006Yayliitici" (
    "ParcaAdi" text,
    "Cikaricilar-iticiler" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "D(mm)" text,
    "D1(mm)" text,
    "D4(mm)" text,
    "D5(mm)" text,
    "L1(mm)" text,
    "L3(mm)" text,
    "S(mm)" text,
    "M" text,
    "Kritiklik_No" text,
    "NOT" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA006Yayliitici" OWNER TO chatbot_user;

--
-- Name: ISEDA008DisStoper; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA008DisStoper" (
    "ParcaAdi" text,
    "Stoplama Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "D1(mm)" text,
    "D2(mm)" text,
    "D3(mm)" text,
    "H1(mm)" text,
    "H2(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA008DisStoper" OWNER TO chatbot_user;

--
-- Name: ISEDA009LKizak; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA009LKizak" (
    "ParcaAdi" text,
    "Merkezleme Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "G(mm)" text,
    "L(mm)" text,
    "B2(mm)" text,
    "H(mm)" text,
    "D(mm)" text,
    "G1(mm)" text,
    "L1(mm)" text,
    "D1(mm)" text,
    "E1(mm)" text,
    "E2(mm)" text,
    "E3(mm)" text,
    "E4(mm)" text,
    "R(mm)" text,
    "A(mm)" text,
    "D2(mm)" text,
    "M" text,
    "Baglanti" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "CvtAdet" text,
    "CD(mm)" text,
    "CB(mm)" text,
    "Hvs1x(mm)" text,
    "Hvs1y(mm)" text,
    "Hvs2x(mm)" text,
    "Hvs2y(mm)" text,
    "Hvs3x(mm)" text,
    "Hvs3y(mm)" text,
    "Hvs4x(mm)" text,
    "Hvs4y(mm)" text,
    "Hvs5x(mm)" text,
    "Hvs5y(mm)" text,
    "Hvs6x(mm)" text,
    "Hvs6y(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA009LKizak" OWNER TO chatbot_user;

--
-- Name: ISEDA010Kamstoperi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA010Kamstoperi" (
    "ParcaAdi" text,
    "Kam Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "L1(mm)" text,
    "L2(mm)" text,
    "L5(mm)" text,
    "D1(mm)" text,
    "L3(mm)" text,
    "L6(mm)" text,
    "D2(mm)" text,
    "L7(mm)" text,
    "L4(mm)" text,
    "C1(mm)" text,
    "C2(mm)" text,
    "H1(mm)" text,
    "C3(mm)" text,
    "D3(mm)" text,
    "D(mm)" text,
    "F(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Yazi(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA010Kamstoperi" OWNER TO chatbot_user;

--
-- Name: ISEDA011AzotSilindiriKarsiligi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA011AzotSilindiriKarsiligi" (
    "ParcaAdi" text,
    "Baskı Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "D(mm)" text,
    "D1(mm)" text,
    "E(mm)" text,
    "E2(mm)" text,
    "T(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Dsc(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "TOFASKARE" text,
    "TOFASDIKDORTGEN" text,
    "Depo_KoduKARE" text,
    "Depo_KoduDIKDORTGEN" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA011AzotSilindiriKarsiligi" OWNER TO chatbot_user;

--
-- Name: ISEDA012KamKapaklari; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA012KamKapaklari" (
    "ParcaAdi" text,
    "Kam Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "A(mm)" text,
    "B(mm)" text,
    "S(mm)" text,
    "B1(mm)" text,
    "A1(mm)" text,
    "B2(mm)" text,
    "A2(mm)" text,
    "B3(mm)" text,
    "A3(mm)" text,
    "B4(mm)" text,
    "A4(mm)" text,
    "B5(mm)" text,
    "A5(mm)" text,
    "D1(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "DLK" text,
    "Lc(mm)" text,
    "Sy(mm)" text,
    "Baglanti" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "TOFASBRONZGRAFITLI" text,
    "TOFASCELIK" text,
    "Depo_KoduBRONZGRAFITLI" text,
    "Depo_KoduTOFASCELIK" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA012KamKapaklari" OWNER TO chatbot_user;

--
-- Name: ISEDA013PnomatikSilindir; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA013PnomatikSilindir" (
    "ParcaAdi" text,
    "Cikaricilar-iticiler" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Kurs" text,
    "KURSA(mm)" text,
    "BOY(mm)" text,
    "BOY160_200(mm)" text,
    "UST_TABAN(mm)" text,
    "ALT_TABAN(mm)" text,
    "PISTON_BASLAMA_PLANE(mm)" text,
    "SOMUN_BASLAMA_PLANE(mm)" text,
    "PISTON_DIP_GENISLIK(mm)" text,
    "PISTON_DIP_CAP(mm)" text,
    "PISTON_GOVDE_CAP(mm)" text,
    "PISTON_GOVDE_UZUNLUK(mm)" text,
    "PISTON_SAP_UZUNLUK(mm)" text,
    "PISTON_SAP_CAP(mm)" text,
    "UST_PAD_1(mm)" text,
    "UST_PAD_CAP_1(mm)" text,
    "UST_PAD_2(mm)" text,
    "ALT_PAD(mm)" text,
    "SOMUN_GENISLIK(mm)" text,
    "SOMUN_PAD(mm)" text,
    "DELIK_YZ(mm)" text,
    "DELIK_XY(mm)" text,
    "DELIK_CAP(mm)" text,
    "DELIK_DERINLIK(mm)" text,
    "EN1(mm)" text,
    "EN2(mm)" text,
    "32lik" text,
    "40lik" text,
    "50lik" text,
    "63luk" text,
    "80lik" text,
    "100luk" text,
    "125lik" text,
    "160lik" text,
    "200luk" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "FESTO" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA013PnomatikSilindir" OWNER TO chatbot_user;

--
-- Name: ISEDA014KonikStoper; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA014KonikStoper" (
    "ParcaAdi" text,
    "Stoplama Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "D1(mm)" text,
    "D2(mm)" text,
    "D3(mm)" text,
    "D4(mm)" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "E(mm)" text,
    "F(mm)" text,
    "G(mm)" text,
    "L(mm)" text,
    "H(mm)" text,
    "N(mm)" text,
    "Ha(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "M1" text,
    "M2" text,
    "D5(mm)" text,
    "D6(mm)" text,
    "D7(mm)" text,
    "Olcu" text,
    "D8(mm)" text,
    "Kritiklik_No" text,
    "Baglanti" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA014KonikStoper" OWNER TO chatbot_user;

--
-- Name: ISEDA015Burc; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA015Burc" (
    "ParcaAdi" text,
    "Merkezleme Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "D1(mm)" text,
    "D2(mm)" text,
    "L(mm)" text,
    "D3(mm)" text,
    "L2(mm)" text,
    "L3(mm)" text,
    "L4(mm)" text,
    "R1(mm)" text,
    "R2(mm)" text,
    "Rc(mm)" text,
    "L5(mm)" text,
    "Db(mm)" text,
    "Olcu" text,
    "ACI(deg)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA015Burc" OWNER TO chatbot_user;

--
-- Name: ISEDA016AciliKizak; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA016AciliKizak" (
    "ParcaAdi" text,
    "Merkezleme Elemanları" text,
    "Merkezleme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Alternatif" text,
    "H" text,
    "H1(mm)" text,
    "L1(mm)" text,
    "L(mm)" text,
    "Malzeme" text,
    "Sertlik_Degeri" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA016AciliKizak" OWNER TO chatbot_user;

--
-- Name: ISEDA017PnoSilKavramaPlakasi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA017PnoSilKavramaPlakasi" (
    "ParcaAdi" text,
    "Cikaricilar-iticiler" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "d(mm)" text,
    "E(mm)" text,
    "FB(mm)" text,
    "MF(mm)" text,
    "R(mm)" text,
    "TF(mm)" text,
    "TG(mm)" text,
    "UF(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "d1(mm)" text,
    "d2(mm)" text,
    "Baglanti" text,
    "MOlcu(mm)" text,
    "Olcu" text,
    "L4(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA017PnoSilKavramaPlakasi" OWNER TO chatbot_user;

--
-- Name: ISEDA018PnoSilBaglantiAyagi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA018PnoSilBaglantiAyagi" (
    "ParcaAdi" text,
    "Cikaricilar-iticiler" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "AB(mm)" text,
    "AH(mm)" text,
    "AT(mm)" text,
    "AU(mm)" text,
    "AO(mm)" text,
    "C(mm)" text,
    "E(mm)" text,
    "TR1(mm)" text,
    "R1(mm)" text,
    "R2(mm)" text,
    "D(mm)" text,
    "TG(mm)" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "MOlcu(mm)" text,
    "M" text,
    "Olcu" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA018PnoSilBaglantiAyagi" OWNER TO chatbot_user;

--
-- Name: ISEDA019EklemBaglantisiAT4; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA019EklemBaglantisiAT4" (
    "ParcaAdi" text,
    "Cikaricilar-iticiler" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "UL(mm)" text,
    "NH(mm)" text,
    "TH(mm)" text,
    "C(mm)" text,
    "CR(mm)" text,
    "HB(mm)" text,
    "HC(mm)" text,
    "G(mm)" text,
    "FN(mm)" text,
    "FK(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "CB(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA019EklemBaglantisiAT4" OWNER TO chatbot_user;

--
-- Name: ISEDA020EklemBaglantisiMP; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA020EklemBaglantisiMP" (
    "ParcaAdi" text,
    "Cikaricilar-iticiler" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFASCP" text,
    "TOFASCN" text,
    "Depo_KoduCP" text,
    "Depo_KoduCN" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA020EklemBaglantisiMP" OWNER TO chatbot_user;

--
-- Name: ISEDA020İPTAL; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA020İPTAL" (
    "ParcaAdi" text,
    "Cikaricilar-iticiler" text,
    "Tip" text,
    "S(mm)" text,
    "D(mm)" text,
    "D1(mm)" text,
    "D2(mm)" text,
    "M" text,
    "Dp(mm)" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "H(mm)" text,
    "H1(mm)" text,
    "H2(mm)" text,
    "H3(mm)" text,
    "L(mm)" text,
    "L1(mm)" text,
    "W(mm)" text,
    "W1(mm)" text,
    "W2(mm)" text,
    "E(mm)" text,
    "E1(mm)" text,
    "e2(mm)" text,
    "e3(mm)" text,
    "f(mm)" text,
    "Filk(N)" text,
    "Fson(N)" text,
    "FIBRO" text,
    "SPECiALSPRiNGS" text,
    "GSB" text,
    "MBT" text,
    "SANKYO" text,
    "OMCR" text,
    "BALLUF" text,
    "FESTO" text,
    "ISO" text,
    "TOFAS" text,
    "MOELLER" text,
    "PERMA" text,
    "IFM" text,
    "DAYTON" text,
    "NEWSTARK" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text,
    "FIRMA" text,
    "TERCIH" text,
    "FOTOSANKYO" text
);


ALTER TABLE public."ISEDA020İPTAL" OWNER TO chatbot_user;

--
-- Name: ISEDA021EklemBaglantisiCI; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA021EklemBaglantisiCI" (
    "ParcaAdi" text,
    "Cikaricilar-iticiler" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "32" text,
    "40" text,
    "50" text,
    "63" text,
    "80" text,
    "100" text,
    "125" text,
    "160" text,
    "200" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "CB(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text,
    "F30" text,
    "F31" text,
    "F32" text,
    "F33" text,
    "F34" text,
    "F35" text,
    "F36" text,
    "F37" text,
    "F38" text
);


ALTER TABLE public."ISEDA021EklemBaglantisiCI" OWNER TO chatbot_user;

--
-- Name: ISEDA021İPTAL; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA021İPTAL" (
    "ParcaAdi" text,
    "Cikaricilar-iticiler" text,
    "Tip" text,
    "Kurs(mm)" text,
    "Filk(N)" text,
    "Fson(N)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "D(mm)" text,
    "E(mm)" text,
    "F(mm)" text,
    "G(mm)" text,
    "I(mm)" text,
    "J(mm)" text,
    "K(mm)" text,
    "L(mm)" text,
    "J1(mm)" text,
    "N(mm)" text,
    "O(mm)" text,
    "P(mm)" text,
    "R(mm)" text,
    "S(mm)" text,
    "T(mm)" text,
    "U(mm)" text,
    "V(mm)" text,
    "Y(mm)" text,
    "Z(mm)" text,
    "W(mm)" text,
    "X(mm)" text,
    "a1(mm)" text,
    "b1(mm)" text,
    "c1(mm)" text,
    "d1(mm)" text,
    "e1(mm)" text,
    "f1(mm)" text,
    "g1(mm)" text,
    "l1(mm)" text,
    "k1(mm)" text,
    "FIBRO" text,
    "SPECiALSPRiNGS" text,
    "GSB" text,
    "MBT" text,
    "SANKYO" text,
    "OMCR" text,
    "BALLUF" text,
    "FESTO" text,
    "ISO" text,
    "TOFAS" text,
    "MOELLER" text,
    "PERMA" text,
    "IFM" text,
    "DAYTON" text,
    "NEWSTARK" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text,
    "FIRMA" text,
    "TERCIH" text,
    "FOTOSANKYO" text
);


ALTER TABLE public."ISEDA021İPTAL" OWNER TO chatbot_user;

--
-- Name: ISEDA022FlansCikariciTip; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA022FlansCikariciTip" (
    "ParcaAdi" text,
    "Cikaricilar-iticiler" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Kurs(mm)" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "MOlcu(mm)" text,
    "M" text,
    "MBaglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "SANKYO" text,
    "TOFAS" text,
    "TOFASALTTAN" text,
    "TOFASYANDAN" text,
    "Depo_KoduALTTAN" text,
    "Depo_KoduYANDAN" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA022FlansCikariciTip" OWNER TO chatbot_user;

--
-- Name: ISEDA023KalipMerkezlemePimi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA023KalipMerkezlemePimi" (
    "ParcaAdi" text,
    "Merkezleme Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "MOlcu(mm)" text,
    "Mbaglanti" text,
    "M1" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "D(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA023KalipMerkezlemePimi" OWNER TO chatbot_user;

--
-- Name: ISEDA024DerinCekmeSensorDayama; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA024DerinCekmeSensorDayama" (
    "ParcaAdi" text,
    "Merkezleme Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "L(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "CB(mm)" text,
    "Baglanti" text,
    "Olcu" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text,
    "F23" text,
    "F24" text,
    "F25" text,
    "F26" text,
    "F27" text,
    "F28" text,
    "F29" text,
    "F30" text,
    "F31" text
);


ALTER TABLE public."ISEDA024DerinCekmeSensorDayama" OWNER TO chatbot_user;

--
-- Name: ISEDA024iptal; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA024iptal" (
    "ParcaAdi" text,
    "Cikaricilar-iticiler" text,
    "Tip" text,
    "UL(mm)" text,
    "NH(mm)" text,
    "TH(mm)" text,
    "C(mm)" text,
    "CR(mm)" text,
    "HB(mm)" text,
    "HC(mm)" text,
    "G(mm)" text,
    "FN(mm)" text,
    "FK(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "CB(mm)" text,
    "Baglanti" text,
    "STQ_NORMU" text,
    "TOFAS" text
);


ALTER TABLE public."ISEDA024iptal" OWNER TO chatbot_user;

--
-- Name: ISEDA025DayamaSKesim; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA025DayamaSKesim" (
    "ParcaAdi" text,
    "Merkezleme Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "h(mm)" text,
    "Ml(mm)" text,
    "Md(mm)" text,
    "Mbaglanti" text,
    "M" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA025DayamaSKesim" OWNER TO chatbot_user;

--
-- Name: ISEDA026HTipiPnoKaldiriciTip1; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA026HTipiPnoKaldiriciTip1" (
    "ParcaAdi" text,
    "Cikaricilar-iticiler" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "OzelDurumlar" text,
    "SKurs(mm)" text,
    "M" text,
    "M1" text,
    "M2" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "D(mm)" text,
    "A(mm)" text,
    "B(mm)" text,
    "C1(mm)" text,
    "C2(mm)" text,
    "NOT" text,
    "D1(mm)" text,
    "L(mm)" text,
    "L1(mm)" text,
    "L2(mm)" text,
    "L3(mm)" text,
    "L4(mm)" text,
    "L5(mm)" text,
    "L6(mm)" text,
    "W(mm)" text,
    "W1(mm)" text,
    "W2(mm)" text,
    "W3(mm)" text,
    "T1(mm)" text,
    "D2(mm)" text,
    "L7(mm)" text,
    "D3(mm)" text,
    "L8(mm)" text,
    "T2(mm)" text,
    "D4(mm)" text,
    "L9(mm)" text,
    "Baglanti" text,
    "D5(mm)" text,
    "Deneme" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "SANKYO" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA026HTipiPnoKaldiriciTip1" OWNER TO chatbot_user;

--
-- Name: ISEDA028PozitifReturnTipA; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA028PozitifReturnTipA" (
    "ParcaAdi" text,
    "Kam Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "D(mm)" text,
    "E(mm)" text,
    "F(mm)" text,
    "G(mm)" text,
    "Dp(mm)" text,
    "Dc1(mm)" text,
    "Dc2(mm)" text,
    "Dh(mm)" text,
    "H(mm)" text,
    "Kod2" text,
    "Baglanti" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA028PozitifReturnTipA" OWNER TO chatbot_user;

--
-- Name: ISEDA029PozitifReturnTipB; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA029PozitifReturnTipB" (
    "ParcaAdi" text,
    "Kam Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "D(mm)" text,
    "E(mm)" text,
    "F(mm)" text,
    "F1(mm)" text,
    "G(mm)" text,
    "Dc1(mm)" text,
    "Dc2(mm)" text,
    "Dh(mm)" text,
    "H(mm)" text,
    "L(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA029PozitifReturnTipB" OWNER TO chatbot_user;

--
-- Name: ISEDA030PozitifReturnKarsilik; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA030PozitifReturnKarsilik" (
    "ParcaAdi" text,
    "Kam Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "w(mm)" text,
    "l(mm)" text,
    "a(mm)" text,
    "t(mm)" text,
    "l1(mm)" text,
    "l2(mm)" text,
    "d(mm)" text,
    "d1(mm)" text,
    "h(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA030PozitifReturnKarsilik" OWNER TO chatbot_user;

--
-- Name: ISEDA031PistonBaglantisiAD; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA031PistonBaglantisiAD" (
    "ParcaAdi" text,
    "Cikaricilar-iticiler" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "D(mm)" text,
    "E(mm)" text,
    "F(mm)" text,
    "G(mm)" text,
    "J(mm)" text,
    "K(mm)" text,
    "L(mm)" text,
    "P(mm)" text,
    "R(mm)" text,
    "S(mm)" text,
    "M1" text,
    "Md1(mm)" text,
    "Ml1(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "CB(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA031PistonBaglantisiAD" OWNER TO chatbot_user;

--
-- Name: ISEDA031iptal; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA031iptal" (
    "ParcaAdi" text,
    "Kam Elemanları" text,
    "Tip" text,
    "w(mm)" text,
    "l(mm)" text,
    "a(mm)" text,
    "t(mm)" text,
    "l1(mm)" text,
    "l2(mm)" text,
    "d(mm)" text,
    "d1(mm)" text,
    "h(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "FIRMA" text,
    "TERCIH" text
);


ALTER TABLE public."ISEDA031iptal" OWNER TO chatbot_user;

--
-- Name: ISEDA032KalipMerkezlemesi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA032KalipMerkezlemesi" (
    "ParcaAdi" text,
    "Merkezleme Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "D(mm)" text,
    "L(mm)" text,
    "D1(mm)" text,
    "D2(mm)" text,
    "Dc(mm)" text,
    "Dc1(mm)" text,
    "Dcl(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA032KalipMerkezlemesi" OWNER TO chatbot_user;

--
-- Name: ISEDA033TijMiliKarsiligi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA033TijMiliKarsiligi" (
    "ParcaAdi" text,
    "Baskı Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "D(mm)" text,
    "L(mm)" text,
    "D1(mm)" text,
    "D2(mm)" text,
    "D3(mm)" text,
    "L1(mm)" text,
    "L2(mm)" text,
    "Dc(mm)" text,
    "Dc1(mm)" text,
    "Dcl(mm)" text,
    "B(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "TOFASYARIM" text,
    "TOFASTAM" text,
    "Depo_KoduYARIM" text,
    "Depo_KoduTAM" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA033TijMiliKarsiligi" OWNER TO chatbot_user;

--
-- Name: ISEDA034OtomatikKlempPlakasi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA034OtomatikKlempPlakasi" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA034OtomatikKlempPlakasi" OWNER TO chatbot_user;

--
-- Name: ISEDA035OtomatikKlempCelikleri; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA035OtomatikKlempCelikleri" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA035OtomatikKlempCelikleri" OWNER TO chatbot_user;

--
-- Name: ISEDA036izZimbasi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA036izZimbasi" (
    "ParcaAdi" text,
    "Markalama Elemanları" text,
    "Tip" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Olcu" text,
    "Mi(mm)" text,
    "D(mm)" text,
    "E(mm)" text,
    "Hi(mm)" text,
    "K(mm)" text,
    "N(mm)" text,
    "T(mm)" text,
    "L(mm)" text,
    "R" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA036izZimbasi" OWNER TO chatbot_user;

--
-- Name: ISEDA037Markalama; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA037Markalama" (
    "ParcaAdi" text,
    "Markalama Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "D(mm)" text,
    "E(mm)" text,
    "F(mm)" text,
    "G(mm)" text,
    "M1" text,
    "M2(mm)" text,
    "Md(mm)" text,
    "MI(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA037Markalama" OWNER TO chatbot_user;

--
-- Name: ISEDA038Kama; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA038Kama" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Tip" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Olcu" text,
    "A(mm)" text,
    "L(mm)" text,
    "H1(mm)" text,
    "D1(mm)" text,
    "D2(mm)" text,
    "Dl(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA038Kama" OWNER TO chatbot_user;

--
-- Name: ISEDA039TasimaBraketi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA039TasimaBraketi" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "HC(mm)" text,
    "x1(mm)" text,
    "y1(mm)" text,
    "x2(mm)" text,
    "y2(mm)" text,
    "x3(mm)" text,
    "y3(mm)" text,
    "x4(mm)" text,
    "y4(mm)" text,
    "ax1(mm)" text,
    "ay1(mm)" text,
    "ax2(mm)" text,
    "ay2(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA039TasimaBraketi" OWNER TO chatbot_user;

--
-- Name: ISEDA040Mapa; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA040Mapa" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Bicim" text,
    "d1(mm)" text,
    "d2(mm)" text,
    d3 text,
    "d4(mm)" text,
    "h(mm)" text,
    "l3(mm)" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Ddb(mm)" text,
    "d5(mm)" text,
    "1Adet_Mapanin_Tasima_Kapasitesi" text,
    "2Adet_Mapanin_Tasima_Kapasitesi" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA040Mapa" OWNER TO chatbot_user;

--
-- Name: ISEDA041MerkezlemeCivata; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA041MerkezlemeCivata" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "L" text,
    "ds(mm)" text,
    "I1(mm)" text,
    "dk(mm)" text,
    "k(mm)" text,
    "dg1(mm)" text,
    "g1(mm)" text,
    "g2(mm)" text,
    "r1(mm)" text,
    "r2(mm)" text,
    "I2(mm)" text,
    "t(mm)" text,
    "sw(mm)" text,
    "MX(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA041MerkezlemeCivata" OWNER TO chatbot_user;

--
-- Name: ISEDA042StoplamaCivata; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA042StoplamaCivata" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "L" text,
    "N(mm)" text,
    "e(mm)" text,
    "l2(mm)" text,
    "a(mm)" text,
    "c(mm)" text,
    "d(mm)" text,
    "f(mm)" text,
    "g(mm)" text,
    "sw(mm)" text,
    "Civata" text,
    "Md(mm)" text,
    "MI(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA042StoplamaCivata" OWNER TO chatbot_user;

--
-- Name: ISEDA043BilyeBasliMafsal; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA043BilyeBasliMafsal" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "1" text,
    "2" text,
    "3" text,
    "4" text,
    "5" text,
    "6" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA043BilyeBasliMafsal" OWNER TO chatbot_user;

--
-- Name: ISEDA044PnoSilSomunTutucu; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA044PnoSilSomunTutucu" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "D(mm)" text,
    "E(mm)" text,
    "F(mm)" text,
    "G(mm)" text,
    "H(mm)" text,
    "I(mm)" text,
    "L(mm)" text,
    "J(mm)" text,
    "M1(mm)" text,
    "N(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA044PnoSilSomunTutucu" OWNER TO chatbot_user;

--
-- Name: ISEDA045PnoSilKavSomunu; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA045PnoSilKavSomunu" (
    "ParcaAdi" text,
    "Cikaricilar-iticiler" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "M" text,
    "B(mm)" text,
    "C(mm)" text,
    "D(mm)" text,
    "E(mm)" text,
    "F(mm)" text,
    "G(mm)" text,
    "H(mm)" text,
    "L(mm)" text,
    "TD(mm)" text,
    "HD(mm)" text,
    "PD(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA045PnoSilKavSomunu" OWNER TO chatbot_user;

--
-- Name: ISEDA046VulkolonStoper; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA046VulkolonStoper" (
    "ParcaAdi" text,
    "Stoplama Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "d(mm)" text,
    "l(mm)" text,
    "d1(mm)" text,
    "l1(mm)" text,
    "r(mm)" text,
    "Fmax(N)" text,
    "li(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA046VulkolonStoper" OWNER TO chatbot_user;

--
-- Name: ISEDA047DuzKizak; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA047DuzKizak" (
    "ParcaAdi" text,
    "Merkezleme Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "Kalinlik" text,
    "En(mm)" text,
    "Boy(mm)" text,
    "METRIK" text,
    "D1(mm)" text,
    "D(mm)" text,
    "H(mm)" text,
    "ACI(deg)" text,
    "ACIH(mm)" text,
    "KIZAK_KALINLIGI(mm)" text,
    "X1(mm)" text,
    "Y1(mm)" text,
    "X2(mm)" text,
    "Y2(mm)" text,
    "X3(mm)" text,
    "Y3(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "TOFASBRONZ" text,
    "TOFASCELIK" text,
    "Depo_KoduBRONZ" text,
    "Depo_KoduCELIK" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA047DuzKizak" OWNER TO chatbot_user;

--
-- Name: ISEDA048LDayama; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA048LDayama" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "L(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA048LDayama" OWNER TO chatbot_user;

--
-- Name: ISEDA049DerincekmeSensor; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA049DerincekmeSensor" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA049DerincekmeSensor" OWNER TO chatbot_user;

--
-- Name: ISEDA050CevreVulkolon; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA050CevreVulkolon" (
    "ParcaAdi" text,
    "Baskı Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "D(mm)" text,
    "D1(mm)" text,
    "H(mm)" text,
    "D2(mm)" text,
    "S(mm)" text,
    "BAGLANTI_TIPI" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA050CevreVulkolon" OWNER TO chatbot_user;

--
-- Name: ISEDA051VulkolonPimi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA051VulkolonPimi" (
    "ParcaAdi" text,
    "Baskı Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "D1(mm)" text,
    "L(mm)" text,
    "L1(mm)" text,
    "L2(mm)" text,
    "D2(mm)" text,
    "D3(mm)" text,
    "K(mm)" text,
    "S(mm)" text,
    "M_O(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA051VulkolonPimi" OWNER TO chatbot_user;

--
-- Name: ISEDA052KalipTasimaPernosu; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA052KalipTasimaPernosu" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "A(mm)" text,
    "B(mm)" text,
    "K(mm)" text,
    "L(mm)" text,
    "O(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA052KalipTasimaPernosu" OWNER TO chatbot_user;

--
-- Name: ISEDA053KalipTasimaPernoBorusu; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA053KalipTasimaPernoBorusu" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "PC(mm)" text,
    "D2(mm)" text,
    "D1(mm)" text,
    "T(mm)" text,
    "A1(mm)" text,
    "A2(mm)" text,
    "B(mm)" text,
    "L(mm)" text,
    "A2_aktifligi" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA053KalipTasimaPernoBorusu" OWNER TO chatbot_user;

--
-- Name: ISEDA054AskiEmniyetPimi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA054AskiEmniyetPimi" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "L(mm)" text,
    "L1(mm)" text,
    "L2(mm)" text,
    "L3(mm)" text,
    "D1(mm)" text,
    "D2(mm)" text,
    "D3(mm)" text,
    "A1(mm)" text,
    "A(mm)" text,
    "K(mm)" text,
    "M(mm)" text,
    "N(mm)" text,
    "R(mm)" text,
    "S(mm)" text,
    "U(mm)" text,
    "V(mm)" text,
    "Z(mm)" text,
    "Pmin(mm)" text,
    "Q(mm)" text,
    "Wmin(mm)" text,
    "X(mm)" text,
    "Kmin(mm)" text,
    "BOY(mm)" text,
    "K1(mm)" text,
    "K2(mm)" text,
    "K3(mm)" text,
    "Ap(mm)" text,
    "K4(mm)" text,
    "TL(mm)" text,
    "TA(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA054AskiEmniyetPimi" OWNER TO chatbot_user;

--
-- Name: ISEDA055AsEmVulkolon; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA055AsEmVulkolon" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "D(mm)" text,
    "L(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA055AsEmVulkolon" OWNER TO chatbot_user;

--
-- Name: ISEDA056VidaliGommeMapa; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA056VidaliGommeMapa" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "M" text,
    "D(mm)" text,
    "L(mm)" text,
    "A(mm)" text,
    "E(mm)" text,
    "F(mm)" text,
    "P(mm)" text,
    "R(mm)" text,
    "C1(mm)" text,
    "C2(mm)" text,
    "Dk(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA056VidaliGommeMapa" OWNER TO chatbot_user;

--
-- Name: ISEDA058; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA058" (
    "ParcaAdi" text,
    "Delme Elemanlari" text,
    "Tip" text,
    "D" text,
    "E" text,
    "F" text,
    "G" text,
    "Ds(mm)" text,
    "Ca(mm)" text,
    "Da(mm)" text,
    "Ea(mm)" text,
    "Fa(mm)" text,
    "Ga(mm)" text,
    "Ha(mm)" text,
    "H2a(mm)" text,
    "Ka(mm)" text,
    "Ma(mm)" text,
    "Ssa(mm)" text,
    "UMSa(mm)" text,
    "Ctba(mm)" text,
    "TBa" text,
    "Cb(mm)" text,
    "Db(mm)" text,
    "Eb(mm)" text,
    "Fb(mm)" text,
    "Gb(mm)" text,
    "Hb(mm)" text,
    "H2b(mm)" text,
    "Kb(mm)" text,
    "Mb(mm)" text,
    "Ssb(mm)" text,
    "UMSb(mm)" text,
    "Ctbb(mm)" text,
    "TBb" text,
    "Cc(mm)" text,
    "Dc(mm)" text,
    "Ec(mm)" text,
    "Fc(mm)" text,
    "Gc(mm)" text,
    "Hc(mm)" text,
    "H2c(mm)" text,
    "Kc(mm)" text,
    "Mc(mm)" text,
    "Nc(mm)" text,
    "Ssc(mm)" text,
    "UMSc(mm)" text,
    "Ctbc(mm)" text,
    "CCT" text,
    "TBc" text,
    "MOELLERKAPALI_AGIR_YUK" text,
    "MOELLERYUVARLAK_AGIR_YUK" text,
    "MOELLERFORM_AGIR_YUK" text,
    "MOELLERKAPALI_HAFiF_YUK" text,
    "MOELLERYUVARLAK_HAFiF_YUK" text,
    "MOELLERFORM_HAFiF_YUK" text,
    "MOELLERKAPALI_AGIR_YUK_EKONOMiK" text,
    "MOELLERYUVARLAK_AGIR_YUK_EKONOMiK" text,
    "MOELLERFORM_AGIR_YUK_EKONOMiK" text,
    "GSB" text,
    "MBT" text,
    "SANKYO" text,
    "OMCR" text,
    "BALLUF" text,
    "FESTO" text,
    "ISO" text,
    "TOFAS" text,
    "FIBRO" text,
    "MOELLER" text,
    "SPECiALSPRiNGS" text,
    "PERMA" text,
    "IFM" text,
    "DAYTON" text,
    "NEWSTARK" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text,
    "FIRMA" text,
    "TERCIH" text,
    "FOTOMOELLERKAPALI_AGIR_YUK" text,
    "FOTOMOELLERYUVARLAK_AGIR_YUK" text,
    "FOTOMOELLERFORM_AGIR_YUK" text,
    "FOTOMOELLERKAPALI_HAFiF_YUK" text,
    "FOTOMOELLERYUVARLAK_HAFiF_YUK" text,
    "FOTOMOELLERFORM_HAFiF_YUK" text,
    "FOTOMOELLERKAPALI_AGIR_YUK_EKONOMiK" text,
    "FOTOMOELLERYUVARLAK_AGIR_YUK_EKONOMiK" text,
    "FOTOMOELLERFORM_AGIR_YUK_EKONOMiK" text
);


ALTER TABLE public."ISEDA058" OWNER TO chatbot_user;

--
-- Name: ISEDA058CylinderUnionNut; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA058CylinderUnionNut" (
    "ParcaAdi" text,
    "Pnomatik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "M16" text,
    "M20" text,
    "M27" text,
    "D26" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA058CylinderUnionNut" OWNER TO chatbot_user;

--
-- Name: ISEDA059; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA059" (
    "ParcaAdi" text,
    "Delme Elemanlari" text,
    "Tip" text,
    "D" text,
    "E" text,
    "F" text,
    "G" text,
    "Ds(mm)" text,
    "Ca(mm)" text,
    "Da(mm)" text,
    "Ea(mm)" text,
    "Fa(mm)" text,
    "Ga(mm)" text,
    "Ha(mm)" text,
    "H2a(mm)" text,
    "Ka(mm)" text,
    "Ma(mm)" text,
    "Ssa(mm)" text,
    "UMSa(mm)" text,
    "Ctba(mm)" text,
    "TBa" text,
    "Cb(mm)" text,
    "Db(mm)" text,
    "Eb(mm)" text,
    "Fb(mm)" text,
    "Gb(mm)" text,
    "Hb(mm)" text,
    "H2b(mm)" text,
    "Kb(mm)" text,
    "Mb(mm)" text,
    "Ssb(mm)" text,
    "UMSb(mm)" text,
    "Ctbb(mm)" text,
    "TBb" text,
    "Cc(mm)" text,
    "Dc(mm)" text,
    "Ec(mm)" text,
    "Fc(mm)" text,
    "Gc(mm)" text,
    "Hc(mm)" text,
    "H2c(mm)" text,
    "Kc(mm)" text,
    "Mc(mm)" text,
    "Nc(mm)" text,
    "Ssc(mm)" text,
    "UMSc(mm)" text,
    "Ctbc(mm)" text,
    "CCT" text,
    "TBc" text,
    "MOELLERKAPALI_AGIR_YUK" text,
    "MOELLERYUVARLAK_AGIR_YUK" text,
    "MOELLERFORM_AGIR_YUK" text,
    "MOELLERKAPALI_HAFiF_YUK" text,
    "MOELLERYUVARLAK_HAFiF_YUK" text,
    "MOELLERFORM_HAFiF_YUK" text,
    "MOELLERKAPALI_AGIR_YUK_EKONOMiK" text,
    "MOELLERYUVARLAK_AGIR_YUK_EKONOMiK" text,
    "MOELLERFORM_AGIR_YUK_EKONOMiK" text,
    "GSB" text,
    "MBT" text,
    "SANKYO" text,
    "OMCR" text,
    "BALLUF" text,
    "FESTO" text,
    "ISO" text,
    "TOFAS" text,
    "FIBRO" text,
    "MOELLER" text,
    "SPECiALSPRiNGS" text,
    "PERMA" text,
    "IFM" text,
    "DAYTON" text,
    "NEWSTARK" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text,
    "FIRMA" text,
    "TERCIH" text,
    "FOTOMOELLERKAPALI_AGIR_YUK" text,
    "FOTOMOELLERYUVARLAK_AGIR_YUK" text,
    "FOTOMOELLERFORM_AGIR_YUK" text,
    "FOTOMOELLERKAPALI_HAFiF_YUK" text,
    "FOTOMOELLERYUVARLAK_HAFiF_YUK" text,
    "FOTOMOELLERFORM_HAFiF_YUK" text,
    "FOTOMOELLERKAPALI_AGIR_YUK_EKONOMiK" text,
    "FOTOMOELLERYUVARLAK_AGIR_YUK_EKONOMiK" text,
    "FOTOMOELLERFORM_AGIR_YUK_EKONOMiK" text
);


ALTER TABLE public."ISEDA059" OWNER TO chatbot_user;

--
-- Name: ISEDA059EmniyetAlani; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA059EmniyetAlani" (
    "ParcaAdi" text,
    "Tasarım Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA059EmniyetAlani" OWNER TO chatbot_user;

--
-- Name: ISEDA060PiastraSicurezza; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA060PiastraSicurezza" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA060PiastraSicurezza" OWNER TO chatbot_user;

--
-- Name: ISEDA061ManyetikSensor; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA061ManyetikSensor" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "L1(mm)" text,
    "L2(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA061ManyetikSensor" OWNER TO chatbot_user;

--
-- Name: ISEDA062IcDenStoper; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA062IcDenStoper" (
    "ParcaAdi" text,
    "Stoplama Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "D1(mm)" text,
    "D2(mm)" text,
    "D3(mm)" text,
    "H1(mm)" text,
    "H2(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA062IcDenStoper" OWNER TO chatbot_user;

--
-- Name: ISEDA065istifstoperi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA065istifstoperi" (
    "ParcaAdi" text,
    "Stoplama Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "L(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA065istifstoperi" OWNER TO chatbot_user;

--
-- Name: ISEDA066KamDuzkizak; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA066KamDuzkizak" (
    "ParcaAdi" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "W(mm)" text,
    "L(mm)" text,
    "S(mm)" text,
    "L1(mm)" text,
    "L2(mm)" text,
    "B(mm)" text,
    "D(mm)" text,
    "D1(mm)" text,
    "T(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "F" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA066KamDuzkizak" OWNER TO chatbot_user;

--
-- Name: ISEDA067DisiVKizak; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA067DisiVKizak" (
    "ParcaAdi" text,
    "Kam Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "W(mm)" text,
    "L(mm)" text,
    "L1(mm)" text,
    "L2(mm)" text,
    "H(mm)" text,
    "H2(mm)" text,
    "r(mm)" text,
    "A(mm)" text,
    "B(mm)" text,
    "D(mm)" text,
    "D1(mm)" text,
    "D2(mm)" text,
    "T(mm)" text,
    "M" text,
    "Teksen(mm)" text,
    "Md(mm)" text,
    "MI(mm)" text,
    "CVT" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA067DisiVKizak" OWNER TO chatbot_user;

--
-- Name: ISEDA068ErkekVKizak; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA068ErkekVKizak" (
    "ParcaAdi" text,
    "Kam Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "W(mm)" text,
    "L(mm)" text,
    "L1(mm)" text,
    "L2(mm)" text,
    "H(mm)" text,
    "A(mm)" text,
    "D(mm)" text,
    "D1(mm)" text,
    "D2(mm)" text,
    "D3(mm)" text,
    "T(mm)" text,
    "M" text,
    "Md(mm)" text,
    "MI(mm)" text,
    "CVT" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA068ErkekVKizak" OWNER TO chatbot_user;

--
-- Name: ISEDA069DisliAyarPlakasi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA069DisliAyarPlakasi" (
    "ParcaAdi" text,
    "Stoplama Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "W(mm)" text,
    "L2(mm)" text,
    "A(mm)" text,
    "L1(mm)" text,
    "L3(mm)" text,
    "L4(mm)" text,
    "L5(mm)" text,
    "L6(mm)" text,
    "H(mm)" text,
    "M" text,
    "Md(mm)" text,
    "MI(mm)" text,
    "CVT" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA069DisliAyarPlakasi" OWNER TO chatbot_user;

--
-- Name: ISEDA070HTipiKamPlaka; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA070HTipiKamPlaka" (
    "Parca Adı" text,
    "Kam Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Alternatif" text,
    "Olcu" text,
    "W(mm)" text,
    "L(mm)" text,
    "L1(mm)" text,
    "T(mm)" text,
    "A(mm)" text,
    "B" text,
    "M" text,
    "Md(mm)" text,
    "MI(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "TOFASCELIK" text,
    "TOFASBRONZ" text,
    "Depo_KoduCELIK" text,
    "Depo_KoduBRONZ" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA070HTipiKamPlaka" OWNER TO chatbot_user;

--
-- Name: ISEDA073AzotSaati; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA073AzotSaati" (
    "ParcaAdi" text,
    "Baskı Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "M" text,
    "Md(mm)" text,
    "MI(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA073AzotSaati" OWNER TO chatbot_user;

--
-- Name: ISEDA074ElektrikKutusu; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA074ElektrikKutusu" (
    "ParcaAdi" text,
    "Elektrik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA074ElektrikKutusu" OWNER TO chatbot_user;

--
-- Name: ISEDA075ElektrikSoketi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA075ElektrikSoketi" (
    "ParcaAdi" text,
    "Elektrik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "M" text,
    "Md(mm)" text,
    "MI(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA075ElektrikSoketi" OWNER TO chatbot_user;

--
-- Name: ISEDA076HavaTanki; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA076HavaTanki" (
    "ParcaAdi" text,
    "Pnomatik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "D(mm)" text,
    "F(mm)" text,
    "G(mm)" text,
    "L1(mm)" text,
    "Delikadet" text,
    "M" text,
    "Md(mm)" text,
    "MI(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA076HavaTanki" OWNER TO chatbot_user;

--
-- Name: ISEDA078BasincliHavaHortumu; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA078BasincliHavaHortumu" (
    "ParcaAdi" text,
    "Pnomatik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "FESTO" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA078BasincliHavaHortumu" OWNER TO chatbot_user;

--
-- Name: ISEDA079CabukBaglantiRekoruT; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA079CabukBaglantiRekoruT" (
    "ParcaAdi" text,
    "Pnomatik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "FESTO" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "Kritiklik_No" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA079CabukBaglantiRekoruT" OWNER TO chatbot_user;

--
-- Name: ISEDA080SensorBaglantisi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA080SensorBaglantisi" (
    "ParcaAdi" text,
    "Elektrik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "DUZ" text,
    "ACILI" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA080SensorBaglantisi" OWNER TO chatbot_user;

--
-- Name: ISEDA081EmniyetCenesi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA081EmniyetCenesi" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA081EmniyetCenesi" OWNER TO chatbot_user;

--
-- Name: ISEDA082SiyiriciMesafeStoperi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA082SiyiriciMesafeStoperi" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA082SiyiriciMesafeStoperi" OWNER TO chatbot_user;

--
-- Name: ISEDA083HavaGirisNozulu; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA083HavaGirisNozulu" (
    "ParcaAdi" text,
    "Pnomatik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA083HavaGirisNozulu" OWNER TO chatbot_user;

--
-- Name: ISEDA084HavaBaglantiBraketi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA084HavaBaglantiBraketi" (
    "ParcaAdi" text,
    "Pnomatik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "Dis" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA084HavaBaglantiBraketi" OWNER TO chatbot_user;

--
-- Name: ISEDA085PnomatikKumandaliValf; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA085PnomatikKumandaliValf" (
    "ParcaAdi" text,
    "Pnomatik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "FESTO" text,
    "X1(mm)" text,
    "Y1(mm)" text,
    "X2(mm)" text,
    "Y2(mm)" text,
    "M" text,
    "Md(mm)" text,
    "MI(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA085PnomatikKumandaliValf" OWNER TO chatbot_user;

--
-- Name: ISEDA086MekanikKumandaliValf; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA086MekanikKumandaliValf" (
    "ParcaAdi" text,
    "Pnomatik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Kritiklik_No" text,
    "Baglanti" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA086MekanikKumandaliValf" OWNER TO chatbot_user;

--
-- Name: ISEDA087AzotBaglantiRekor; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA087AzotBaglantiRekor" (
    "ParcaAdi" text,
    "Baskı Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "RTCD" text,
    "RTCR" text,
    "RPTD" text,
    "RPTR" text,
    "RDRU" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA087AzotBaglantiRekor" OWNER TO chatbot_user;

--
-- Name: ISEDA088BaglantiPlakasi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA088BaglantiPlakasi" (
    "ParcaAdi" text,
    "Baskı Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA088BaglantiPlakasi" OWNER TO chatbot_user;

--
-- Name: ISEDA089CatalMafsal; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA089CatalMafsal" (
    "ParcaAdi" text,
    "Pnomatik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA089CatalMafsal" OWNER TO chatbot_user;

--
-- Name: ISEDA090EklemYerBaglanti; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA090EklemYerBaglanti" (
    "ParcaAdi" text,
    "Pnomatik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "BR(mm)" text,
    "H(mm)" text,
    "XX(mm)" text,
    "XR(mm)" text,
    "BT(mm)" text,
    "CK(mm)" text,
    "EB(mm)" text,
    "EM(mm)" text,
    "GL(mm)" text,
    "HB(mm)" text,
    "OF(mm)" text,
    "PH(mm)" text,
    "RA(mm)" text,
    "TE(mm)" text,
    "UL(mm)" text,
    "UR(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA090EklemYerBaglanti" OWNER TO chatbot_user;

--
-- Name: ISEDA091PnomatikZimbaTutucu; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA091PnomatikZimbaTutucu" (
    "ParcaAdi" text,
    "Delme Elemanlari" text,
    "Tip" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "DAYTON" text,
    "H(mm)" text,
    "H2(mm)" text,
    "X1(mm)" text,
    "X2(mm)" text,
    "X3(mm)" text,
    "X4_ACI1(mm)" text,
    "X4_ACI2(mm)" text,
    "3" text,
    "2" text,
    "BP" text,
    "BB" text,
    "BS" text,
    b1 text,
    b2 text,
    b3 text,
    b4 text,
    b5 text,
    b6 text,
    b7 text,
    b8 text,
    b9 text,
    b10 text,
    b11 text,
    b12 text,
    b13 text,
    b14 text,
    b15 text,
    b16 text,
    b17 text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "pimcapi(mm)" text,
    "Cbpim(mm)" text,
    "xd1(mm)" text,
    "yd1(mm)" text,
    "xp1(mm)" text,
    "yp1(mm)" text,
    "xd2(mm)" text,
    "yd2(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA091PnomatikZimbaTutucu" OWNER TO chatbot_user;

--
-- Name: ISEDA092PozitifReturnluVKizak; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA092PozitifReturnluVKizak" (
    "ParcaAdi" text,
    "Merkezleme Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "G(mm)" text,
    "Y(mm)" text,
    "L1(mm)" text,
    "L2(mm)" text,
    "L3(mm)" text,
    "L4(mm)" text,
    "DY(mm)" text,
    "AO(mm)" text,
    "OY(mm)" text,
    "YO(mm)" text,
    "EY(mm)" text,
    "CIVATA_BAS_DERINLIGI(mm)" text,
    "PIM_BAS_DERINLIGI(mm)" text,
    "CIVATA_SAP_CAPI(mm)" text,
    "PIM_SAP_CAPI(mm)" text,
    "CIVATA_CAP(mm)" text,
    "PIM_CAP(mm)" text,
    "DISI_CIVATA_BAS_DERINLIGI(mm)" text,
    "DISI_PIM_BAS_DERINLIGI(mm)" text,
    "CIVATADELIK2" text,
    "CIVATADELIK3" text,
    "CIVATA_DELIK" text,
    "DELIK_UZUNLUK(mm)" text,
    "H27(mm)" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA092PozitifReturnluVKizak" OWNER TO chatbot_user;

--
-- Name: ISEDA093KamDuzCelikKizak; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA093KamDuzCelikKizak" (
    "ParcaAdi" text,
    "Kam Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "A(mm)" text,
    "B(mm)" text,
    "b2(mm)" text,
    "H(mm)" text,
    "C(mm)" text,
    "CD2" text,
    "CD3" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA093KamDuzCelikKizak" OWNER TO chatbot_user;

--
-- Name: ISEDA094PnomatikTutucu; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA094PnomatikTutucu" (
    "ParcaAdi" text,
    "Pnomatik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "F(mm)" text,
    "B(mm)" text,
    "E(mm)" text,
    "R(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA094PnomatikTutucu" OWNER TO chatbot_user;

--
-- Name: ISEDA095CabukBaglantiSoketi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA095CabukBaglantiSoketi" (
    "ParcaAdi" text,
    "Elektrik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA095CabukBaglantiSoketi" OWNER TO chatbot_user;

--
-- Name: ISEDA096LotZimbasi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA096LotZimbasi" (
    "ParcaAdi" text,
    "Markalama Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA096LotZimbasi" OWNER TO chatbot_user;

--
-- Name: ISEDA097AvareMakara; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA097AvareMakara" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA097AvareMakara" OWNER TO chatbot_user;

--
-- Name: ISEDA098MerkezlemeMakara; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA098MerkezlemeMakara" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA098MerkezlemeMakara" OWNER TO chatbot_user;

--
-- Name: ISEDA099MekanikMikroSwitch; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA099MekanikMikroSwitch" (
    "ParcaAdi" text,
    "Elektrik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA099MekanikMikroSwitch" OWNER TO chatbot_user;

--
-- Name: ISEDA100BasincSensor; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA100BasincSensor" (
    "ParcaAdi" text,
    "Baskı Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA100BasincSensor" OWNER TO chatbot_user;

--
-- Name: ISEDA101YaglamaUnitesi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA101YaglamaUnitesi" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA101YaglamaUnitesi" OWNER TO chatbot_user;

--
-- Name: ISEDA102YaglamaUnitesiUzatmasi; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA102YaglamaUnitesiUzatmasi" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "L(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA102YaglamaUnitesiUzatmasi" OWNER TO chatbot_user;

--
-- Name: ISEDA103YaglamaBaglantiAparati; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA103YaglamaBaglantiAparati" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA103YaglamaBaglantiAparati" OWNER TO chatbot_user;

--
-- Name: ISEDA104KamKapaklari2; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA104KamKapaklari2" (
    "ParcaAdi" text,
    "Kam Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "W(mm)" text,
    "L(mm)" text,
    "SP(mm)" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "D(mm)" text,
    "E(mm)" text,
    "F(mm)" text,
    "G(mm)" text,
    "N(mm)" text,
    "3_DELIK" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "3" text,
    "2" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA104KamKapaklari2" OWNER TO chatbot_user;

--
-- Name: ISEDA105KamEmniyetUstKizak; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA105KamEmniyetUstKizak" (
    "ParcaAdi" text,
    "Kam Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "W(mm)" text,
    "Sp(mm)" text,
    "L(mm)" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA105KamEmniyetUstKizak" OWNER TO chatbot_user;

--
-- Name: ISEDA106TitresimliKonveyor; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA106TitresimliKonveyor" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Not1" text,
    "Hurda_Tavasi_Agirlik" text,
    "Olcu_Kod\1" text,
    "Olcu_Kod\2" text,
    "Olcu_Kod\3" text,
    "Olcu_Kod\4" text,
    "Olcu_Kod\5" text,
    "Olcu_Kod\6" text,
    "M" text,
    "Md(mm)" text,
    "Ml(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA106TitresimliKonveyor" OWNER TO chatbot_user;

--
-- Name: ISEDA107Civata; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA107Civata" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu_" text,
    "Lboy" text,
    "M" text,
    "L(mm)" text,
    "d(mm)" text,
    "dk(mm)" text,
    "k(mm)" text,
    "Gmin(mm)" text,
    "Malzeme" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA107Civata" OWNER TO chatbot_user;

--
-- Name: ISEDA108LiftingPinFIAT; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA108LiftingPinFIAT" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "D(mm)" text,
    "E(mm)" text,
    "F(mm)" text,
    "G(mm)" text,
    "H(mm)" text,
    "K(mm)" text,
    "L(mm)" text,
    "M(mm)" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA108LiftingPinFIAT" OWNER TO chatbot_user;

--
-- Name: ISEDA109Guidepinpad; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA109Guidepinpad" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "KURS(mm)" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "D(mm)" text,
    "E(mm)" text,
    "F(mm)" text,
    "G(mm)" text,
    "H(mm)" text,
    "K(mm)" text,
    "L(mm)" text,
    "M(mm)" text,
    "N(mm)" text,
    "P(mm)" text,
    "R(mm)" text,
    "S(mm)" text,
    "T(mm)" text,
    "X(mm)" text,
    "V(mm)" text,
    "Y(mm)" text,
    "Z(mm)" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA109Guidepinpad" OWNER TO chatbot_user;

--
-- Name: ISEDA110BotMarkerFIAT; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA110BotMarkerFIAT" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "A(mm)" text,
    "B(mm)" text,
    "C(mm)" text,
    "D(mm)" text,
    "E(mm)" text,
    "F(mm)" text,
    "G(mm)" text,
    "H(mm)" text,
    "J(mm)" text,
    "K(mm)" text,
    "L(mm)" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA110BotMarkerFIAT" OWNER TO chatbot_user;

--
-- Name: ISEDA111LotPunchRetainerFIAT; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA111LotPunchRetainerFIAT" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "A(mm)" text,
    "B(mm)" text,
    "C" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA111LotPunchRetainerFIAT" OWNER TO chatbot_user;

--
-- Name: ISEDA118SprialHortum2; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA118SprialHortum2" (
    "ParcaAdi" text,
    "Pnomatik Grubu Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "M" text,
    "Md(mm)" text,
    "MI(mm)" text,
    "Cb(mm)" text,
    "Baglanti" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text
);


ALTER TABLE public."ISEDA118SprialHortum2" OWNER TO chatbot_user;

--
-- Name: ISEDA119SafetyPlateFIAT; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA119SafetyPlateFIAT" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA119SafetyPlateFIAT" OWNER TO chatbot_user;

--
-- Name: ISEDA120LProfil; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."ISEDA120LProfil" (
    "ParcaAdi" text,
    "Genel Kalıp Elemanları" text,
    "Malzeme_Sinifi" text,
    "Grup" text,
    "Tip" text,
    "Olcu" text,
    "Kritiklik_No" text,
    "STQ_NORMU" text,
    "TOFAS" text,
    "Depo_Kodu" text,
    "TR" text,
    "ENG" text,
    "IT" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text
);


ALTER TABLE public."ISEDA120LProfil" OWNER TO chatbot_user;

--
-- Name: KAM; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."KAM" (
    "FIRMA" text,
    "Sipariş Kodu" text,
    "Alın Eni W" text,
    "Açı θ" text,
    "Kurs S" text,
    "Alın Boyu H" text,
    "Çalışma kuvveti / 1 mil Vuruş kN" text,
    "Çalışma kuvveti / 0,3 mil Vuruş kN" text,
    "Max En W1" text,
    "Kapalı Yüksekli H1" text,
    "Max uzunluk L" text,
    "Tel yay geri dönüş kuvveti N" text,
    "Gazlı yay geri dönüş kuvveti N" text,
    "Gazlı yay geri dönüş kuvveti (Power type -V) N" text,
    "Kam slider geri dönüş kuvveti kN" text,
    "Kam slider geri dönüş kuvveti (Power type -V) kN" text,
    "Opsiyon" text,
    "Maliyet" text,
    "Foto" text,
    "F20" text,
    "F21" text
);


ALTER TABLE public."KAM" OWNER TO chatbot_user;

--
-- Name: Mail; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."Mail" (
    "SenderMailHost" text,
    "SenderMailPassword" text,
    "SenderMailAddress" text,
    "AdminMailAddress" text
);


ALTER TABLE public."Mail" OWNER TO chatbot_user;

--
-- Name: Material; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."Material" (
    "MaterialID" text,
    "Material" text
);


ALTER TABLE public."Material" OWNER TO chatbot_user;

--
-- Name: MaterialListControl; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."MaterialListControl" (
    "DeletedSentence" text,
    "AddedSentence" text,
    "UpdatedSentence" text
);


ALTER TABLE public."MaterialListControl" OWNER TO chatbot_user;

--
-- Name: MaterialType; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."MaterialType" (
    "MaterialTypeID" text,
    "MaterialType" text,
    "Abbreviation" text
);


ALTER TABLE public."MaterialType" OWNER TO chatbot_user;

--
-- Name: MaterialType_PartName; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."MaterialType_PartName" (
    "MaterialType_PartNameID" text,
    "PartNameID" text,
    "MaterialTypeID" text
);


ALTER TABLE public."MaterialType_PartName" OWNER TO chatbot_user;

--
-- Name: PARAMETRE; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."PARAMETRE" (
    "Parametre" text,
    "ParametreTipi" text,
    "Doluluk" text,
    "IsRequiredForControl" text
);


ALTER TABLE public."PARAMETRE" OWNER TO chatbot_user;

--
-- Name: PartName; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."PartName" (
    "PartNameID" text,
    "Turkish" text,
    "Italian" text,
    "English" text
);


ALTER TABLE public."PartName" OWNER TO chatbot_user;

--
-- Name: PartName_Material; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."PartName_Material" (
    "PartName_MaterialID" text,
    "MaterialID" text,
    "PartNameID" text
);


ALTER TABLE public."PartName_Material" OWNER TO chatbot_user;

--
-- Name: Renkler; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."Renkler" (
    "Grup" text,
    "Tip" text,
    "Firma" text,
    "Kod" text
);


ALTER TABLE public."Renkler" OWNER TO chatbot_user;

--
-- Name: RenklerTabNames; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."RenklerTabNames" (
    "GroupIndex" text,
    "TabName" text
);


ALTER TABLE public."RenklerTabNames" OWNER TO chatbot_user;

--
-- Name: STANDARDGROUPS; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public."STANDARDGROUPS" (
    "STANDARD" text,
    "GROUP" text,
    "Revizyon_Numarasi" text,
    "Revizyon_Tarihi" text,
    "Type" text,
    "IsActive" text
);


ALTER TABLE public."STANDARDGROUPS" OWNER TO chatbot_user;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO chatbot_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: chatbot_user
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO chatbot_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: chatbot_user
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO chatbot_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: chatbot_user
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO chatbot_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO chatbot_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: chatbot_user
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: chatbot_user
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO chatbot_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: chatbot_user
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: chat_conversation; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.chat_conversation (
    id uuid NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    summary text
);


ALTER TABLE public.chat_conversation OWNER TO chatbot_user;

--
-- Name: chat_message; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.chat_message (
    id uuid NOT NULL,
    role character varying(20) NOT NULL,
    content text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    conversation_id uuid NOT NULL
);


ALTER TABLE public.chat_message OWNER TO chatbot_user;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO chatbot_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: chatbot_user
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO chatbot_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: chatbot_user
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO chatbot_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: chatbot_user
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO chatbot_user;

--
-- Name: documents_document; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.documents_document (
    id uuid NOT NULL,
    file character varying(100) NOT NULL,
    filename character varying(255) NOT NULL,
    extracted_text text,
    created_at timestamp with time zone NOT NULL,
    conversation_id uuid NOT NULL
);


ALTER TABLE public.documents_document OWNER TO chatbot_user;

--
-- Name: documents_globaldocument; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.documents_globaldocument (
    id uuid NOT NULL,
    file character varying(100) NOT NULL,
    filename character varying(255) NOT NULL,
    extracted_text text,
    created_at timestamp with time zone NOT NULL
);


ALTER TABLE public.documents_globaldocument OWNER TO chatbot_user;

--
-- Name: prompts_systemprompt; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.prompts_systemprompt (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    content text NOT NULL,
    is_active boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.prompts_systemprompt OWNER TO chatbot_user;

--
-- Name: prompts_systemprompt_id_seq; Type: SEQUENCE; Schema: public; Owner: chatbot_user
--

ALTER TABLE public.prompts_systemprompt ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.prompts_systemprompt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: rag_documentchunk; Type: TABLE; Schema: public; Owner: chatbot_user
--

CREATE TABLE public.rag_documentchunk (
    id uuid NOT NULL,
    text text NOT NULL,
    embedding public.vector(384),
    created_at timestamp with time zone NOT NULL,
    conversation_id uuid,
    document_id uuid,
    global_document_id uuid
);


ALTER TABLE public.rag_documentchunk OWNER TO chatbot_user;

--
-- Data for Name: Dil; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."Dil" ("Türkçe", "Italyanca", "Ingilizce") FROM stdin;
Kesme_Bicagi	Lama_Di_Rifila	Cutting_Steel
Bukme_Bicagi	Lama_Di_Flangia	Flanging_Steel
Utuleme_Bicagi	Lama_Di_Assestamento	Form_Steel
Ek_Celik	Inserto_In_Accio	Insert_Steel
Kopru	Accio_Per_Estrattore	Pad
Destek_Celigi	Accio_Per_Sostegno	Trestle
Kule	Torre	Tower
Altlik	Base	Base
Hurda_Tavasi	Scivolo_Sfridi	Scrap_Chute
Koruma_Saci	Riparo_Lamiera	Guarding_Sheet_Metal
Platina	Piastra	Plate
Tasiyici_Dokum_Plaka	Piastra_Gizza_Per_Carico	Cast_Plate
Potcemberi_Tasiyici_Plaka	Piastrone_Premilamiera	Blankholder_Plate
Alt_Kalip	Base_Stampo_Inferiore	Lower_Die
Ust_Kalip	Base_Stampo_Superiore	Upper_Die
Gobek	Punzone	Punch
Siyirici	Estrattore	Pad
Potcemberi	Premilamiera	Blankholder
Ankesor	Ankesor	Ankesor
\.


--
-- Data for Name: FIRMA; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."FIRMA" ("FIRMA") FROM stdin;
FIBRO
FIAT
GSB
SPECiALSPRiNGS
OMCR
SANKYO
FESTO
ISO
MOELLER
TOFAS
BALLUF
PERMA
IFM
DAYTON
NEWSTARK
\.


--
-- Data for Name: GRUPLAR; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."GRUPLAR" ("GRUPLAR") FROM stdin;
Markalama Elemanları
Genel Kalıp Elemanları
Stoplama Elemanları
Baskı Elemanları
Merkezleme Elemanları
Cikaricilar-iticiler
Kam Elemanları
Delme Elemanlari
Imalat Elemanlar
\.


--
-- Data for Name: ISEDA001Kolon; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA001Kolon" ("ParcaAdi", "Merkezleme Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "D", "Olcu", "D1(mm)", "DU(mm)", "L1(mm)", "L2(mm)", "D3(mm)", "C(mm)", "ACI(deg)", "R(mm)", "E(mm)", "D6(mm)", "D7(mm)", "D8(mm)", "D9(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "STQFATURALI", "STQFATURASIZ", "STQDELIKLI", "TOFASFATURALI", "TOFASFATURASIZ", "TOFASDELIKLI", "Depo_KoduFATURALI", "Depo_KoduFATURASIZ", "Depo_KoduDELIKLI", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
Kolon		N	Merkezleme Elemanları	25x125	25	Ø25x125	25	25	125	40	32	5	15	2	6	68	49,5	56,5	51	3	OZEL	OZEL	YOK	YOK	YOK	TKSFKL02512501	YOK	YOK	Y3560001001	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	25x140	25	Ø25x140	25	25	140	40	32	5	15	2	6	68	49,5	56,5	51	3	YOK	YOK	YOK	YOK	YOK	TKSFKL02514002	YOK	YOK	Y3560001002	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	25x160	25	Ø25x160	25	25	160	40	32	5	15	2	6	68	49,5	56,5	51	3	YOK	YOK	YOK	YOK	YOK	TKSFKL02516003	YOK	YOK	Y3560001003	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	25x180	25	Ø25x180	25	25	180	40	32	5	15	2	6	68	49,5	56,5	51	3	YOK	YOK	YOK	YOK	YOK	TKSFKL02518004	YOK	YOK	Y3560001004	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	25x200	25	Ø25x200	25	25	200	40	32	5	15	2	6	68	49,5	56,5	51	3	YOK	YOK	YOK	YOK	YOK	TKSFKL02520005	YOK	YOK	Y3560001005	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	25x224	25	Ø25x224	25	25	224	40	32	5	15	2	6	68	49,5	56,5	51	3	YOK	YOK	YOK	YOK	YOK	TKSFKL02522406	YOK	YOK	Y3560001006	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	32x140	32	Ø32x140	32	32	140	45	40	8	15	2	6	75	57,5	64,5	58	3	YOK	YOK	YOK	YOK	YOK	TKSFKL03214007	YOK	YOK	Y3560001007	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	32x160	32	Ø32x160	32	32	160	45	40	8	15	2	6	75	57,5	64,5	58	3	YOK	YOK	YOK	YOK	YOK	TKSFKL03216008	YOK	YOK	Y3560001008	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	32x180	32	Ø32x180	32	32	180	45	40	8	15	2	6	75	57,5	64,5	58	3	YOK	YOK	YOK	YOK	YOK	TKSFKL03218009	YOK	YOK	Y3560001009	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	32x200	32	Ø32x200	32	32	200	45	40	8	15	2	6	75	57,5	64,5	58	3	YOK	YOK	YOK	YOK	YOK	TKSFKL03220010	YOK	YOK	Y3560001010	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	32x224	32	Ø32x224	32	32	224	45	40	10	15	2	6	75	57,5	64,5	58	3	YOK	YOK	YOK	YOK	YOK	TKSFKL03222411	YOK	YOK	Y3560001011	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	32x250	32	Ø32x250	32	32	250	45	40	8	15	3	6	75	57,5	64,5	58	3	YOK	YOK	YOK	YOK	YOK	TKSFKL03225012	YOK	YOK	Y3560001012	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	40x140	40	Ø40x140	40	40	140	56	50	8	10	3	6	83	67,5	74,5	66	3	YOK	YOK	YOK	YOK	YOK	TKSFKL04014013	YOK	YOK	Y3560001013	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	40x160	40	Ø40x160	40	40	160	56	50	8	15	2	6	83	67,5	74,5	66	3	YOK	YOK	YOK	YOK	YOK	TKSFKL04016014	YOK	YOK	Y3560001014	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	40x180	40	Ø40x180	40	40	180	56	50	8	15	2	6	83	67,5	74,5	66	3	YOK	YOK	YOK	YOK	YOK	TKSFKL04018015	YOK	YOK	Y3560001015	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	40x200	40	Ø40x200	40	40	200	56	50	8	15	2	6	83	67,5	74,5	66	3	YOK	YOK	YOK	COL_040200_V	YOK	TKSFKL04020016	YOK	YOK	Y3560001016	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	40x224	40	Ø40x224	40	40	224	56	50	12	15	3	6	83	67,5	74,5	66	3	YOK	YOK	YOK	COL_040224_V	YOK	TKSFKL04022417	YOK	YOK	Y3560001017	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	40x250	40	Ø40x250	40	40	250	56	50	8	15	2	6	83	67,5	74,5	66	3	YOK	YOK	YOK	COL_040250_V	YOK	TKSFKL04025018	YOK	YOK	Y3560001018	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	40x280	40	Ø40x280	40	40	280	56	50	12	15	3	6	83	67,5	74,5	66	3	YOK	YOK	YOK	COL_040280_V	YOK	TKSFKL04028019	YOK	YOK	Y3560001019	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	50x160	50	Ø50x160	50	50	160	70	60	10	15	2,5	6	93	77,5	84,5	76	3	YOK	YOK	YOK	YOK	YOK	TKSFKL05016020	YOK	YOK	Y3560001020	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	50x180	50	Ø50x180	50	50	180	70	60	10	15	2,5	6	93	77,5	84,5	76	3	YOK	YOK	YOK	YOK	YOK	TKSFKL05018021	YOK	YOK	Y3560001021	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	50x200	50	Ø50x200	50	50	200	70	60	10	15	2,5	6	93	77,5	84,5	76	3	YOK	YOK	YOK	YOK	YOK	TKSFKL05020022	YOK	YOK	Y3560001022	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	50x224	50	Ø50x224	50	50	224	70	60	10	15	3	6	93	77,5	84,5	76	3	YOK	YOK	YOK	COL_050224_V	YOK	TKSFKL05022423	YOK	YOK	Y3560001023	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	50x250	50	Ø50x250	50	50	250	70	60	10	15	2,5	6	93	77,5	84,5	76	3	YOK	YOK	YOK	COL_050250_V	YOK	TKSFKL05025024	YOK	YOK	Y3560001024	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	50x280	50	Ø50x280	50	50	280	70	60	10	15	2,5	6	93	77,5	84,5	76	3	YOK	YOK	YOK	COL_050280_V	YOK	TKSFKL05028025	YOK	YOK	Y3560001025	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	50x315	50	Ø50x315	50	50	315	70	63	10	15	2,5	6	93	77,5	84,5	76	3	YOK	YOK	YOK	COL_050315_V	YOK	TKSFKL05031526	YOK	YOK	Y3560001026	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	63x200	63	Ø63x200	63	63	200	80	80	10	15	2,5	6	106	98	104,5	96	3	YOK	YOK	YOK	YOK	YOK	TKSFKL06320027	YOK	YOK	Y3560001027	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	63x224	63	Ø63x224	63	63	224	80	80	10	15	5	6	106	98	104,5	96	3	YOK	YOK	YOK	COL_063224_V	YOK	TKSFKL06322428	YOK	YOK	Y3560001028	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	63x250	63	Ø63x250	63	63	250	80	80	10	15	2,5	6	106	98	104,5	96	3	YOK	YOK	YOK	COL_063250_V	YOK	TKSFKL06325029	YOK	YOK	Y3560001029	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	63x280	63	Ø63x280	63	63	280	80	80	10	15	2,5	6	106	98	104,5	96	3	YOK	YOK	YOK	COL_063280_V	YOK	TKSFKL06328030	YOK	YOK	Y3560001030	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	63x315	63	Ø63x315	63	63	315	80	80	10	15	2,5	6	106	98	104,5	96	3	YOK	YOK	YOK	COL_063315_V	YOK	TKSFKL06331531	YOK	YOK	Y3560001031	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	63x355	63	Ø63x355	63	63	355	80	80	10	15	2,5	6	106	98	104,5	96	3	YOK	YOK	YOK	YOK	YOK	TKSFKL06335532	YOK	YOK	Y3560001032	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	63x400	63	Ø63x400	63	63	400	80	80	10	15	2,5	6	106	98	104,5	96	3	YOK	YOK	YOK	YOK	YOK	TKSFKL06340033	YOK	YOK	Y3560001033	YOK	YOK	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	80x224	80	Ø80x224	80	80	224	100	90	10	15	5	6	123	107,5	114,5	106	3	YOK	YOK	YOK	YOK	YOK	TKSFKL08022434	TKSDKL08022434	TKSDDKL08022401	Y3560001034	Y3560001077	Y3560001091	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	80x250	80	Ø80x250	80	80	250	100	90	10	15	3	6	123	107,5	114,5	106	3	YOK	YOK	YOK	YOK	COLH_080250_V	TKSFKL08025035	TKSDKL08025035	TKSDDKL08025002	Y3560001035	Y3560001078	Y3560001092	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	80x280	80	Ø80x280	80	80	280	100	90	10	15	3	6	123	107,5	114,5	106	3	YOK	YOK	YOK	YOK	COLH_080280_V	TKSFKL08028036	TKSDKL08028036	TKSDDKL08028003	Y3560001036	Y3560001079	Y3560001093	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	80x315	80	Ø80x315	80	80	315	100	90	10	15	3	6	123	107,5	114,5	106	3	YOK	YOK	YOK	YOK	COLH_080315_V	TKSFKL08031537	TKSDKL08031537	TKSDDKL08031504	Y3560001037	Y3560001080	Y3560001094	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	80x355	80	Ø80x355	80	80	355	100	90	10	15	3	6	123	107,5	114,5	106	3	YOK	YOK	YOK	YOK	COLH_080355_V	TKSFKL08035538	TKSDKL08035538	TKSDDKL08035505	Y3560001038	Y3560001081	Y3560001095	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	80x400	80	Ø80x400	80	80	400	100	90	10	15	3	6	123	107,5	114,5	106	3	YOK	YOK	YOK	YOK	YOK	TKSFKL08040039	TKSDKL08040039	TKSDDKL08040006	Y3560001039	Y3560001082	Y3560001096	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	100x280	100	Ø100x280	100	100	280	125	110	10	15	3	6	143	127,5	134,5	126	3	YOK	YOK	YOK	YOK	YOK	TKSFKL10028040	TKSDKL10028040	TKSDDKL10028007	Y3560001040	Y3560001083	Y3560001097	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	100x315	100	Ø100x315	100	100	315	125	110	10	15	3	6	143	127,5	134,5	126	3	YOK	YOK	YOK	YOK	COLH_100315_V	TKSFKL10031541	TKSDKL10031541	TKSDDKL10031508	Y3560001041	Y3560001084	Y3560001098	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	100x355	100	Ø100x355	100	100	355	125	110	10	15	3	6	143	127,5	134,5	126	3	YOK	YOK	YOK	YOK	COLH_100355_V	TKSFKL10035542	TKSDKL10035542	TKSDDKL10035509	Y3560001042	Y3560001085	Y3560001099	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	100x400	100	Ø100x400	100	100	400	125	110	10	15	3	6	143	127,5	134,5	126	3	YOK	YOK	YOK	YOK	COLH_100400_V	TKSFKL10040043	TKSDKL10040043	TKSDDKL10040010	Y3560001043	Y3560001086	Y3560001100	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	125x315	125	Ø125x315	125	125	315	140	125	12	15	2	6	300	300	300	300	3	YOK	YOK	YOK	YOK	YOK	YOK	TKSDKL12531544	TKSDDKL12531511	YOK	Y3560001087	Y3560001101	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	125x355	125	Ø125x355	125	125	355	140	125	12	15	2	6	300	300	300	300	3	YOK	YOK	YOK	YOK	COLH_125355_V	YOK	TKSDKL12535545	TKSDDKL12535512	YOK	Y3560001088	Y3560001102	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	125x400	125	Ø125x400	125	125	400	140	125	12	15	2	6	300	300	300	300	3	YOK	YOK	YOK	YOK	COLH_125400_V	YOK	TKSDKL12540046	TKSDDKL12540013	YOK	Y3560001089	Y3560001103	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	125x450	125	Ø125x450	125	125	450	140	125	12	15	2	6	300	300	300	300	3	YOK	YOK	YOK	YOK	COLH_125450_V	YOK	TKSDKL12545047	TKSDDKL12545014	YOK	Y3560001090	Y3560001104	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	160x315	160	Ø160x315	160	160	315	180	125	12	15	2	6	300	300	300	300	3	YOK	YOK	YOK	YOK	YOK	YOK	YOK	TKSDDKL16031515	YOK	YOK	Y3560001105	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	160x355	160	Ø160x355	160	160	355	180	125	12	15	2	6	300	300	300	300	3	YOK	YOK	YOK	YOK	YOK	YOK	YOK	TKSDDKL16035516	YOK	YOK	Y3560001106	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	160x400	160	Ø160x400	160	160	400	180	125	12	15	2	6	300	300	300	300	3	YOK	YOK	YOK	YOK	YOK	YOK	YOK	TKSDDKL16040017	YOK	YOK	Y3560001107	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
Kolon		N	Merkezleme Elemanları	160x450	160	Ø160x450	160	160	450	180	125	12	15	2	6	300	300	300	300	3	YOK	YOK	YOK	YOK	YOK	YOK	YOK	TKSDDKL16045018	YOK	YOK	Y3560001108	Kolon	GuidePost	ColonneGuida	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA002AzotSilindiri; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA002AzotSilindiri" ("ParcaAdi", "Baskı Elemanları", "Malzeme_Sinifi", "Grup", "TipA", "Kuvvet", "KursA", "Olcu", "D(mm)", "Pcap", "D1(mm)", "Dba(mm)", "L(mm)", "L1(mm)", "R(mm)", "e(mm)", "d2(mm)", "d4(mm)", "g(mm)", "b(mm)", "a(mm)", "f(mm)", "h(mm)", "Ty(mm)", "M", "RekorBaglantisi", "Koruyucu", cvtadet, "KursMax(mm)", "SPECiALSPRiNGS", "SPECiALSPRiNGSTESiSATSIZ", "SPECiALSPRiNGSTESiSATLI", "Not1", "Kritiklik_No", "STQ_NORMU", "TOFAS", "TOFASTESISATLIDOLU", "TOFASTESISATSIZDOLU", "TOFASTESISATLIBOS", "Depo_KoduTESISATDOLU", "Depo_KoduTESISATSIZDOLU", "Depo_KoduTESISATLIBOS", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
AzotSilindiri		A	Baskı Elemanları	Tip02	150daN	10	Ø32x70	32	D32	12	6	70	60	1	3,5	27	11	5	12,5	0	4	25	18	M6	M6	false	2	10	OZEL	SC 150- 010 - D	YOK	TESISATSIZ	2	YOK	OZEL	YOK	TKSAZT015001002-D	YOK	YOK	Y3560001145-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	150daN	13	Ø32x75,4	32	D32	12	6	75,4	62,7	1	3,5	27	11	5	12,5	0	4	25	18	M6	M6	false	2	12,7	YOK	SC 150- 013 - D	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT015001302-D	YOK	YOK	Y3560001146-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	150daN	16	Ø32x82	32	D32	12	6	82	66	1	3,5	27	11	5	12,5	0	4	25	18	M6	M6	false	2	16	YOK	SC 150- 016 - D	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT015001602-D	YOK	YOK	Y3560001147-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	150daN	25	Ø32x100	32	D32	12	6	100	75	1	3,5	27	11	5	12,5	0	4	25	18	M6	M6	false	2	25	YOK	SC 150- 025 - D	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT015002502-D	YOK	YOK	Y3560001148-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	150daN	38	Ø32x126	32	D32	12	6	126	88	1	3,5	27	11	5	12,5	0	4	25	18	M6	M6	false	2	38,1	YOK	SC 150- 038 - D	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT015003802-D	YOK	YOK	Y3560001149-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	150daN	50	Ø32x150	32	D32	12	6	150	100	1	3,5	27	11	5	12,5	0	4	25	18	M6	M6	false	2	50	YOK	SC 150- 050 - D	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT015005002-D	YOK	YOK	Y3560001150-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	250daN	10	Ø38x70	38	D38	15	6	70	60	1	3,5	33	11	5	12,5	0	4	25	18	M6	M6	false	2	10	YOK	SC 250 - 010 - D	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT025001002-D	YOK	YOK	Y3560001151-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	250daN	13	Ø38x75,4	38	D38	15	6	75,4	62,7	1	3,5	33	11	5	12,5	0	4	25	18	M6	M6	false	2	12,7	YOK	SC 250 - 013 - D	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT025001302-D	YOK	YOK	Y3560001152-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	250daN	16	Ø38x82	38	D38	15	6	82	66	1	3,5	33	11	5	12,5	0	4	25	18	M6	M6	false	2	16	YOK	SC 250 - 016 - D	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT025001602-D	YOK	YOK	Y3560001153-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	250daN	25	Ø38x100	38	D38	15	6	100	75	1	3,5	33	11	5	12,5	0	4	25	18	M6	M6	false	2	25	YOK	SC 250 - 025 - D	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT025002502-D	YOK	YOK	Y3560001154-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	250daN	38	Ø38x126	38	D38	15	6	126	88	1	3,5	33	11	5	12,5	0	4	25	18	M6	M6	false	2	38,1	YOK	SC 250 - 038 - D	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT025003802-D	YOK	YOK	Y3560001155-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	250daN	50	Ø38x150	38	D38	15	6	150	100	1	3,5	33	11	5	12,5	0	4	25	18	M6	M6	false	2	50	YOK	SC 250 - 050 - D	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT025005002-D	YOK	YOK	Y3560001156-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	500daN	13	Ø45x110,4	45	D45	20	10,5	110,4	97,7	1	3,5	39	16,4	8	16,5	0	4	20	18	M6	G1/8	false	2	12,7	YOK	SC 500 - 013 - D	SC 500 - 013 - D - N	TESISATLI	2	YOK	YOK	YOK	TKSAZT050001302-D	YOK	YOK	Y3560001157-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	500daN	25	Ø45x135	45	D45	20	10,5	135	110	1	3,5	39	16,4	8	16,5	0	4	20	18	M6	G1/8	false	2	25	YOK	SC 500 - 025 - D	SC 500 - 025 - D - N	TESISATLI	2	YOK	YOK	TKSAZT050002502-F	TKSAZT050002502-D	TKSAZT050002502-X	Y3560001158-F	Y3560001158-D	Y3560001158-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	500daN	38	Ø45x161,2	45	D45	20	10,5	161,2	123,1	1	3,5	39	16,4	8	16,5	0	4	20	18	M6	G1/8	false	2	38,1	YOK	SC 500 - 038 - D	SC 500 - 038 - D - N	TESISATLI	2	YOK	YOK	TKSAZT050003802-F	TKSAZT050003802-D	TKSAZT050003802-X	Y3560001159-F	Y3560001159-D	Y3560001159-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	500daN	50	Ø45x185	45	D45	20	10,5	185	135	1	3,5	39	16,4	8	16,5	0	4	20	18	M6	G1/8	false	2	50	YOK	SC 500 - 050 - D	SC 500 - 050 - D - N	TESISATLI	2	YOK	YOK	TKSAZT050005002-F	TKSAZT050005002-D	TKSAZT050005002-X	Y3560001160-F	Y3560001160-D	Y3560001160-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	750daN	13	Ø50x120,4	50	D50	25	10,5	120,4	107,7	2	5	43	16,4	8	17,5	0	8	20	23	M8	G1/8	false	2	12,7	YOK	SC 750 - 013 - D	SC 750 - 013 - D - N	TESISATLI	2	YOK	YOK	TKSAZT075001302-F	TKSAZT075001302-D	TKSAZT075001302-X	Y3560001161-F	Y3560001161-D	Y3560001161-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	750daN	25	Ø50x145	50	D50	25	10,5	145	120	2	5	43	16,4	8	17,5	0	8	20	23	M8	G1/8	false	2	25	YOK	SC 750 - 025 - D	SC 750 - 025 - D - N	TESISATLI	2	YOK	YOK	TKSAZT075002502-F	TKSAZT075002502-D	TKSAZT075002502-X	Y3560001162-F	Y3560001162-D	Y3560001162-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	750daN	38	Ø50x171,2	50	D50	25	10,5	171,2	133,1	2	5	43	16,4	8	17,5	0	8	20	23	M8	G1/8	false	2	38,1	YOK	SC 750 - 038 - D	SC 750 - 038 - D - N	TESISATLI	2	YOK	YOK	TKSAZT075003802-F	TKSAZT075003802-D	TKSAZT075003802-X	Y3560001163-F	Y3560001163-D	Y3560001163-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	750daN	50	Ø50x195	50	D50	25	10,5	195	145	2	5	43	16,4	8	17,5	0	8	20	23	M8	G1/8	false	2	50	YOK	SC 750 - 050 - D	SC 750 - 050 - D - N	TESISATLI	2	YOK	YOK	TKSAZT075005002-F	TKSAZT075005002-D	TKSAZT075005002-X	Y3560001164-F	Y3560001164-D	Y3560001164-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	1500daN	50	Ø75x210	75	D75	36	10,5	210	160	2,5	5	68	16,4	8	21	0	8	40	23	M8	G1/8	false	4	50	YOK	SC 1500 - 050 - D	SC 1500 - 050 - D - N	TESISATLI	2	YOK	YOK	TKSAZT150005002-F	TKSAZT150005002-D	TKSAZT150005002-X	Y3560001165-F	Y3560001165-D	Y3560001165-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	1500daN	80	Ø75x270	75	D75	36	10,5	270	190	2,5	5	68	16,4	8	21	0	8	40	23	M8	G1/8	false	4	80	YOK	SC 1500 - 080 - D	SC 1500 - 080 - D - N	TESISATLI	2	YOK	YOK	TKSAZT150008002-F	TKSAZT150008002-D	TKSAZT150008002-X	Y3560001166-F	Y3560001166-D	Y3560001166-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	1500daN	100	Ø75x310	75	D75	36	10,5	310	210	2,5	5	68	16,4	8	21	0	8	40	23	M8	G1/8	false	4	100	YOK	SC 1500 - 100 - D	SC 1500 - 100 - D - N	TESISATLI	2	YOK	YOK	TKSAZT150010002-F	TKSAZT150010002-D	TKSAZT150010002-X	Y3560001167-F	Y3560001167-D	Y3560001167-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip02	1500daN	160	Ø75x430	75	D75	36	10,5	430	270	2,5	5	68	16,4	8	21	0	8	40	23	M8	G1/8	false	4	160	YOK	SC 1500 - 160 - D	SC 1500 - 160 - D - N	TESISATLI	2	YOK	YOK	TKSAZT150016002-F	TKSAZT150016002-D	TKSAZT150016002-X	Y3560001168-F	Y3560001168-D	Y3560001168-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	350daN	10	Ø32x50	32	D32	16	6	50	40	1	3,5	27	11	4	12,5	0	4	20	18	M6	M6	false	2	10	YOK	RV350 - 010 - A	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT035001001-D	YOK	YOK	Y3560001109-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	350daN	13	Ø32x56	32	D32	16	6	56	43	1	3,5	27	11	4	12,5	0	4	20	18	M6	M6	false	2	13	YOK	RV350 - 013 - A	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT035001301-D	YOK	YOK	Y3560001110-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	350daN	16	Ø32x62	32	D32	16	6	62	46	1	3,5	27	11	4	12,5	0	4	20	18	M6	M6	false	2	16	YOK	RV350 - 016 - A	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT035001601-D	YOK	YOK	Y3560001111-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	350daN	25	Ø32x80	32	D32	16	6	80	55	1	3,5	27	11	4	12,5	0	4	20	18	M6	M6	false	2	25	YOK	RV350 - 025 - A	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT035002501-D	YOK	YOK	Y3560001112-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	350daN	38	Ø32x106	32	D32	16	6	106	68	1	3,5	27	11	4	12,5	0	4	20	18	M6	M6	false	2	38	YOK	RV350 - 038 - A	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT035003801-D	YOK	YOK	Y3560001113-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	350daN	50	Ø32x130	32	D32	16	6	130	80	1	3,5	27	11	4	12,5	0	4	20	18	M6	M6	false	2	50	YOK	RV350 - 050 - A	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT035005001-D	YOK	YOK	Y3560001114-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	500daN	10	Ø38x50	38	D38	20	6	50	40	1	3,5	33	11	4	12,5	0	4	20	18	M6	M6	false	2	10	YOK	RV500 - 010 - A	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT050001001-D	YOK	YOK	Y3560001115-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	500daN	13	Ø38x56	38	D38	20	6	56	43	1	3,5	33	11	4	12,5	0	4	20	18	M6	M6	false	2	13	YOK	RV500 - 013 - A	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT050001301-D	YOK	YOK	Y3560001116-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	500daN	16	Ø38x62	38	D38	20	6	62	46	1	3,5	33	11	4	12,5	0	4	20	18	M6	M6	false	2	16	YOK	RV500 - 016 - A	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT050001601-D	YOK	YOK	Y3560001117-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	500daN	25	Ø38x80	38	D38	20	6	80	55	1	3,5	33	11	4	12,5	0	4	20	18	M6	M6	false	2	25	YOK	RV500 - 025 - A	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT050002501-D	YOK	YOK	Y3560001118-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	500daN	38	Ø38x106	38	D38	20	6	106	68	1	3,5	33	11	4	12,5	0	4	20	18	M6	M6	false	2	38	YOK	RV500 - 038 - A	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT050003801-D	YOK	YOK	Y3560001119-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	500daN	50	Ø38x130	38	D38	20	6	130	80	1	3,5	33	11	4	12,5	0	4	20	18	M6	M6	false	2	50	YOK	RV500 - 050 - A	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT050005001-D	YOK	YOK	Y3560001120-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	750daN	10	Ø45x52	45	D45	25	6	52	42	1	3,5	40	11	5	16,5	0	4	20	18	M8	M6	false	2	10	YOK	RV 750 - 010 - A	YOK	TESISATSIZ	2	YOK	YOK	YOK	TKSAZT075001001-D	YOK	YOK	Y3560001121-D	YOK	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	750daN	13	Ø45x58	45	D45	25	6	58	45	1	3,5	40	11	5	16,5	0	4	20	18	M8	M6	false	2	13	YOK	RV 750 - 013 - A	YOK	TESISATSIZ	2	YOK	YOK	TKSAZT075001301-F	TKSAZT075001301-D	TKSAZT075001301-X	Y3560001122-F	Y3560001122-D	Y3560001122-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	750daN	16	Ø45x64	45	D45	25	6	64	48	1	3,5	40	11	5	16,5	0	4	20	18	M8	M6	false		16	YOK	RV 750 - 016 - A	YOK	TESISATSIZ	2	YOK	YOK	TKSAZT075001601-F	TKSAZT075001601-D	TKSAZT075001601-X	Y3560001123-F	Y3560001123-D	Y3560001123-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	750daN	25	Ø45x82	45	D45	25	6	82	57	1	3,5	40	11	5	16,5	0	4	20	18	M8	M6	false	2	25	YOK	RV 750 - 025 - A	YOK	TESISATSIZ	2	YOK	YOK	TKSAZT075002501-F	TKSAZT075002501-D	TKSAZT075002501-X	Y3560001124-F	Y3560001124-D	Y3560001124-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	750daN	38	Ø45x108	45	D45	25	6	108	70	1	3,5	40	11	5	16,5	0	4	20	18	M8	M6	false	2	38	YOK	RV 750 - 038 - A	YOK	TESISATSIZ	2	YOK	YOK	TKSAZT075003801-F	TKSAZT075003801-D	TKSAZT075003801-X	Y3560001125-F	Y3560001125-D	Y3560001125-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	750daN	50	Ø45x132	45	D45	25	6	132	82	1	3,5	40	11	5	16,5	0	4	20	18	M8	M6	false	2	50	YOK	RV 750 - 050 - A	YOK	TESISATSIZ	2	YOK	YOK	TKSAZT075005001-F	TKSAZT075005001-D	TKSAZT075005001-X	Y3560001126-F	Y3560001126-D	Y3560001126-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	1000daN	50	Ø50x138	50	D50	28	6	138	88	2	5	43	11	5	17,5	0	8	20	23	M8	M6	false	2	50	YOK	RV 1000 - 050 - A	YOK	TESISATSIZ	2	YOK	YOK	TKSAZT100005001-F	TKSAZT100005001-D	TKSAZT100005001-X	Y3560001127-F	Y3560001127-D	Y3560001127-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	1000daN	80	Ø50x198	50	D50	28	6	198	118	2	5	43	11	5	17,5	0	8	20	23	M8	M6	false	2	80	YOK	RV 1000 - 080 - A	YOK	TESISATSIZ	2	YOK	YOK	TKSAZT100008001-F	TKSAZT100008001-D	TKSAZT100008001-X	Y3560001128-F	Y3560001128-D	Y3560001128-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	1000daN	100	Ø50x238	50	D50	28	6	238	138	2	5	43	11	5	17,5	0	8	20	23	M8	M6	false	2	100	YOK	RV 1000 - 100 - A	YOK	TESISATSIZ	2	YOK	YOK	TKSAZT100010001-F	TKSAZT100010001-D	TKSAZT100010001-X	Y3560001129-F	Y3560001129-D	Y3560001129-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2019
AzotSilindiri		A	Baskı Elemanları	Tip01	1500daN	50	Ø63x144	63	D63	36	6	144	94	2	5	56	11	5	19	0	8	20	23	M8	M6	false	2	50	YOK	RV 1500 - 050- A	YOK	TESISATSIZ	2	YOK	YOK	TKSAZT150005001-F	TKSAZT150005001-D	TKSAZT150005001-X	Y3560001130-F	Y3560001130-D	Y3560001130-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip01	1500daN	80	Ø63x204	63	D63	36	6	204	124	2	5	56	11	5	19	0	8	20	23	M8	M6	false	2	80	YOK	RV 1500 - 080- A	YOK	TESISATSIZ	2	YOK	YOK	TKSAZT150008001-F	TKSAZT150008001-D	TKSAZT150008001-X	Y3560001131-F	Y3560001131-D	Y3560001131-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip01	1500daN	100	Ø63x244	63	D63	36	6	244	144	2	5	56	11	5	19	0	8	20	23	M8	M6	false	2	100	YOK	RV 1500 - 100- A	YOK	TESISATSIZ	2	YOK	YOK	TKSAZT150010001-F	TKSAZT150010001-D	TKSAZT150010001-X	Y3560001132-F	Y3560001132-D	Y3560001132-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip01	2400daN	50	Ø75x145	75	D75	45	6	145	95	2,5	5	67	11	5	21	0	8	40	23	M8	M6	false	4	50	YOK	RV 2400 - 050 - A	YOK	TESISATSIZ	2	YOK	YOK	TKSAZT240005001-F	TKSAZT240005001-D	TKSAZT240005001-X	Y3560001133-F	Y3560001133-D	Y3560001133-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip01	2400daN	80	Ø75x205	75	D75	45	6	205	125	2,5	5	67	11	5	21	0	8	40	23	M8	M6	false	4	80	YOK	RV 2400 - 080 - A	YOK	TESISATSIZ	2	YOK	YOK	TKSAZT240008001-F	TKSAZT240008001-D	TKSAZT240008001-X	Y3560001134-F	Y3560001134-D	Y3560001134-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip01	2400daN	100	Ø75x245	75	D75	45	6	245	145	2,5	5	67	11	5	21	0	8	40	23	M8	M6	false	4	100	YOK	RV 2400 - 100 - A	YOK	TESISATSIZ	2	YOK	YOK	TKSAZT240010001-F	TKSAZT240010001-D	TKSAZT240010001-X	Y3560001135-F	Y3560001135-D	Y3560001135-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip01	4200daN	50	Ø95x158	95	D95	60	10,5	158	108	2,5	5	87	14	5	24	0	8	60	23	M8	G1/8	false	4	50	YOK	RV 4200 - 050 - A	RV 4200 - 050 - A - N	TESISATLI	2	YOK	YOK	TKSAZT420005001-F	TKSAZT420005001-D	TKSAZT420005001-X	Y3560001136-F	Y3560001136-D	Y3560001136-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip01	4200daN	80	Ø95x218	95	D95	60	10,5	218	138	2,5	5	87	14	5	24	0	8	60	23	M8	G1/8	false	4	80	YOK	RV 4200 - 080 - A	RV 4200 - 080 - A - N	TESISATLI	2	YOK	YOK	TKSAZT420008001-F	TKSAZT420008001-D	TKSAZT420008001-X	Y3560001137-F	Y3560001137-D	Y3560001137-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip01	4200daN	100	Ø95x258	95	D95	60	10,5	258	158	2,5	5	87	14	5	24	0	8	60	23	M8	G1/8	false	4	100	YOK	RV 4200 - 100 - A	RV 4200 - 100 - A - N	TESISATLI	2	YOK	YOK	TKSAZT420010001-F	TKSAZT420010001-D	TKSAZT420010001-X	Y3560001138-F	Y3560001138-D	Y3560001138-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip01	6600daN	50	Ø120x168	120	D120	75	10,5	168	118	2,5	5	112	16,4	8	25,5	0	8	80	23	M10	G1/8	false	4	50	YOK	RV 6600 - 050 - A	RV 6600 - 050 - A - N	TESISATLI	2	YOK	YOK	TKSAZT660005001-F	TKSAZT660005001-D	TKSAZT660005001-X	Y3560001139-F	Y3560001139-D	Y3560001139-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip01	6600daN	80	Ø120x228	120	D120	75	10,5	228	148	2,5	5	112	16,4	8	25,5	0	8	80	23	M10	G1/8	false	4	80	YOK	RV 6600 - 080 - A	RV 6600 - 080 - A - N	TESISATLI	2	YOK	YOK	TKSAZT660008001-F	TKSAZT660008001-D	TKSAZT660008001-X	Y3560001140-F	Y3560001140-D	Y3560001140-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip01	6600daN	100	Ø120x268	120	D120	75	10,5	268	168	2,5	5	112	16,4	8	25,5	0	8	80	23	M10	G1/8	false	4	100	YOK	RV 6600 - 100 - A	RV 6600 - 100 - A - N	TESISATLI	2	YOK	YOK	TKSAZT660010001-F	TKSAZT660010001-D	TKSAZT660010001-X	Y3560001141-F	Y3560001141-D	Y3560001141-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip01	9500daN	50	Ø150x178	150	D150	90	10,5	178	128	2,5	5	142	16,4	8	27,5	0	8	100	23	M10	G1/8	false	4	50	YOK	RV 9500 - 050 - A	RV 9500 - 050 - A - N	TESISATLI	1	YOK	YOK	TKSAZT950005001-F	TKSAZT950005001-D	TKSAZT950005001-X	Y3560001142-F	Y3560001142-D	Y3560001142-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip01	9500daN	80	Ø150x238	150	D150	90	10,5	238	158	2,5	5	142	16,4	8	27,5	0	8	100	23	M10	G1/8	false	4	80	YOK	RV 9500 - 080 - A	RV 9500 - 080 - A - N	TESISATLI	1	YOK	YOK	TKSAZT950008001-F	TKSAZT950008001-D	TKSAZT950008001-X	Y3560001143-F	Y3560001143-D	Y3560001143-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip01	9500daN	100	Ø150x278	150	D150	90	10	278	178	2,5	5	142	16,4	8	27,5	0	8	100	23	M10	G1/8	false	4	100	YOK	RV 9500 - 100 - A	RV 9500 - 100 - A - N	TESISATLI	1	YOK	YOK	TKSAZT950010001-F	TKSAZT950010001-D	TKSAZT950010001-X	Y3560001144-F	Y3560001144-D	Y3560001144-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	1000daN	50	Ø50x195	50	D50	30	10,5	195	145	2	5	43	14	5	17,5	0	8	20	23	M8	G1/8	false	2	50	YOK	H1000 - 050 - C	H1000 - 050 - C - N	TESISATLI	2	YOK	YOK	TKSAZT100005003-F	TKSAZT100005003-D	TKSAZT100005003-X	Y3560001169-F	Y3560001169-D	Y3560001169-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	1000daN	80	Ø50x255	50	D50	30	10,5	255	175	2	5	43	14	5	17,5	0	8	20	23	M8	G1/8	false	2	80	YOK	H1000 - 080 - C	H1000 - 080 - C - N	TESISATLI	2	YOK	YOK	TKSAZT100008003-F	TKSAZT100008003-D	TKSAZT100008003-X	Y3560001170-F	Y3560001170-D	Y3560001170-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	1000daN	100	Ø50x295	50	D50	30	10,5	295	195	2	5	43	14	5	17,5	0	8	20	23	M8	G1/8	false	2	100	YOK	H1000 - 100 - C	H1000 - 100 - C - N	TESISATLI	2	YOK	YOK	TKSAZT100010003-F	TKSAZT100010003-D	TKSAZT100010003-X	Y3560001171-F	Y3560001171-D	Y3560001171-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	1000daN	160	Ø50x415	50	D50	30	10,5	415	255	2	5	43	14	5	17,5	0	8	20	23	M8	G1/8	false	2	160	YOK	H1000 - 160 - C	H1000 - 160 - C - N	TESISATLI	2	YOK	YOK	TKSAZT100016003-F	TKSAZT100016003-D	TKSAZT100016003-X	Y3560001172-F	Y3560001172-D	Y3560001172-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	2400daN	50	Ø75x210	75	D75	45	10,5	210	160	2,5	5	67	14	5	21	0	8	40	23	M8	G1/8	false	4	50	YOK	H2400 - 050 - C	H2400 - 050 - C - N	TESISATLI	2	YOK	YOK	TKSAZT240005003-F	TKSAZT240005003-D	TKSAZT240005003-X	Y3560001173-F	Y3560001173-D	Y3560001173-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	2400daN	80	Ø75x270	75	D75	45	10,5	270	190	2,5	5	67	14	5	21	0	8	40	23	M8	G1/8	false	4	80	YOK	H2400 - 080 - C	H2400 - 080 - C - N	TESISATLI	2	YOK	YOK	TKSAZT240008003-F	TKSAZT240008003-D	TKSAZT240008003-X	Y3560001174-F	Y3560001174-D	Y3560001174-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	2400daN	100	Ø75x310	75	D75	45	10,5	310	210	2,5	5	67	14	5	21	0	8	40	23	M8	G1/8	false	4	100	YOK	H2400 - 100 - C	H2400 - 100 - C - N	TESISATLI	2	YOK	YOK	TKSAZT240010003-F	TKSAZT240010003-D	TKSAZT240010003-X	Y3560001175-F	Y3560001175-D	Y3560001175-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	2400daN	160	Ø75x430	75	D75	45	10,5	430	270	2,5	5	67	14	5	21	0	8	40	23	M8	G1/8	false	4	160	YOK	H2400 - 160 - C	H2400 - 160 - C - N	TESISATLI	2	YOK	YOK	TKSAZT240016003-F	TKSAZT240016003-D	TKSAZT240016003-X	Y3560001176-F	Y3560001176-D	Y3560001176-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	4200daN	50	Ø95x220	95	D95	60	10,5	220	170	2,5	5	87	14	5	24	0	8	60	23	M8	G1/8	false	4	50	YOK	H4200 - 050 - C	H4200 - 050 - C - N	TESISATLI	2	YOK	YOK	TKSAZT420005003-F	TKSAZT420005003-D	TKSAZT420005003-X	Y3560001177-F	Y3560001177-D	Y3560001177-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	4200daN	80	Ø95x280	95	D95	60	10,5	280	200	2,5	5	87	14	5	24	0	8	60	23	M8	G1/8	false	4	80	YOK	H4200 - 080 - C	H4200 - 080 - C - N	TESISATLI	2	YOK	YOK	TKSAZT420008003-F	TKSAZT420008003-D	TKSAZT420008003-X	Y3560001178-F	Y3560001178-D	Y3560001178-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	4200daN	100	Ø95x320	95	D95	60	10,5	320	220	2,5	5	87	14	5	24	0	8	60	23	M8	G1/8	false	4	100	YOK	H4200 - 100 - C	H4200 - 100 - C - N	TESISATLI	2	YOK	YOK	TKSAZT420010003-F	TKSAZT420010003-D	TKSAZT420010003-X	Y3560001179-F	Y3560001179-D	Y3560001179-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	4200daN	160	Ø95x440	95	D95	60	10,5	440	280	2,5	5	87	14	5	24	0	8	60	23	M8	G1/8	false	4	160	YOK	H4200 - 160 - C	H4200 - 160 - C - N	TESISATLI	2	YOK	YOK	TKSAZT420016003-F	TKSAZT420016003-D	TKSAZT420016003-X	Y3560001180-F	Y3560001180-D	Y3560001180-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	6600daN	50	Ø120x240	120	D120	75	10,5	240	190	2,5	5	112	16,4	8	25,5	0	8	80	23	M10	G1/8	false	4	50	YOK	H6600 - 050 - C	H6600 - 050 - C - N	TESISATLI	2	YOK	YOK	TKSAZT660005003-F	TKSAZT660005003-D	TKSAZT660005003-X	Y3560001181-F	Y3560001181-D	Y3560001181-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	6600daN	80	Ø120x300	120	D120	75	10,5	300	220	2,5	5	112	16,4	8	25,5	0	8	80	23	M10	G1/8	false	4	80	YOK	H6600 - 080 - C	H6600 - 080 - C - N	TESISATLI	2	YOK	YOK	TKSAZT660008003-F	TKSAZT660008003-D	TKSAZT660008003-X	Y3560001182-F	Y3560001182-D	Y3560001182-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	6600daN	100	Ø120x340	120	D120	75	10,5	340	240	2,5	5	112	16,4	8	25,5	0	8	80	23	M10	G1/8	false	4	100	YOK	H6600 - 100 - C	H6600 - 100 - C - N	TESISATLI	2	YOK	YOK	TKSAZT660010003-F	TKSAZT660010003-D	TKSAZT660010003-X	Y3560001183-F	Y3560001183-D	Y3560001183-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	6600daN	160	Ø120x460	120	D120	75	10,5	460	300	2,5	5	112	16,4	8	25,5	0	8	80	23	M10	G1/8	false	4	160	YOK	H6600 - 160 - C	H6600 - 160 - C - N	TESISATLI	2	YOK	YOK	TKSAZT660016003-F	TKSAZT660016003-D	TKSAZT660016003-X	Y3560001184-F	Y3560001184-D	Y3560001184-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	9500daN	100	Ø150x355	150	D150	90	10,5	355	255	2,5	7	142	16,4	8	27,5	0	8	100	23	M10	G1/8	false	4	100	YOK	H9500 - 100 - C	H9500 - 100 - C - N	TESISATLI	1	YOK	YOK	TKSAZT950010003-F	TKSAZT950010003-D	TKSAZT950010003-X	Y3560001185-F	Y3560001185-D	Y3560001185-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	9500daN	160	Ø150x475	150	D150	90	10,5	475	315	2,5	7	142	16,4	8	25,5	0	8	100	23	M10	G1/8	false	4	160	YOK	H9500 - 160 - C	H9500 - 160 - C - N	TESISATLI	1	YOK	YOK	TKSAZT950016003-F	TKSAZT950016003-D	TKSAZT950016003-X	Y3560001186-F	Y3560001186-D	Y3560001186-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	9500daN	250	Ø150x655	150	D150	90	10,5	655	405	2,5	7	142	16,4	8	27,5	0	8	100	23	M10	G1/8	false	4	250	YOK	H9500 - 250 - C	H9500 - 250 - C - N	TESISATLI	1	YOK	YOK	TKSAZT950025003-F	TKSAZT950025003-D	TKSAZT950025003-X	Y3560001187-F	Y3560001187-D	Y3560001187-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
AzotSilindiri		A	Baskı Elemanları	Tip03	9500daN	300	Ø150x755	150	D150	90	10,5	755	455	2,5	7	142	16,4	8	25,5	0	8	100	23	M10	G1/8	false	4	300	YOK	H9500 - 300 - C	H9500 - 300 - C - N	TESISATLI	1	YOK	YOK	TKSAZT950030003-F	TKSAZT950030003-D	TKSAZT950030003-X	Y3560001188-F	Y3560001188-D	Y3560001188-X	AzotSilindiri	NitrogenGasSpring	CilindriAzoto	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA003AzotSilindiriTutucu; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA003AzotSilindiriTutucu" ("ParcaAdi", "Baskı Elemanları", "Malzeme_Sinifi", "Grup", "Pcap", "Tip", "B(mm)", "B1(mm)", "A1(mm)", "A2(mm)", "A3(mm)", "D1(mm)", "D2(mm)", "D3(mm)", "H(mm)", "T(mm)", "M", "Md(mm)", "Ml(mm)", "G(mm)", "Cb(mm)", "Baglanti", "aa(mm)", "bb(mm)", "cc(mm)", "dd(mm)", "ee(mm)", "ff(mm)", "gg(mm)", "jj(mm)", "hh(mm)", "ii(mm)", "nn(mm)", "kk(mm)", "ZD(mm)", "ZC(mm)", "HO(mm)", "RO(mm)", "DO(mm)", "AO(mm)", "fca(mm)", "fcb(mm)", "fcc(mm)", "fcd(mm)", "fce(mm)", "fcf(mm)", "fcg(mm)", fch, "fsa(mm)", "fsb(mm)", "fsc(mm)", "fsd(mm)", "fse(mm)", "fsf(mm)", "fsg(mm)", "fsh(mm)", "fsi(mm)", "fsl(mm)", "fsz(mm)", fsm, "fsn(mm)", "fso(mm)", "2delik", "4delik", "Tip01", "Tip02-Tip03", "Tip04", "Tip05", "Tip06", "Kritiklik_No", "STQ_NORMU", "TOFAS", "SPECiALSPRiNG", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
AzotSilindiriTutucu		A	Baskı Elemanları	D45	Tip01	70	70	50	50	20	45,5	41,5	9	7	4	M8	32	37	0	30	4-M8x30	70	70	50	50	20	15	12	9	15	14	9	20	45,5	86	13	0,75	9	50	64	50	47	45,5	9	13	8	M8	100	64	45	20	9	82	37	28	60	15	9	M8	8	15	True	False	True	False	False	False	False	3	YOK	TKSAST04507001	FB-45	Y3560001189	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D50	Tip01	75	75	56,5	56,5	24	50,5	44,5	9	12	8	M8	32	37	0	30	4-M8x30	75	75	56,5	56,5	20	15	12	9	15	14	9	20	50,5	95	13	1,75	9	56,5	70	56,5	54	50,5	9	13	8	M8	130	90	50	30	9	110	50	40	80	20	9	M8	8	15	True	False	True	False	False	False	False	3	YOK	TKSAST05007501	FB-50	Y3560001190	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D75	Tip01	100	100	73,5	73,5	24	75,5	68,5	11	12	8	M10	40	45	0	35	4-M10x35	100	100	73,5	73,5	40	18	12	11	15	14	9	20	75,5	122	16	2,25	11	73,5	90	73,5	80	75,5	11	16	10	M10	160	115	75	30	11	137	63,5	52,5	105	20	11	M10	10	18	False	True	True	False	False	False	False	3	YOK	TKSAST07510001	FB-75	Y3560001191	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D95	Tip01	120	120	92	92	24	95,5	88,5	13,5	12	8	M12	48	53	0	40	4-M12x40	120	120	92	92	60	20	13	13,5	15	14	9	20	95,5	150	18	2,25	13,5	92	110	92	100	95,5	13,5	18	12	M12	195	145	95	30	13,5	170	80	67,5	125	20	13	M12	12	20	False	True	True	False	False	False	False	3	YOK	TKSAST09512001	FB-95	Y3560001192	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D120	Tip01	140	140	109,5	109,5	24	120,5	113,5	13,5	12	8	M12	48	53	0	40	4-M12x40	140	140	109,5	109,5	80	20	13	13,5	18	15	11	20	120,5	175	21	2,25	13,5	109,5	130	109,5	125	120,5	13,5	21	12	M12	220	165	120	30	13,5	195	92,5	77,5	148	20	13	M12	12	20	False	True	True	False	False	False	False	3	YOK	TKSAST12014001	FB-120	Y3560001193	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D150	Tip01	190	190	138	138	24	150,5	143,5	17,5	12	8	M16	64	69	0	50	4-M16x50	190	190	138	138	100	26	17	17,5	18	15	11	25	150,5	220	27	2,25	17,5	138	162	138	155	150,5	17,5	27	16	M16	260	200	150	30	13,5	230	110	95	200	20	13	M12	12	20	False	True	True	False	False	False	False	3	YOK	TKSAST15019001	FB-150	Y3560001194	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D32	Tip02	50	50	35	35	5	32,5	28,5	6,6	7	4	M6	24	29	0	25	4-M6x25	70	70	50	50	20	15	12	7	15	12	9	20	32,5	60	9	0,75	6,6	35	45	35	32	27	7	9			90	54	32	20	9	72	31	22	45	15	9	M8	8	15	False	True	False	True	False	False	False	3	YOK	TKSAST03205002	FS2-32	Y3560001195	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D38	Tip02	55	55	40	40	5	38,5	34,5	6,6	7	4	M6	24	29	0	25	4-M6x25	70	70	50	50	20	15	12	7	15	14	9	20	38,5	68	9	0,75	6,6	40	52	40	40	38,5	6,6	9	6	M6	95	59	38	20	9	77	34	25	55	15	9	M8	8	15	False	True	False	True	False	False	False	3	YOK	TKSAST03805502	FS2-38	Y3560001196	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D45	Tip02	70	70	50	50	20	45,5	41,5	9	7	4	M8	32	37	0	35	4-M8x35	70	70	50	50	20	15	12	9	15	14	9	20	45,5	86	13	0,75	9	50	64	50	47	45,5	9	13	8	M8	100	64	45	20	9	82	37	28	60	15	9	M8	8	15	False	True	False	True	False	False	False	3	YOK	TKSAST04507002	FS2-45	Y3560001197	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D50	Tip02	75	75	56,5	56,5	24	50,5	44,5	9	12	8	M8	32	37	0	35	4-M8x35	75	75	56,5	56,5	20	15	12	9	15	14	9	20	50,5	95	13	1,75	9	56,5	70	56,5	54	50,5	9	13	8	M8	130	90	50	30	9	110	50	40	80	20	9	M8	8	15	False	True	False	True	False	False	False	3	YOK	TKSAST05007502	FS2-50	Y3560001198	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D63	Tip02	100	100	73,5	73,5	24	64	57	11	12	8	M10	40	45	0	40	4-M10x40	100	100	73,5	73,5	20	18	12	11	15	12	9	20	63,2	90	16	1,775	11	73,5	90	73,5	67	63,45	11	16	10	M10	130	90	50	30	9	110	50	40	80	20	9	M8	8	15	False	True	False	True	False	False	False	3	YOK	TKSAST06310002	FS2B-63	Y3560001199	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D75	Tip02	100	100	73,5	73,5	24	75,5	68,5	11	12	8	M10	40	45	0	40	4-M10x40	100	100	73,5	73,5	40	18	12	11	15	14	9	20	75,5	122	16	2,25	11	73,5	90	73,5	80	75,5	11	16	10	M10	160	115	75	30	11	137	63,5	52,5	105	20	11	M10	10	18	False	True	False	True	False	False	False	3	YOK	TKSAST07510002	FS2-75	Y3560001200	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D95	Tip02	120	120	92	92	24	95,5	88,5	13,5	12	8	M12	48	53	0	45	4-M12x45	120	120	92	92	60	20	13	13,5	15	14	9	20	95,5	150	18	2,25	13,5	92	110	92	100	95,5	13,5	18	12	M12	195	145	95	30	13,5	170	80	67,5	125	20	13	M12	12	20	False	True	False	True	False	False	False	3	YOK	TKSAST09512002	FS2-95	Y3560001201	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D120	Tip02	140	140	109,5	109,5	24	120,5	113,5	13,5	12	8	M12	48	53	0	45	4-M12x45	140	140	109,5	109,5	80	20	13	13,5	18	15	11	20	120,5	175	21	2,25	13,5	109,5	130	109,5	125	120,5	13,5	21	12	M12	220	165	120	30	13,5	195	92,5	77,5	148	20	13	M12	12	20	False	True	False	True	False	False	False	3	YOK	TKSAST12014002	FS2-120	Y3560001202	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D150	Tip02	190	190	138	138	24	150,5	143,5	17,5	12	8	M16	64	69	0	55	4-M16x55	190	190	138	138	100	26	17	17,5	18	15	11	25	150,5	220	27	2,25	17,5	138	162	138	155	150,5	17,5	27	16	M16	260	200	150	30	13,5	230	110	95	200	20	13	M12	12	20	False	True	False	True	False	False	False	3	YOK	TKSAST15019002	FS2-150	Y3560001203	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D32	Tip03	50	27	40	18	20	32,5	28,5	6,6	7	4	M6	24	29	0	25	4-M6x25	70	70	50	50	20	15	12	7	15	12	9	20	32	60	9	1	7	36	45	35	32	27	7	9			90	54	32	20	9	72	31	22	45	15	9	M8	8	15	False	True	False	True	False	False	False	3	YOK	TKSAST03205003	FS2A-32	Y3560001204	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D38	Tip03	55	33	44	20	20	38,5	34,5	6,6	7	4	M6	24	29	0	25	4-M6x25	70	70	50	50	20	15	12	7	15	14	9	20	38	68	9	1	7	40	52	40	40	38,5	6,6	9	6	M6	95	59	38	20	9	77	34	25	55	15	9	M8	8	15	False	True	False	True	False	False	False	3	YOK	TKSAST03805503	FS2A-38	Y3560001205	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D45	Tip03	70	40	57	27	25	45,5	41,5	9	7	4	M8	32	37	0	35	4-M8x35	70	70	50	50	20	15	12	9	15	14	9	20	45,3	86	13	1	9	50	64	50	47	45,5	9	13	8	M8	100	64	45	20	9	82	37	28	60	15	9	M8	8	15	False	True	False	True	False	False	False	3	YOK	TKSAST04507003	FS2A-45	Y3560001206	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D50	Tip03	75	45	62	32	25	50,5	44,5	9	12	8	M8	32	37	0	35	4-M8x35	75	75	56,5	56,5	20	15	12	9	15	14	9	20	50,3	95	13	2	9	56,6	70	56,5	54	50,5	9	13	8	M8	130	90	50	30	9	110	50	40	80	20	9	M8	8	15	False	True	False	True	False	False	False	3	YOK	TKSAST05007503	FS2A-50	Y3560001207	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D63	Tip03	85	58	69	42	30	63,5	57,5	11	12	8	M10	40	45	0	40	4-M10x40	100	100	73,5	73,5	20	18	12	11	15	12	9	20	63,2	90	16	2	11	73,6	90	73,5	67	63,45	11	16	10	M10	130	90	50	30	9	110	50	40	80	20	9	M8	8	15	False	True	False	True	False	False	False	3	YOK	TKSAST06308503	FS2A-63	Y3560001208	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D75	Tip03	100	70	84	54	30	75,5	68,5	11	12	8	M10	40	45	0	40	4-M10x40	100	100	73,5	73,5	40	18	15	11	15	15	9	20	75,3	122	16	2,6	12	73,6	90	73,5	80	75,5	11	16	10	M10	160	115	75	30	11	137	63,5	52,5	105	20	11	M10	10	18	False	True	False	True	False	False	False	3	YOK	TKSAST07510003	FS2A-75	Y3560001209	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D95	Tip03	120	90	100	70	40	95,5	88,5	13,5	12	8	M12	48	53	0	35	4-M12x45	120	120	92	92	60	20	13	13,5	15	14	9	20	95,3	150	18	2,6	13	92	110	92	100	95,5	13,5	18	12	M12	195	145	95	30	13,5	170	80	67,5	125	20	14	M12	12	20	False	True	False	True	False	False	False	3	YOK	TKSAST09512003	FS2A-95	Y3560001210	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D120	Tip03	140	115	120	95	50	120,5	113,5	13,5	12	8	M12	48	53	0	35	4-M12x45	140	140	109,5	109,5	80	20	13	13,5	18	15	11	20	120,3	175	21	2,6	14	109,6	130	109,5	125	120,5	13,5	21	12	M12	220	165	120	30	13,5	195	92,5	77,5	148	20	14	M12	12	20	False	True	False	True	False	False	False	3	YOK	TKSAST12014003	FS2A-120	Y3560001211	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D150	Tip03	190	145	165	120	60	150,5	143,5	17,5	12	8	M16	64	69	0	55	4-M16x55	190	190	138	138	100	26	13	18	18	15	11	20	150,3	220	27	2,6	17,6	139	162	138	155	150,5	17,5	27	16	M16	260	200	150	30	13,5	230	110	95	200	20	14	M12	12	20	False	True	False	True	False	False	False	3	YOK	TKSAST15019003	FS2A-150	Y3560001212	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D32	Tip04	50	50	35	35	5	32,5	28,5	7	7	4	M6	24	29	0	20	4-M6x20	70	70	50	50	20	15	12	7	15	12	9	20	32,5	60	9	0,75	6,6	35	45	35	32	27	7	9			90	54	32	20	9	72	31	22	45	15	9	M8	8	15	False	True	False	False	True	False	False	3	YOK	TKSAST03206004	FC-32	Y3560001213	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D38	Tip04	55	55	40	40	5	38,5	34,5	7	7	4	M6	24	29	0	20	4-M6x20	70	70	50	50	20	15	12	7	15	14	9	20	38,5	68	9	0,75	6,6	40	52	40	40	38,5	6,6	9	6	M6	95	59	38	20	9	77	34	25	55	15	9	M8	8	15	False	True	False	False	True	False	False	3	YOK	TKSAST03806804	FC-38	Y3560001214	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D45	Tip04	70	70	50	50	20	45,5	41,5	9	7	4	M8	32	37	0	35	4-M8x35	70	70	50	50	20	15	12	9	15	14	9	20	45,5	86	13	0,75	9	50	64	50	47	45,5	9	13	8	M8	100	64	45	20	9	82	37	28	60	15	9	M8	8	15	False	True	False	False	True	False	False	3	YOK	TKSAST04508604	FC-45	Y3560001215	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D50	Tip04	75	75	56,5	56,5	24	50,5	44,5	9	12	8	M8	32	37	0	35	4-M8x35	75	75	56,5	56,5	20	15	12	9	15	14	9	20	50,5	95	13	1,75	9	56,5	70	56,5	54	50,5	9	13	8	M8	130	90	50	30	9	110	50	40	80	20	9	M8	8	15	False	True	False	False	True	False	False	3	YOK	TKSAST05009504	FC-50	Y3560001216	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D63	Tip04	100	100	73,5	73,5	24	64	57	11	12	8	M10	40	45	0	40	4-M10x40	100	100	73,5	73,5	20	18	12	11	15	12	9	20	63,5	122	16	1,75	11	73,5	90	73,5	67	63,45	11	16	10	M10	130	90	50	30	9	110	50	40	80	20	9	M8	8	15	False	True	False	False	True	False	False	3	YOK	TKSAST06312204	FC-63	Y3560001217	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D75	Tip04	100	100	73,5	73,5	24	75,5	68,5	11	12	8	M10	40	45	0	40	4-M10x40	100	100	73,5	73,5	40	18	12	11	15	14	9	20	75,5	122	16	2,25	11	73,5	90	73,5	80	75,5	11	16	10	M10	160	115	75	30	11	137	63,5	52,5	105	20	11	M10	10	18	False	True	False	False	True	False	False	3	YOK	TKSAST07512204	FC-75	Y3560001218	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D95	Tip04	120	120	92	92	24	95,5	88,5	13,5	12	8	M12	48	53	0	50	4-M12x50	120	120	92	92	60	20	13	13,5	15	14	9	20	95,5	150	18	2,25	13,5	92	110	92	100	95,5	13,5	18	12	M12	195	145	95	30	13,5	170	80	67,5	125	20	13	M12	12	20	False	True	False	False	True	False	False	3	YOK	TKSAST09515004	FC-95	Y3560001219	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D120	Tip04	140	140	109,5	109,5	24	120,5	113,5	13,5	12	8	M12	48	53	0	50	4-M12x50	140	140	109,5	109,5	80	20	13	13,5	18	15	11	20	120,5	175	21	2,25	13,5	109,5	130	109,5	125	120,5	13,5	21	12	M12	220	165	120	30	13,5	195	92,5	77,5	148	20	13	M12	12	20	False	True	False	False	True	False	False	3	YOK	TKSAST12017504	FC-120	Y3560001220	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D150	Tip04	190	190	138	138	24	150,5	143,5	17,5	12	8	M16	64	69	0	65	4-M16x65	190	190	138	138	100	26	17	17,5	18	15	11	25	150,5	220	27	2,25	17,5	138	162	138	155	150,5	17,5	27	16	M16	260	200	150	30	13,5	230	110	95	200	20	13	M12	12	20	False	True	False	False	True	False	False	3	YOK	TKSAST15022004	FC-150	Y3560001221	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D32	Tip05	45	45	35	35	5	32,5	28,5	6,6	7	4	M6	24	29	0	20	4-M6x20	70	70	50	50	20	15	12	7	15	12	9	20	32,5	60	9	0,75	6,6	35	45	35	32,5	27	7	9			90	54	32	20	9	72	31	22	45	15	9	M8	8	15	False	True	False	False	False	True	False	3	YOK	TKSAST03204505	FCQ-32	Y3560001222	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D38	Tip05	55	55	40	40	5	38,5	34,5	6,6	7	4	M6	24	29	0	20	4-M6x20	70	70	50	50	20	15	12	7	15	14	9	20	38,5	68	9	0,75	6,6	40	52	40	38,5	38,5	6,6	9	6	M6	95	59	38	20	9	77	34	25	55	15	9	M8	8	15	False	True	False	False	False	True	False	3	YOK	TKSAST03805205	FCQ-38	Y3560001223	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D45	Tip05	70	70	50	50	20	45,5	41,5	9	7	4	M8	32	37	0	35	4-M8x35	70	70	50	50	20	15	12	9	15	14	9	20	45,5	86	13	0,75	9	50	64	50	45,5	45,5	9	13	8	M8	100	64	45	20	9	82	37	28	60	15	9	M8	8	15	False	True	False	False	False	True	False	3	YOK	TKSAST04506405	FCQ-45	Y3560001224	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D50	Tip05	75	75	56,5	56,5	24	50,5	44,5	9	12	8	M8	32	37	0	35	4-M8x35	75	75	56,5	56,5	20	15	12	9	15	14	9	20	50,5	95	13	1,75	9	56,5	70	56,5	50,5	50,5	9	13	8	M8	130	90	50	30	9	110	50	40	80	20	9	M8	8	15	False	True	False	False	False	True	False	3	YOK	TKSAST05007005	FCQ-50	Y3560001225	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D63	Tip05	100	100	73,5	73,5	24	64	57	11	12	8	M10	40	45	0	40	4-M10x40	100	100	73,5	73,5	20	18	12	11	15	12	9	20	63,2	90	16	1,775	11	73,5	90	73,5	63,45	63,45	11	16	10	M10	130	90	50	30	9	110	50	40	80	20	9	M8	8	15	False	True	False	False	False	True	False	3	YOK	TKSAST06309005	FCQ-63	Y3560001226	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D75	Tip05	100	100	73,5	73,5	24	75,5	68,5	11	12	8	M10	40	45	0	40	4-M10x40	100	100	73,5	73,5	40	18	12	11	15	14	9	20	75,5	122	16	2,25	11	73,5	90	73,5	75,5	75,5	11	16	10	M10	160	115	75	30	11	137	63,5	52,5	105	20	11	M10	10	18	False	True	False	False	False	True	False	3	YOK	TKSAST07509005	FCQ-75	Y3560001227	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D95	Tip05	120	120	92	92	24	95,5	88,5	13,5	12	8	M12	48	53	0	50	4-M12x50	120	120	92	92	60	20	13	13,5	15	14	9	20	95,5	150	18	2,25	13,5	92	110	92	95,5	95,5	13,5	18	12	M12	195	145	95	30	13,5	170	80	67,5	125	20	13	M12	12	20	False	True	False	False	False	True	False	3	YOK	TKSAST09511005	FCQ-95	Y3560001228	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D120	Tip05	140	140	109,5	109,5	24	120,5	113,5	13,5	12	8	M12	48	53	0	50	4-M12x50	140	140	109,5	109,5	80	20	13	13,5	18	15	11	20	120,5	175	21	2,25	13,5	109,5	130	109,5	120,5	120,5	13,5	21	12	M12	220	165	120	30	13,5	195	92,5	77,5	148	20	13	M12	12	20	False	True	False	False	False	True	False	3	YOK	TKSAST12013005	FCQ-120	Y3560001229	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D150	Tip05	190	190	138	138	24	150,5	143,5	17,5	12	8	M16	64	69	0	65	4-M16x65	190	190	138	138	100	26	17	17,5	18	15	11	25	150,5	220	27	2,25	17,5	138	162	138	150,5	150,5	17,5	27	16	M16	260	200	150	30	13,5	230	110	95	200	20	13	M12	12	20	False	True	False	False	False	True	False	3	YOK	TKSAST15016205	FCQ-150	Y3560001230	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D32	Tip06	50	50	35	35	5	32,5	28,5	7	7	4	M8	32	37	31	35	2-M8x35	70	70	50	50	20	15	12	7	15	12	9	20	32,5	60	9	0,75	6,6	35	45	35	32	27	7	9			90	54	32	20	9	72	31	22	45	15	9	M8	8	15	False	True	False	False	False	False	True	3	YOK	TKSAST03209006	FSA-32	Y3560001231	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D38	Tip06	55	55	40	40	5	38,5	34,5	7	7	4	M8	32	37	34	35	2-M8x35	70	70	50	50	20	15	12	7	15	14	9	20	38,5	68	9	0,75	6,6	40	52	40	40	38,5	6,6	9	6	M6	95	59	38	20	9	77	34	25	55	15	9	M8	8	15	False	True	False	False	False	False	True	3	YOK	TKSAST03809506	FSA-38	Y3560001232	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D45	Tip06	70	70	50	50	20	45,5	41,5	9	7	4	M8	32	37	37	35	2-M8x35	70	70	50	50	20	15	12	9	15	14	9	20	45,5	86	13	0,75	9	50	64	50	47	45,5	9	13	8	M8	100	64	45	20	9	82	37	28	60	15	9	M8	8	15	False	True	False	False	False	False	True	3	YOK	TKSAST04510006	FSA-45	Y3560001233	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D50	Tip06	75	75	56,5	56,5	24	50,5	44,5	9	12	8	M8	32	37	50	35	2-M8x35	75	75	56,5	56,5	20	15	12	9	15	14	9	20	50,5	95	13	1,75	9	56,5	70	56,5	54	50,5	9	13	8	M8	130	90	50	30	9	110	50	40	80	20	9	M8	8	15	False	True	False	False	False	False	True	3	YOK	TKSAST05013006	FSA-50	Y3560001234	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D75	Tip06	100	100	73,5	73,5	24	75,5	68,5	11	12	8	M10	40	45	63,5	45	2-M10x50	100	100	73,5	73,5	40	18	12	11	15	14	9	20	75,5	122	16	2,25	11	73,5	90	73,5	80	75,5	11	16	10	M10	160	115	75	30	11	137	63,5	52,5	105	20	11	M10	10	18	False	True	False	False	False	False	True	3	YOK	TKSAST07516006	FSA-75	Y3560001235	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D95	Tip06	120	120	92	92	24	95,5	88,5	13,5	12	8	M12	48	53	80	50	2-M12x50	120	120	92	92	60	20	13	13,5	15	14	9	20	95,5	150	18	2,25	13,5	92	110	92	100	95,5	13,5	18	12	M12	195	145	95	30	13,5	170	80	67,5	125	20	13	M12	12	20	False	True	False	False	False	False	True	3	YOK	TKSAST09519506	FSA-95	Y3560001236	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D120	Tip06	140	140	109,5	109,5	24	120,5	113,5	13,5	12	8	M12	48	53	92,5	50	2-M12x50	140	140	109,5	109,5	80	20	13	13,5	18	15	11	20	120,5	175	21	2,25	13,5	109,5	130	109,5	125	120,5	13,5	21	12	M12	220	165	120	30	13,5	195	92,5	77,5	148	20	13	M12	12	20	False	True	False	False	False	False	True	3	YOK	TKSAST12022006	FSA-120	Y3560001237	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
AzotSilindiriTutucu		A	Baskı Elemanları	D150	Tip06	190	190	138	138	24	150,5	143,5	17,5	12	8	M12	48	53	110	50	2-M12x50	190	190	138	138	100	26	17	17,5	18	15	11	25	150,5	220	27	2,25	17,5	138	162	138	155	150,5	17,5	27	16	M16	260	200	150	30	13,5	230	110	95	200	20	13	M12	12	20	False	True	False	False	False	False	True	3	YOK	TKSAST15026006	FSA-150	Y3560001238	AzotSilindiriTutucu	GasSpringMount	FlangeDiFissaggio	Rev03	01/01/2020
																																																																														
																																																																														
\.


--
-- Data for Name: ISEDA004AskiCivatasi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA004AskiCivatasi" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "A", "F(mm)", "D5(mm)", "D2(mm)", "D3(mm)", "SP(mm)", "L(mm)", "L1(mm)", "L2(mm)", "L3(mm)", "H(mm)", "D(mm)", "S(mm)", "D1(mm)", "G(mm)", "GS", "Mi", "M", "Md(mm)", "ML(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
AskiCivatasi		N	Genel Kalıp Elemanları	M16X250	250	30	4	22	9	2,5	35	50	20	20	20	65	20	50	19	E0	M16	M8	24	30	2	YOK	TKSACVM16	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M16X300	300	30	4	22	9	2,5	35	50	20	20	20	65	20	50	19	E0	M16	M8	24	30	2	YOK	TKSACVM16	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M16X350	350	30	4	22	9	2,5	35	50	20	20	20	65	20	50	19	E0	M16	M8	24	30	2	YOK	TKSACVM16	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M16X400	400	30	4	22	9	2,5	35	50	20	20	20	65	20	50	19	E0	M16	M8	24	30	2	YOK	TKSACVM16	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M16X450	450	30	4	22	9	2,5	35	50	20	20	20	65	20	50	19	E0	M16	M8	24	30	2	YOK	TKSACVM16	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M16X500	500	30	4	22	9	2,5	35	50	20	20	20	65	20	50	19	E0	M16	M8	24	30	2	YOK	TKSACVM16	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M20X250	250	35	4	25	9	2	40	50	20	20	20	82	20	63	22	E0	M20	M8	24	30	2	YOK	TKSACVM20	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M20X300	300	35	4	25	9	2	40	50	20	20	20	82	20	63	22	E0	M20	M8	24	30	2	YOK	TKSACVM20	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M20X350	350	35	4	25	9	2	40	50	20	20	20	82	20	63	22	E0	M20	M8	24	30	2	YOK	TKSACVM20	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M20X400	400	35	4	25	9	2	40	50	20	20	20	82	20	63	22	E0	M20	M8	24	30	2	YOK	TKSACVM20	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M20X450	450	35	4	25	9	2	40	50	20	20	20	82	20	63	22	E0	M20	M8	24	30	2	YOK	TKSACVM20	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M20X500	500	35	4	25	9	2	40	50	20	20	20	82	20	63	22	E0	M20	M8	24	30	2	YOK	TKSACVM20	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M24X250	250	42	5	30	9	2,5	45	50	20	20	20	105	20	80	27	E0	M24	M8	24	30	2	YOK	TKSACVM24	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M24X300	300	42	5	30	9	2,5	45	50	20	20	20	105	20	80	27	E0	M24	M8	24	30	2	YOK	TKSACVM24	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M24X350	350	42	5	30	9	2,5	45	50	20	20	20	105	20	80	27	E0	M24	M8	24	30	2	YOK	TKSACVM24	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M24X400	400	42	5	30	9	2,5	45	50	20	20	20	105	20	80	27	E0	M24	M8	24	30	2	YOK	TKSACVM24	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M24X450	450	42	5	30	9	2,5	45	50	20	20	20	105	20	80	27	E0	M24	M8	24	30	2	YOK	TKSACVM24	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M24X500	500	42	5	30	9	2,5	45	50	20	20	20	105	20	80	27	E0	M24	M8	24	30	2	YOK	TKSACVM24	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M30X250	250	50	6,3	38	9	3,5	50	63	28	26	25	130	20	100	33	E0	M30	M8	24	30	2	YOK	TKSACVM30	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M30X300	300	50	6,3	38	9	3,5	50	63	28	26	25	130	20	100	33	E0	M30	M8	24	30	2	YOK	TKSACVM30	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M30X350	350	50	6,3	38	9	3,5	50	63	28	26	25	130	20	100	33	E0	M30	M8	24	30	2	YOK	TKSACVM30	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M30X400	400	50	6,3	38	9	3,5	50	63	28	26	25	130	20	100	33	E0	M30	M8	24	30	2	YOK	TKSACVM30	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M30X450	450	50	6,3	38	9	3,5	50	63	28	26	25	130	20	100	33	E0	M30	M8	24	30	2	YOK	TKSACVM30	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
AskiCivatasi		N	Genel Kalıp Elemanları	M30X500	500	50	6,3	38	9	3,5	50	63	28	26	25	130	20	100	33	E0	M30	M8	24	30	2	YOK	TKSACVM30	YOK	AskiCivatasi	PadRetainer	TiranteDiLavoroESicurezza	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA005KolonBurcTutucu; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA005KolonBurcTutucu" ("ParcaAdi", "Merkezleme Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "A(mm)", "B(mm)", "C(mm)", "D1(mm)", "E(mm)", "Dx(mm)", "D2(mm)", "G(mm)", "L(mm)", "M", "Md(mm)", "Ml(mm)", "H1(mm)", "H2(mm)", "T(mm)", "Olcu", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
KolonBurcTutucu		N	Merkezleme Elemanları	32x32_Tip01	32	32	11	11,5	6	11	17,5	11,5	16	M10	20	27	16	10	0	32x32x11.5	1-M8x30	3	YOK	TKSKBT16006001	Y3560001299	KolonBurcTutucu	PadBushingClamps	Ritegni	Rev03	01/01/2020
KolonBurcTutucu		N	Merkezleme Elemanları	24.6x18.9_Tip02	18,9	24,6	13	9	6	11,1	17,5	11,5	13	M8	20	27	0	5	2,5	24.6x18.9x13	1-M8x20	3	YOK	TKSKBT13006002	Y3560001300	KolonBurcTutucu	PadBushingClamps	Ritegni	Rev03	01/01/2020
KolonBurcTutucu		N	Merkezleme Elemanları	27.9x23.5_Tip02	23,5	27,9	15,5	11	6	11	17,5	11,5	15,5	M10	20	27	0	5	2,5	27.9x23.5x15.5	1-M10x20	3	RIT_152327	TKSKBT15506002	Y3560001301	KolonBurcTutucu	PadBushingClamps	Ritegni	Rev03	01/01/2020
KolonBurcTutucu		N	Merkezleme Elemanları	20x20_Tip03	20	20	7,5	7	6,3	7,5	11	7	10	M6	20	27	20	5	0	20x20x10	1-M8x30	3	RIT_202010	TKSKBT10006303	Y3560001302	KolonBurcTutucu	PadBushingClamps	Ritegni	Rev03	01/01/2020
KolonBurcTutucu		N	Merkezleme Elemanları	32x32_Tip03	32	32	11	11,5	10	11	17,5	11,5	16	M10	20	27	20	10	0	32x32x16	1-M10x30	3	RIT_323216	TKSKBT16010003	Y3560001303	KolonBurcTutucu	PadBushingClamps	Ritegni	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA006Yayliitici; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA006Yayliitici" ("ParcaAdi", "Cikaricilar-iticiler", "Malzeme_Sinifi", "Grup", "Tip", "D(mm)", "D1(mm)", "D4(mm)", "D5(mm)", "L1(mm)", "L3(mm)", "S(mm)", "M", "Kritiklik_No", "NOT", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
Yayliitici		N	Cikaricilar-iticiler	M12-10	12	5,5	9,5	12	45	35	10	M12	1	Max Kurs 10	ESP_H_M1210	TKSYYC01204501	Y3560001304	Yayliitici	CoilSpringPlunger	EspulsoreAMolla	Rev03	01/01/2020
Yayliitici		N	Cikaricilar-iticiler	M16-15	16	8	13,4	16	60	35	15	M16	1	Max Kurs 15	ESP_H_M1615	TKSYYC01606002	Y3560001305	Yayliitici	CoilSpringPlunger	EspulsoreAMolla	Rev03	01/01/2020
Yayliitici		N	Cikaricilar-iticiler	M16-30	16	8	13,4	16	125	35	30	M16	1	Max Kurs 30	ESP_H_M1630	TKSYYC01612503	Y3560001306	Yayliitici	CoilSpringPlunger	EspulsoreAMolla	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA008DisStoper; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA008DisStoper" ("ParcaAdi", "Stoplama Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "D1(mm)", "D2(mm)", "D3(mm)", "H1(mm)", "H2(mm)", "M", "Md(mm)", "Ml(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
DisStoper		N	Stoplama Elemanları	50x50	50	20	13	50	25	M12	30	35	3	DTS_050050	TKSDST05005001	Y3560001308	DisStoper	StopBlockDieSpacer	DistanzialeStampoChiuso	Rev03	01/01/2020
DisStoper		N	Stoplama Elemanları	90x50	90	20	13	50	30	M12	30	35	3	DTS_090050	TKSDST09005002	Y3560001309	DisStoper	StopBlockDieSpacer	DistanzialeStampoChiuso	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA009LKizak; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA009LKizak" ("ParcaAdi", "Merkezleme Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "G(mm)", "L(mm)", "B2(mm)", "H(mm)", "D(mm)", "G1(mm)", "L1(mm)", "D1(mm)", "E1(mm)", "E2(mm)", "E3(mm)", "E4(mm)", "R(mm)", "A(mm)", "D2(mm)", "M", "Baglanti", "Md(mm)", "Ml(mm)", "CvtAdet", "CD(mm)", "CB(mm)", "Hvs1x(mm)", "Hvs1y(mm)", "Hvs2x(mm)", "Hvs2y(mm)", "Hvs3x(mm)", "Hvs3y(mm)", "Hvs4x(mm)", "Hvs4y(mm)", "Hvs5x(mm)", "Hvs5y(mm)", "Hvs6x(mm)", "Hvs6y(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
LKizak		N	Merkezleme Elemanları	55x100	55	100	37	55,5	39,5	20	27,5	13,5	72,5	72,5	72,5	72,5	2	10	10	M12	2-M12x80	30	35	2	17	10	15,5	50	0	0	10	15	80	35	15,5	50	80	35	2	YOK	TKSLBK05510001	Y3560001310	LKizak	CamKeeperBlocks	GuidaAngolare	Rev03	01/01/2020
LKizak		N	Merkezleme Elemanları	55x160	55	160	37	55,5	39,5	20	27,5	13,5	132,5	132,5	132,5	132,5	2	10	10	M12	2-M12x80	30	35	2	17	10	10	45	20	115	10	15	140	35	20	115	140	35	2	YOK	TKSLBK05516002	Y3560001311	LKizak	CamKeeperBlocks	GuidaAngolare	Rev03	01/01/2020
LKizak		N	Merkezleme Elemanları	70x160	70	160	50	75,5	55,5	30	35	17,5	125	125	125	125	2	12,5	12	M16	2-M16x100	30	35	2	17	10	32,5	20	10	105	10	15	140	55	10	105	140	55	2	YOK	TKSLBK07016003	Y3560001312	LKizak	CamKeeperBlocks	GuidaAngolare	Rev03	01/01/2020
LKizak		N	Merkezleme Elemanları	70x200	70	200	50	75,5	55,5	30	35	17,5	165	165	165	165	2	12,5	12	M16	2-M16x100	30	35	2	17	10	32,5	20	10	145	10	15	180	55	10	145	180	55	2	YOK	TKSLBK07020004	Y3560001313	LKizak	CamKeeperBlocks	GuidaAngolare	Rev03	01/01/2020
LKizak		N	Merkezleme Elemanları	70x250	70	250	50	75,5	55,5	30	35	17,5	125	215	125	125	2	12,5	12	M16	3-M16x100	30	35	3	17	10	32,5	20	10	195	10	15	230	55	10	195	230	55	2	YOK	TKSLBK07025005	Y3560001314	LKizak	CamKeeperBlocks	GuidaAngolare	Rev03	01/01/2020
LKizak		N	Merkezleme Elemanları	70x400	70	400	50	75,5	55,5	30	35	17,5	125	200	275	365	2	12,5	12	M16	5-M16x100	30	35	5	17	10	32,5	20	10	345	10	15	380	55	22	180	195	35	2	YOK	TKSLBK07040006	Y3560001315	LKizak	CamKeeperBlocks	GuidaAngolare	Rev03	01/01/2020
LKizak		N	Merkezleme Elemanları	85x160	85	160	63	90,5	65,5	38	42,5	22	117,5	117,5	117,5	117,5	2	15	16	M20	2-M20x120	35	40	2	17	10	42,5	20	15	95	10	15	140	70	15	95	140	70	2	YOK	TKSLBK08516007	Y3560001316	LKizak	CamKeeperBlocks	GuidaAngolare	Rev03	01/01/2020
LKizak		N	Merkezleme Elemanları	85x200	85	200	63	90,5	65,5	38	42,5	22	157,5	157,5	157,5	157,5	2	15	16	M20	2-M20x120	35	40	2	17	10	42,5	20	15	135	10	15	180	70	15	135	180	70	2	YOK	TKSLBK08520008	Y3560001317	LKizak	CamKeeperBlocks	GuidaAngolare	Rev03	01/01/2020
LKizak		N	Merkezleme Elemanları	85x250	85	250	63	90,5	65,5	38	42,5	22	125	207,5	125	125	2	15	16	M20	3-M20x120	35	40	3	17	10	42,5	20	15	185	10	15	230	70	15	185	230	70	2	YOK	TKSLBK08525009	Y3560001318	LKizak	CamKeeperBlocks	GuidaAngolare	Rev03	01/01/2020
LKizak		N	Merkezleme Elemanları	85x400	85	400	63	90,5	65,5	38	42,5	22	125	200	275	357,5	2	15	16	M20	5-M20x120	35	40	5	17	10	42,5	20	15	335	10	15	380	70	15	335	195	45	2	YOK	TKSLBK08540010	Y3560001319	LKizak	CamKeeperBlocks	GuidaAngolare	Rev03	01/01/2020
																																															
																																															
																																															
																																															
																																															
																																															
																																															
\.


--
-- Data for Name: ISEDA010Kamstoperi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA010Kamstoperi" ("ParcaAdi", "Kam Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "L1(mm)", "L2(mm)", "L5(mm)", "D1(mm)", "L3(mm)", "L6(mm)", "D2(mm)", "L7(mm)", "L4(mm)", "C1(mm)", "C2(mm)", "H1(mm)", "C3(mm)", "D3(mm)", "D(mm)", "F(mm)", "M", "Md(mm)", "Ml(mm)", "Yazi(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
Kamstoperi		N	Kam Elemanları	Tip01_80x60	80	60	40	35	40	15	30	20	48	13	13	1	5	34	27	5	M10	40	45	40	2-M10x70	2	YOK	TKSKST08006001	Y3560001320	Kamstoperi	CamShockAbsorbingStop	ArrestoAmmortizzato	Rev03	01/01/2020
Kamstoperi		N	Kam Elemanları	Tip02_70x60	70	60	40	35	40	15	30	20	50	13	13	1	5	34	27	5	M12	48	53	35	2-M12x85	2	YOK	TKSKST07006002	Y3560001321	Kamstoperi	CamShockAbsorbingStop	ArrestoAmmortizzato	Rev03	01/01/2020
Kamstoperi		N	Kam Elemanları	Tip02_80x70	80	70	40	45	45	15	40	20	60	13	13	1	5	44	36	5	M12	48	53	40	2-M12x95	2	YOK	TKSKST08007002	Y3560001322	Kamstoperi	CamShockAbsorbingStop	ArrestoAmmortizzato	Rev03	01/01/2020
Kamstoperi		N	Kam Elemanları	Tip03_50x45	50	45	25	35	40	15	30	12,5	25	18	11	15	5	34	27	5	M10	40	45	25	2-M10x50	2	YOK	TKSKST05004503	Y3560001326	Kamstoperi	CamShockAbsorbingStop	ArrestoAmmortizzato	Rev03	01/01/2020
Kamstoperi		N	Kam Elemanları	Tip03_50x65	50	65	25	45	45	15	40	12,5	25	18	11	35	5	44	36	5	M10	40	45	25	2-M10x50	2	YOK	TKSKST05006503	Y3560001325	Kamstoperi	CamShockAbsorbingStop	ArrestoAmmortizzato	Rev03	01/01/2020
Kamstoperi		N	Kam Elemanları	Tip03_75x45	75	45	25	35	40	15	30	12,5	50	18	11	15	5	34	27	5	M10	40	45	37,5	2-M10x50	2	YOK	TKSKST07504503	Y3560001324	Kamstoperi	CamShockAbsorbingStop	ArrestoAmmortizzato	Rev03	01/01/2020
Kamstoperi		N	Kam Elemanları	Tip03_75x65	75	65	25	45	45	15	40	12,5	50	18	11	35	5	44	36	5	M10	40	45	37,5	2-M10x50	2	YOK	TKSKST07506503	Y3560001323	Kamstoperi	CamShockAbsorbingStop	ArrestoAmmortizzato	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA011AzotSilindiriKarsiligi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA011AzotSilindiriKarsiligi" ("ParcaAdi", "Baskı Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "A(mm)", "B(mm)", "C(mm)", "D(mm)", "D1(mm)", "E(mm)", "E2(mm)", "T(mm)", "M", "Md(mm)", "Ml(mm)", "Dsc(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "TOFASKARE", "TOFASDIKDORTGEN", "Depo_KoduKARE", "Depo_KoduDIKDORTGEN", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
AzotSilindiriKarsiligi		N	Baskı Elemanları	50x25	50	25	12	7	11	32	8	7	M6	16	22	15	2-M6x20	3	YOK	OZEL	YOK	TKSASK05002501	YOK	Y3560001327	AzotSilindiriKarsiligi	NitrogenStrikerPlate	CilindiriAzotoTasello	Rev03	01/01/2020
AzotSilindiriKarsiligi		N	Baskı Elemanları	50x30	50	30	12	7	11	40	14	7	M6	12	17	20	2-M6x20	3	YOK	YOK	YOK	TKSASK05003002	YOK	Y3560001328	AzotSilindiriKarsiligi	NitrogenStrikerPlate	CilindiriAzotoTasello	Rev03	01/01/2020
AzotSilindiriKarsiligi		N	Baskı Elemanları	70x35	70	35	15	9	15	48	14	9	M8	20	27	25	2-M8x20	3	YOK	YOK	YOK	TKSASK07003503	YOK	Y3560001329	AzotSilindiriKarsiligi	NitrogenStrikerPlate	CilindiriAzotoTasello	Rev03	01/01/2020
AzotSilindiriKarsiligi		N	Baskı Elemanları	75x50	75	50	15	9	15	56	30	9	M8	20	27	36	2-M8x20	3	YOK	YOK	YOK	TKSASK07505004	YOK	Y3560001330	AzotSilindiriKarsiligi	NitrogenStrikerPlate	CilindiriAzotoTasello	Rev03	01/01/2020
AzotSilindiriKarsiligi		N	Baskı Elemanları	85x60	85	60	15	9	15	56	40	9	M8	16	22	50	2-M8x20	3	YOK	YOK	YOK	TKSASK08506005	YOK	Y3560001331	AzotSilindiriKarsiligi	NitrogenStrikerPlate	CilindiriAzotoTasello	Rev03	01/01/2020
AzotSilindiriKarsiligi		N	Baskı Elemanları	100x80	100	80	20	11	18	72	56	11	M10	20	27	65	2-M10x25	3	YOK	YOK	YOK	TKSASK10008006	YOK	Y3560001332	AzotSilindiriKarsiligi	NitrogenStrikerPlate	CilindiriAzotoTasello	Rev03	01/01/2020
AzotSilindiriKarsiligi		N	Baskı Elemanları	110x100	110	100	20	11	18	85	75	11	M10	16	22	95	2-M10x25	3	YOK	YOK	YOK	TKSASK11010007	YOK	Y3560001333	AzotSilindiriKarsiligi	NitrogenStrikerPlate	CilindiriAzotoTasello	Rev03	01/01/2020
AzotSilindiriKarsiligi		N	Baskı Elemanları	40x40	40	40	15	9	15	21	21	10	M8	20	27	20	2-M8x20	3	YOK	YOK	TKSASK04004008	YOK	Y3560001334	YOK	AzotSilindiriKarsiligi	NitrogenStrikerPlate	CilindiriAzotoTasello	Rev03	01/01/2020
AzotSilindiriKarsiligi		N	Baskı Elemanları	70x70	70	70	15	9	15	50	50	9	M8	20	27	60	2-M8x20	3	YOK	YOK	TKSASK07007009	YOK	Y3560001335	YOK	AzotSilindiriKarsiligi	NitrogenStrikerPlate	CilindiriAzotoTasello	Rev03	01/01/2020
AzotSilindiriKarsiligi		N	Baskı Elemanları	90x90	90	90	15	9	15	70	70	9	M8	20	27	80	2-M8x20	3	YOK	YOK	TKSASK09009010	YOK	Y3560001336	YOK	AzotSilindiriKarsiligi	NitrogenStrikerPlate	CilindiriAzotoTasello	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA012KamKapaklari; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA012KamKapaklari" ("ParcaAdi", "Kam Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "A(mm)", "B(mm)", "S(mm)", "B1(mm)", "A1(mm)", "B2(mm)", "A2(mm)", "B3(mm)", "A3(mm)", "B4(mm)", "A4(mm)", "B5(mm)", "A5(mm)", "D1(mm)", "M", "Md(mm)", "Ml(mm)", "DLK", "Lc(mm)", "Sy(mm)", "Baglanti", "TR", "ENG", "IT", "Kritiklik_No", "STQ_NORMU", "TOFAS", "TOFASBRONZGRAFITLI", "TOFASCELIK", "Depo_KoduBRONZGRAFITLI", "Depo_KoduTOFASCELIK", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
KamKapaklari		N	Kam Elemanları	35x160	160	35	10	20	45	20	115	20	45	20	45	20	45	11	M10	30	35	2	30	10	2-M10x30	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	OZEL	TKSKGB03516001	TKSKKC03516021	Y3560001337	Y3560001357	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	35x200	200	35	10	20	45	20	155	20	45	20	45	20	45	11	M10	30	35	2	30	10	2-M10x30	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB03520002	TKSKKC03520022	Y3560001338	Y3560001358	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	35x250	250	35	10	20	45	20	125	20	205	20	45	20	45	11	M10	30	35	3	30	10	3-M10x30	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB03525003	TKSKKC03525023	Y3560001339	Y3560001359	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	45x160	160	45	15	30	45	30	115	30	45	30	45	30	45	13,5	M12	36	41	2	40	15	2-M12x40	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB04516004	TKSKKC04516024	Y3560001340	Y3560001360	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	45x200	200	45	15	30	45	30	155	30	45	30	45	30	45	13,5	M12	36	41	2	40	15	2-M12x40	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB04520005	TKSKKC04520025	Y3560001341	Y3560001361	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	45x250	250	45	15	30	45	30	125	30	205	30	45	30	45	13,5	M12	36	41	3	40	15	2-M12x40	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB04525006	TKSKKC04525026	Y3560001342	Y3560001362	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	55x160	160	55	15	35	45	35	115	35	45	35	45	35	45	17,5	M16	48	53	2	50	20	2-M16x50	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB05516007	TKSKKC05516027	Y3560001343	Y3560001363	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	55x200	200	55	15	35	45	35	155	35	45	35	45	35	45	17,5	M16	48	53	2	50	20	2-M16x50	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB05520008	TKSKKC05520028	Y3560001344	Y3560001364	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	55x250	250	55	15	35	45	35	125	35	205	35	45	35	45	17,5	M16	48	53	3	50	20	3-M16x50	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB05525009	TKSKKC05525029	Y3560001345	Y3560001365	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	75x160	160	75	25	40	45	40	115	40	45	40	45	40	45	17,5	M16	48	53	2	60	25	2-M16x60	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB07516010	TKSKKC07516030	Y3560001346	Y3560001366	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	75x200	200	75	25	40	45	40	155	40	45	40	45	40	45	17,5	M16	48	53	2	60	25	2-M16x60	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB07520011	TKSKKC07520031	Y3560001347	Y3560001367	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	75x250	250	75	25	40	45	40	125	40	205	40	45	40	45	17,5	M16	48	53	3	60	25	2-M16x60	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB07525012	TKSKKC07525032	Y3560001348	Y3560001368	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	100x160_H25	160	100	25	60	45	60	115	60	45	60	45	60	45	17,5	M16	48	53	2	60	30	2-M16x60	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB10016013	TKSKKC10016033	Y3560001349	Y3560001369	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	100x160_H30	160	100	30	60	45	60	115	60	45	60	45	60	45	22	M20	60	65	2	70	30	2-M20x70	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB10016017	TKSKKC10016037	Y3560001353	Y3560001373	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	100x200_H25	200	100	25	60	45	60	155	60	45	60	45	60	45	17,5	M16	48	53	2	60	30	2-M16x60	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB10020014	TKSKKC10020034	Y3560001350	Y3560001370	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	100x200_H30	200	100	30	60	45	60	155	60	45	60	45	60	45	22	M20	60	65	2	70	30	2-M20x70	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB10020018	TKSKKC10020038	Y3560001354	Y3560001374	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	100x250_H25	250	100	25	60	45	60	125	60	205	60	45	60	45	17,5	M16	48	53	3	60	30	3-M16x60	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB10025015	TKSKKC10025035	Y3560001351	Y3560001371	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	100x250_H30	250	100	30	60	45	60	125	60	205	55	45	55	45	22	M20	60	65	3	70	30	3-M20x70	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB10025019	TKSKKC10025039	Y3560001355	Y3560001375	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	100x400_H25	400	100	25	60	45	60	125	60	200	60	275	60	355	17,5	M16	48	53	5	60	30	5-M16x60	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB10040016	TKSKKC10040036	Y3560001352	Y3560001372	Rev03	01/01/2020
KamKapaklari		N	Kam Elemanları	100x400_H30	400	100	30	60	45	60	125	60	200	60	275	60	355	22	M20	60	65	5	70	30	5-M20x70	KamKapaklari	UpperCamGibPlate	PiastraDiSlitte	2	YOK	YOK	TKSKGB10040020	TKSKKC10040040	Y3560001356	Y3560001376	Rev03	01/01/2020
																																					
																																					
\.


--
-- Data for Name: ISEDA013PnomatikSilindir; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA013PnomatikSilindir" ("ParcaAdi", "Cikaricilar-iticiler", "Malzeme_Sinifi", "Grup", "Tip", "Kurs", "KURSA(mm)", "BOY(mm)", "BOY160_200(mm)", "UST_TABAN(mm)", "ALT_TABAN(mm)", "PISTON_BASLAMA_PLANE(mm)", "SOMUN_BASLAMA_PLANE(mm)", "PISTON_DIP_GENISLIK(mm)", "PISTON_DIP_CAP(mm)", "PISTON_GOVDE_CAP(mm)", "PISTON_GOVDE_UZUNLUK(mm)", "PISTON_SAP_UZUNLUK(mm)", "PISTON_SAP_CAP(mm)", "UST_PAD_1(mm)", "UST_PAD_CAP_1(mm)", "UST_PAD_2(mm)", "ALT_PAD(mm)", "SOMUN_GENISLIK(mm)", "SOMUN_PAD(mm)", "DELIK_YZ(mm)", "DELIK_XY(mm)", "DELIK_CAP(mm)", "DELIK_DERINLIK(mm)", "EN1(mm)", "EN2(mm)", "32lik", "40lik", "50lik", "63luk", "80lik", "100luk", "125lik", "160lik", "200luk", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "FESTO", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
PnomatikSilindir		H	Cikaricilar-iticiler	32	10	10	104	104	25,1	25,1	47	30	6	32	12	77	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032010	YOK	163318_DNC-32-10-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	15	15	109	109	25,1	25,1	47	30	6	32	12	82	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032015	YOK	163318_DNC-32-15-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	20	20	114	114	25,1	25,1	47	30	6	32	12	87	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032020	YOK	163318_DNC-32-20-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	25	25	119	119	25,1	25,1	47	30	6	32	12	92	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032025	YOK	163319_DNC-32-25-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	30	30	124	124	25,1	25,1	47	30	6	32	12	97	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032030	YOK	163318_DNC-32-30-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	35	35	129	129	25,1	25,1	47	30	6	32	12	102	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032035	YOK	163318_DNC-32-35-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	40	40	134	134	25,1	25,1	47	30	6	32	12	107	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032040	YOK	163320_DNC-32-40-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	45	45	139	139	25,1	25,1	47	30	6	32	12	112	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032045	YOK	163318_DNC-32-45-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	50	50	144	144	25,1	25,1	47	30	6	32	12	117	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032050	YOK	163321_DNC-32-50-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	55	55	149	149	25,1	25,1	47	30	6	32	12	122	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032055	YOK	163318_DNC-32-55-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	60	60	154	154	25,1	25,1	47	30	6	32	12	127	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032060	YOK	163318_DNC-32-60-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	65	65	159	159	25,1	25,1	47	30	6	32	12	132	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032065	YOK	163318_DNC-32-65-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	70	70	164	164	25,1	25,1	47	30	6	32	12	137	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032070	YOK	163318_DNC-32-70-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	75	75	169	169	25,1	25,1	47	30	6	32	12	142	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032075	YOK	163318_DNC-32-75-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	80	80	174	174	25,1	25,1	47	30	6	32	12	147	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032080	YOK	163322_DNC-32-80-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	85	85	179	179	25,1	25,1	47	30	6	32	12	152	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032085	YOK	163318_DNC-32-85-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	90	90	184	184	25,1	25,1	47	30	6	32	12	157	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032090	YOK	163318_DNC-32-90-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	95	95	189	189	25,1	25,1	47	30	6	32	12	162	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032095	YOK	163318_DNC-32-95-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	100	100	194	194	25,1	25,1	47	30	6	32	12	167	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032100	YOK	163323_DNC-32-100-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	105	105	199	199	25,1	25,1	47	30	6	32	12	172	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032105	YOK	163318_DNC-32-105-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	110	110	204	204	25,1	25,1	47	30	6	32	12	177	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032110	YOK	163318_DNC-32-110-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	115	115	209	209	25,1	25,1	47	30	6	32	12	182	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032115	YOK	163318_DNC-32-115-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	120	120	214	214	25,1	25,1	47	30	6	32	12	187	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032120	YOK	163318_DNC-32-120-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	125	125	219	219	25,1	25,1	47	30	6	32	12	192	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032125	YOK	163324_DNC-32-125-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	130	130	224	224	25,1	25,1	47	30	6	32	12	197	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032130	YOK	163318_DNC-32-130-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	135	135	229	229	25,1	25,1	47	30	6	32	12	202	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032135	YOK	163318_DNC-32-135-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	140	140	234	234	25,1	25,1	47	30	6	32	12	207	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032140	YOK	163318_DNC-32-140-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	145	145	239	239	25,1	25,1	47	30	6	32	12	212	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032145	YOK	163318_DNC-32-145-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	150	150	244	244	25,1	25,1	47	30	6	32	12	217	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032150	YOK	163318_DNC-32-150-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	155	155	249	249	25,1	25,1	47	30	6	32	12	222	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032155	YOK	163318_DNC-32-155-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	160	160	254	254	25,1	25,1	47	30	6	32	12	227	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032160	YOK	163325_DNC-32-160-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	165	165	259	259	25,1	25,1	47	30	6	32	12	232	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032165	YOK	163318_DNC-32-165-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	170	170	264	264	25,1	25,1	47	30	6	32	12	237	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032170	YOK	163318_DNC-32-170-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	175	175	269	269	25,1	25,1	47	30	6	32	12	242	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032175	YOK	163318_DNC-32-175-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	180	180	274	274	25,1	25,1	47	30	6	32	12	247	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032180	YOK	163318_DNC-32-180-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	185	185	279	279	25,1	25,1	47	30	6	32	12	252	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032185	YOK	163318_DNC-32-185-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	190	190	284	284	25,1	25,1	47	30	6	32	12	257	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032190	YOK	163318_DNC-32-190-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	195	195	289	289	25,1	25,1	47	30	6	32	12	262	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032195	YOK	163318_DNC-32-195-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	200	200	294	294	25,1	25,1	47	30	6	32	12	267	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032200	YOK	163326_DNC-32-200-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	205	205	299	299	25,1	25,1	47	30	6	32	12	272	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032205	YOK	163318_DNC-32-205-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	210	210	304	304	25,1	25,1	47	30	6	32	12	277	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032210	YOK	163318_DNC-32-210-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	215	215	309	309	25,1	25,1	47	30	6	32	12	282	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032215	YOK	163318_DNC-32-215-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	220	220	314	314	25,1	25,1	47	30	6	32	12	287	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032220	YOK	163318_DNC-32-220-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	225	225	319	319	25,1	25,1	47	30	6	32	12	292	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032225	YOK	163318_DNC-32-225-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	230	230	324	324	25,1	25,1	47	30	6	32	12	297	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032230	YOK	163318_DNC-32-230-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	235	235	329	329	25,1	25,1	47	30	6	32	12	302	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032235	YOK	163318_DNC-32-235-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	240	240	334	334	25,1	25,1	47	30	6	32	12	307	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032240	YOK	163318_DNC-32-240-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	245	245	339	339	25,1	25,1	47	30	6	32	12	312	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032245	YOK	163318_DNC-32-245-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	250	250	344	344	25,1	25,1	47	30	6	32	12	317	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032250	YOK	163327_DNC-32-250-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	255	255	349	349	25,1	25,1	47	30	6	32	12	322	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032255	YOK	163318_DNC-32-255-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	260	260	354	354	25,1	25,1	47	30	6	32	12	327	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032260	YOK	163318_DNC-32-260-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	265	265	359	359	25,1	25,1	47	30	6	32	12	332	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032265	YOK	163318_DNC-32-265-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	270	270	364	364	25,1	25,1	47	30	6	32	12	337	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032270	YOK	163318_DNC-32-270-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	275	275	369	369	25,1	25,1	47	30	6	32	12	342	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032275	YOK	163318_DNC-32-275-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	280	280	374	374	25,1	25,1	47	30	6	32	12	347	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032280	YOK	163318_DNC-32-280-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	285	285	379	379	25,1	25,1	47	30	6	32	12	352	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032285	YOK	163318_DNC-32-285-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	290	290	384	384	25,1	25,1	47	30	6	32	12	357	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032290	YOK	163318_DNC-32-290-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	295	295	389	389	25,1	25,1	47	30	6	32	12	362	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032295	YOK	163318_DNC-32-295-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	300	300	394	394	25,1	25,1	47	30	6	32	12	367	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032300	YOK	163318_DNC-32-300-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	320	320	414	414	25,1	25,1	47	30	6	32	12	387	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032320	YOK	163328_DNC-32-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	350	350	444	444	25,1	25,1	47	30	6	32	12	417	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032350	YOK	163328_DNC-32-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	400	400	494	494	25,1	25,1	47	30	6	32	12	467	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032400	YOK	163329_DNC-32-400-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	450	450	544	544	25,1	25,1	47	30	6	32	12	517	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032450	YOK	163329_DNC-32-400-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	32	500	500	594	594	25,1	25,1	47	30	6	32	12	567	22	10	10	30	7	4	17	5	5,2	15,6	8,566	11,015	45,5	75,5	True	False	False	False	False	False	False	False	False	3	YOK	TKSPNS032500	YOK	163330_DNC-32-500-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	10	10	115	115	29,6	29,6	52,5	36	8	40	16	84,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040010	YOK	163350_DNC-40-10-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	15	15	120	120	29,6	29,6	52,5	36	8	40	16	89,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040015	YOK	163350_DNC-40-15-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	20	20	125	125	29,6	29,6	52,5	36	8	40	16	94,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040020	YOK	163350_DNC-40-20-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	25	25	130	130	29,6	29,6	52,5	36	8	40	16	99,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040025	YOK	163351_DNC-40-25-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	30	30	135	135	29,6	29,6	52,5	36	8	40	16	104,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040030	YOK	163350_DNC-40-30-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	35	35	140	140	29,6	29,6	52,5	36	8	40	16	109,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040035	YOK	163350_DNC-40-35-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	40	40	145	145	29,6	29,6	52,5	36	8	40	16	114,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040040	YOK	163352_DNC-40-40-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	45	45	150	150	29,6	29,6	52,5	36	8	40	16	119,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040045	YOK	163350_DNC-40-45-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	50	50	155	155	29,6	29,6	52,5	36	8	40	16	124,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040050	YOK	163353_DNC-40-50-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	55	55	160	160	29,6	29,6	52,5	36	8	40	16	129,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040055	YOK	163350_DNC-40-55-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	60	60	165	165	29,6	29,6	52,5	36	8	40	16	134,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040060	YOK	163350_DNC-40-60-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	65	65	170	170	29,6	29,6	52,5	36	8	40	16	139,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040065	YOK	163350_DNC-40-65-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	70	70	175	175	29,6	29,6	52,5	36	8	40	16	144,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040070	YOK	163350_DNC-40-70-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	75	75	180	180	29,6	29,6	52,5	36	8	40	16	149,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040075	YOK	163350_DNC-40-75-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	80	80	185	185	29,6	29,6	52,5	36	8	40	16	154,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040080	YOK	163354_DNC-40-80-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	85	85	190	190	29,6	29,6	52,5	36	8	40	16	159,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040085	YOK	163350_DNC-40-85-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	90	90	195	195	29,6	29,6	52,5	36	8	40	16	164,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040090	YOK	163350_DNC-40-90-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	95	95	200	200	29,6	29,6	52,5	36	8	40	16	169,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040095	YOK	163350_DNC-40-95-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	100	100	205	205	29,6	29,6	52,5	36	8	40	16	174,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040100	YOK	163355_DNC-40-100-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	105	105	210	210	29,6	29,6	52,5	36	8	40	16	179,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040105	YOK	163350_DNC-40-105-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	110	110	215	215	29,6	29,6	52,5	36	8	40	16	184,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040110	YOK	163350_DNC-40-110-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	115	115	220	220	29,6	29,6	52,5	36	8	40	16	189,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040115	YOK	163350_DNC-40-115-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	120	120	225	225	29,6	29,6	52,5	36	8	40	16	194,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040120	YOK	163350_DNC-40-120-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	125	125	230	230	29,6	29,6	52,5	36	8	40	16	199,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040125	YOK	163350_DNC-40-120-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	130	130	235	235	29,6	29,6	52,5	36	8	40	16	204,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040130	YOK	163350_DNC-40-130-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	135	135	240	240	29,6	29,6	52,5	36	8	40	16	209,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040135	YOK	163350_DNC-40-135-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	140	140	245	245	29,6	29,6	52,5	36	8	40	16	214,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040140	YOK	163350_DNC-40-140-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	145	145	250	250	29,6	29,6	52,5	36	8	40	16	219,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040145	YOK	163350_DNC-40-145-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	150	150	255	255	29,6	29,6	52,5	36	8	40	16	224,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040150	YOK	163350_DNC-40-150-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	155	155	260	260	29,6	29,6	52,5	36	8	40	16	229,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040155	YOK	163350_DNC-40-155-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	160	160	265	265	29,6	29,6	52,5	36	8	40	16	234,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040160	YOK	163357_DNC-40-160-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	165	165	270	270	29,6	29,6	52,5	36	8	40	16	239,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040165	YOK	163350_DNC-40-165-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	170	170	275	275	29,6	29,6	52,5	36	8	40	16	244,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040170	YOK	163350_DNC-40-170-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	175	175	280	280	29,6	29,6	52,5	36	8	40	16	249,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040175	YOK	163350_DNC-40-175-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	180	180	285	285	29,6	29,6	52,5	36	8	40	16	254,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040180	YOK	163350_DNC-40-180-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	185	185	290	290	29,6	29,6	52,5	36	8	40	16	259,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040185	YOK	163350_DNC-40-185-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	190	190	295	295	29,6	29,6	52,5	36	8	40	16	264,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040190	YOK	163350_DNC-40-190-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	195	195	300	300	29,6	29,6	52,5	36	8	40	16	269,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040195	YOK	163350_DNC-40-195-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	200	200	305	305	29,6	29,6	52,5	36	8	40	16	274,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040200	YOK	163358_DNC-40-200-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	205	205	310	310	29,6	29,6	52,5	36	8	40	16	279,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040205	YOK	163350_DNC-40-205-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	210	210	315	315	29,6	29,6	52,5	36	8	40	16	284,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040210	YOK	163350_DNC-40-210-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	215	215	320	320	29,6	29,6	52,5	36	8	40	16	289,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040215	YOK	163350_DNC-40-215-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	220	220	325	325	29,6	29,6	52,5	36	8	40	16	294,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040220	YOK	163350_DNC-40-220-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	225	225	330	330	29,6	29,6	52,5	36	8	40	16	299,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040225	YOK	163350_DNC-40-225-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	230	230	335	335	29,6	29,6	52,5	36	8	40	16	304,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040230	YOK	163350_DNC-40-230-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	235	235	340	340	29,6	29,6	52,5	36	8	40	16	309,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040235	YOK	163350_DNC-40-235-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	240	240	345	345	29,6	29,6	52,5	36	8	40	16	314,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040240	YOK	163350_DNC-40-240-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	245	245	350	350	29,6	29,6	52,5	36	8	40	16	319,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040245	YOK	163350_DNC-40-245-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	250	250	355	355	29,6	29,6	52,5	36	8	40	16	324,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040250	YOK	163359_DNC-40-250-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	255	255	360	360	29,6	29,6	52,5	36	8	40	16	329,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040255	YOK	163350_DNC-40-255-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	260	260	365	365	29,6	29,6	52,5	36	8	40	16	334,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040260	YOK	163350_DNC-40-260-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	265	265	370	370	29,6	29,6	52,5	36	8	40	16	339,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040265	YOK	163350_DNC-40-265-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	270	270	375	375	29,6	29,6	52,5	36	8	40	16	344,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040270	YOK	163350_DNC-40-270-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	275	275	380	380	29,6	29,6	52,5	36	8	40	16	349,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040275	YOK	163350_DNC-40-275-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	280	280	385	385	29,6	29,6	52,5	36	8	40	16	354,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040280	YOK	163350_DNC-40-280-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	285	285	390	390	29,6	29,6	52,5	36	8	40	16	359,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040285	YOK	163350_DNC-40-285-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	290	290	395	395	29,6	29,6	52,5	36	8	40	16	364,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040290	YOK	163350_DNC-40-290-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	295	295	400	400	29,6	29,6	52,5	36	8	40	16	369,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040295	YOK	163350_DNC-40-295-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	300	300	405	405	29,6	29,6	52,5	36	8	40	16	374,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040300	YOK	163350_DNC-40-300-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	320	320	425	425	29,6	29,6	52,5	36	8	40	16	394,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040320	YOK	163350_DNC-40-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	350	350	455	455								424,5															False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040350	YOK	163360_DNC-40-350-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	400	400	505	505	29,6	29,6	52,5	36	8	40	16	474,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040400	YOK	163361_DNC-40-400-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	450	450	555	555								524,5															False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040450	YOK	163350_DNC-40-450-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	40	500	500	605	605	29,6	29,6	52,5	36	8	40	16	574,5	24	12	11	35	10	4	19	6	6	14	11,445	13	54	84	False	True	False	False	False	False	False	False	False	3	YOK	TKSPNS040500	YOK	163362_DNC-40-500-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	10	10	116	116	29,6	29,6	53	43	10	50	20	90	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050010	YOK	163382_DNC-50-10-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	15	15	121	121	29,6	29,6	53	43	10	50	20	95	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050015	YOK	163382_DNC-50-15-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	20	20	126	126	29,6	29,6	53	43	10	50	20	100	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050020	YOK	163382_DNC-50-20-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	25	25	131	131	29,6	29,6	53	43	10	50	20	105	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050025	YOK	163383_DNC-50-25-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	30	30	136	136	29,6	29,6	53	43	10	50	20	110	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050030	YOK	163382_DNC-50-30-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	35	35	141	141	29,6	29,6	53	43	10	50	20	115	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050035	YOK	163382_DNC-50-35-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	40	40	146	146	29,6	29,6	53	43	10	50	20	120	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050040	YOK	163384_DNC-50-40-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	45	45	151	151	29,6	29,6	53	43	10	50	20	125	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050045	YOK	163382_DNC-50-45-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	50	50	156	156	29,6	29,6	53	43	10	50	20	130	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050050	YOK	163385_DNC-50-50-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	55	55	161	161	29,6	29,6	53	43	10	50	20	135	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050055	YOK	163382_DNC-50-55-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	60	60	166	166	29,6	29,6	53	43	10	50	20	140	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050060	YOK	163382_DNC-50-60-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	65	65	171	171	29,6	29,6	53	43	10	50	20	145	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050065	YOK	163382_DNC-50-65-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	70	70	176	176	29,6	29,6	53	43	10	50	20	150	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050070	YOK	163382_DNC-50-70-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	75	75	181	181	29,6	29,6	53	43	10	50	20	155	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050075	YOK	163382_DNC-50-75-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	80	80	186	186	29,6	29,6	53	43	10	50	20	160	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050080	YOK	163386_DNC-50-80-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	85	85	191	191	29,6	29,6	53	43	10	50	20	165	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050085	YOK	163382_DNC-50-85-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	90	90	196	196	29,6	29,6	53	43	10	50	20	170	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050090	YOK	163382_DNC-50-90-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	95	95	201	201	29,6	29,6	53	43	10	50	20	175	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050095	YOK	163382_DNC-50-95-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	100	100	206	206	29,6	29,6	53	43	10	50	20	180	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050100	YOK	163387_DNC-50-100-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	105	105	211	211	29,6	29,6	53	43	10	50	20	185	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050105	YOK	163382_DNC-50-105-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	110	110	216	216	29,6	29,6	53	43	10	50	20	190	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050110	YOK	163382_DNC-50-110-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	115	115	221	221	29,6	29,6	53	43	10	50	20	195	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050115	YOK	163382_DNC-50-115-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	120	120	226	226	29,6	29,6	53	43	10	50	20	200	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050120	YOK	163382_DNC-50-120-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	125	125	231	231	29,6	29,6	53	43	10	50	20	205	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050125	YOK	163388_DNC-50-125-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	130	130	236	236	29,6	29,6	53	43	10	50	20	210	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050130	YOK	163382_DNC-50-130-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	135	135	241	241	29,6	29,6	53	43	10	50	20	215	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050135	YOK	163382_DNC-50-135-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	140	140	246	246	29,6	29,6	53	43	10	50	20	220	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050140	YOK	163382_DNC-50-140-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	145	145	251	251	29,6	29,6	53	43	10	50	20	225	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050145	YOK	163382_DNC-50-145-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	150	150	256	256	29,6	29,6	53	43	10	50	20	230	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050150	YOK	163382_DNC-50-150-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	155	155	261	261	29,6	29,6	53	43	10	50	20	235	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050155	YOK	163382_DNC-50-155-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	160	160	266	266	29,6	29,6	53	43	10	50	20	240	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050160	YOK	163389_DNC-50-160-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	165	165	271	271	29,6	29,6	53	43	10	50	20	245	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050165	YOK	163389_DNC-50-160-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	165	165	276	276	29,6	29,6	53	43	10	50	20	250	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050170	YOK	163382_DNC-50-170-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	170	170	281	281	29,6	29,6	53	43	10	50	20	255	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050175	YOK	163382_DNC-50-175-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	175	175	286	286	29,6	29,6	53	43	10	50	20	260	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050180	YOK	163382_DNC-50-180-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	180	180	291	291	29,6	29,6	53	43	10	50	20	265	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050185	YOK	163382_DNC-50-185-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	185	185	296	296	29,6	29,6	53	43	10	50	20	270	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050190	YOK	163382_DNC-50-190-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	190	190	301	301	29,6	29,6	53	43	10	50	20	275	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050195	YOK	163382_DNC-50-195-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	195	195	306	306	29,6	29,6	53	43	10	50	20	280	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050200	YOK	163390_DNC-50-200-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	200	200	311	311	29,6	29,6	53	43	10	50	20	285	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050205	YOK	163382_DNC-50-205-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	205	205	316	316	29,6	29,6	53	43	10	50	20	290	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050210	YOK	163382_DNC-50-210-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	210	210	321	321	29,6	29,6	53	43	10	50	20	295	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050215	YOK	163382_DNC-50-215-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	215	215	326	326	29,6	29,6	53	43	10	50	20	300	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050220	YOK	163382_DNC-50-220-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	220	220	331	331	29,6	29,6	53	43	10	50	20	305	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050225	YOK	163382_DNC-50-225-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	225	225	336	336	29,6	29,6	53	43	10	50	20	310	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050230	YOK	163382_DNC-50-230-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	230	230	341	341	29,6	29,6	53	43	10	50	20	315	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050235	YOK	163382_DNC-50-235-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	235	235	346	346	29,6	29,6	53	43	10	50	20	320	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050240	YOK	163382_DNC-50-240-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	240	240	351	351	29,6	29,6	53	43	10	50	20	325	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050245	YOK	163382_DNC-50-245-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	245	245	356	356	29,6	29,6	53	43	10	50	20	330	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050250	YOK	163391_DNC-50-250-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	250	250	361	361	29,6	29,6	53	43	10	50	20	335	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050255	YOK	163382_DNC-50-255-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	255	255	366	366	29,6	29,6	53	43	10	50	20	340	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050260	YOK	163382_DNC-50-260-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	260	260	371	371	29,6	29,6	53	43	10	50	20	345	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050265	YOK	163382_DNC-50-265-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	265	265	376	376	29,6	29,6	53	43	10	50	20	350	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050270	YOK	163382_DNC-50-270-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	270	270	381	381	29,6	29,6	53	43	10	50	20	355	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050275	YOK	163382_DNC-50-275-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	275	275	386	386	29,6	29,6	53	43	10	50	20	360	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050280	YOK	163382_DNC-50-280-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	280	280	391	391	29,6	29,6	53	43	10	50	20	365	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050285	YOK	163382_DNC-50-285-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	285	285	396	396	29,6	29,6	53	43	10	50	20	370	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050290	YOK	163382_DNC-50-290-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	290	290	401	401	29,6	29,6	53	43	10	50	20	375	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050295	YOK	163382_DNC-50-295-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	295	295	406	406	29,6	29,6	53	43	10	50	20	380	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050300	YOK	163382_DNC-50-300-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	320	320	426	426	29,6	29,6	53	43	10	50	20	400	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050320	YOK	163392_DNC-50-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	350	350	456	456	29,6	29,6	53	43	10	50	20	430	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050350	YOK	163392_DNC-50-350-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	400	400	506	506	29,6	29,6	53	43	10	50	20	480	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050400	YOK	163393_DNC-50-400-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	450	450	556	556	29,6	29,6	53	43	10	50	20	530	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050450	YOK	163392_DNC-50-450-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	50	500	500	606	606	29,6	29,6	53	43	10	50	20	580	32	16	12,5	40	15,5	4	24	8	8,5	14	11,445	16	64	94	False	False	True	False	False	False	False	False	False	3	YOK	TKSPNS050500	YOK	163394_DNC-50-500-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	10	10	131	131	35,6	35,6	60,5	45	10	63	20	97,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063010	YOK	163414_DNC-63-10-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	15	15	136	136	35,6	35,6	60,5	45	10	63	20	102,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063015	YOK	163414_DNC-63-15-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	20	20	141	141	35,6	35,6	60,5	45	10	63	20	107,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063020	YOK	163414_DNC-63-20-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	25	25	146	146	35,6	35,6	60,5	45	10	63	20	112,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063025	YOK	163415_DNC-63-25-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	30	30	151	151	35,6	35,6	60,5	45	10	63	20	117,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063030	YOK	163414_DNC-63-30-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	35	35	156	156	35,6	35,6	60,5	45	10	63	20	122,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063035	YOK	163414_DNC-63-35-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	40	40	161	161	35,6	35,6	60,5	45	10	63	20	127,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063040	YOK	163416_DNC-63-40-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	45	45	166	166	35,6	35,6	60,5	45	10	63	20	132,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063045	YOK	163414_DNC-63-45-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	50	50	171	171	35,6	35,6	60,5	45	10	63	20	137,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063050	YOK	163417_DNC-63-50-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	55	55	176	176	35,6	35,6	60,5	45	10	63	20	142,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063055	YOK	163414_DNC-63-55-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	60	60	181	181	35,6	35,6	60,5	45	10	63	20	147,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063060	YOK	163414_DNC-63-60-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	65	65	186	186	35,6	35,6	60,5	45	10	63	20	152,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063065	YOK	163414_DNC-63-65-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	70	70	191	191	35,6	35,6	60,5	45	10	63	20	157,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063070	YOK	163414_DNC-63-70-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	75	75	196	196	35,6	35,6	60,5	45	10	63	20	162,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063075	YOK	163414_DNC-63-75-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	80	80	201	201	35,6	35,6	60,5	45	10	63	20	167,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063080	YOK	163418_DNC-63-80-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	85	85	206	206	35,6	35,6	60,5	45	10	63	20	172,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063085	YOK	163414_DNC-63-85-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	90	90	211	211	35,6	35,6	60,5	45	10	63	20	177,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063090	YOK	163414_DNC-63-90-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	95	95	216	216	35,6	35,6	60,5	45	10	63	20	182,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063095	YOK	163414_DNC-63-95-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	100	100	221	221	35,6	35,6	60,5	45	10	63	20	187,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063100	YOK	163419_DNC-63-100-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	105	105	226	226	35,6	35,6	60,5	45	10	63	20	192,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063105	YOK	163414_DNC-63-105-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	110	110	231	231	35,6	35,6	60,5	45	10	63	20	197,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063110	YOK	163414_DNC-63-110-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	115	115	236	236	35,6	35,6	60,5	45	10	63	20	202,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063115	YOK	163414_DNC-63-115-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	120	120	241	241	35,6	35,6	60,5	45	10	63	20	207,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063120	YOK	163414_DNC-63-120-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	125	125	246	246	35,6	35,6	60,5	45	10	63	20	212,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063125	YOK	163420_DNC-63-125-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	130	130	251	251	35,6	35,6	60,5	45	10	63	20	217,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063130	YOK	163414_DNC-63-130-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	135	135	256	256	35,6	35,6	60,5	45	10	63	20	222,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063135	YOK	163414_DNC-63-135-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	140	140	261	261	35,6	35,6	60,5	45	10	63	20	227,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063140	YOK	163414_DNC-63-140-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	145	145	266	266	35,6	35,6	60,5	45	10	63	20	232,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063145	YOK	163414_DNC-63-145-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	150	150	271	271	35,6	35,6	60,5	45	10	63	20	237,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063150	YOK	163414_DNC-63-150-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	155	155	276	276	35,6	35,6	60,5	45	10	63	20	242,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063155	YOK	163414_DNC-63-155-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	160	160	281	281	35,6	35,6	60,5	45	10	63	20	247,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063160	YOK	163421_DNC-63-160-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	165	165	286	286	35,6	35,6	60,5	45	10	63	20	252,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063165	YOK	163414_DNC-63-165-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	170	170	291	291	35,6	35,6	60,5	45	10	63	20	257,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063170	YOK	163414_DNC-63-170-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	175	175	296	296	35,6	35,6	60,5	45	10	63	20	262,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063175	YOK	163414_DNC-63-175-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	180	180	301	301	35,6	35,6	60,5	45	10	63	20	267,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063180	YOK	163414_DNC-63-180-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	185	185	306	306	35,6	35,6	60,5	45	10	63	20	272,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063185	YOK	163414_DNC-63-185-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	190	190	311	311	35,6	35,6	60,5	45	10	63	20	277,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063190	YOK	163414_DNC-63-190-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	195	195	316	316	35,6	35,6	60,5	45	10	63	20	282,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063195	YOK	163414_DNC-63-195-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	200	200	321	321	35,6	35,6	60,5	45	10	63	20	287,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063200	YOK	163422_DNC-63-200-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	205	205	326	326	35,6	35,6	60,5	45	10	63	20	292,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063205	YOK	163414_DNC-63-205-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	210	210	331	331	35,6	35,6	60,5	45	10	63	20	297,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063210	YOK	163414_DNC-63-210-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	215	215	336	336	35,6	35,6	60,5	45	10	63	20	302,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063215	YOK	163414_DNC-63-215-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	220	220	341	341	35,6	35,6	60,5	45	10	63	20	307,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063220	YOK	163414_DNC-63-220-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	225	225	346	346	35,6	35,6	60,5	45	10	63	20	312,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063225	YOK	163414_DNC-63-225-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	230	230	351	351	35,6	35,6	60,5	45	10	63	20	317,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063230	YOK	163414_DNC-63-230-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	235	235	356	356	35,6	35,6	60,5	45	10	63	20	322,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063235	YOK	163414_DNC-63-235-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	240	240	361	361	35,6	35,6	60,5	45	10	63	20	327,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063240	YOK	163414_DNC-63-240-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	245	245	366	366	35,6	35,6	60,5	45	10	63	20	332,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063245	YOK	163414_DNC-63-245-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	250	250	371	371	35,6	35,6	60,5	45	10	63	20	337,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063250	YOK	163423_DNC-63-250-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	255	255	376	376	35,6	35,6	60,5	45	10	63	20	342,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063255	YOK	163414_DNC-63-255-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	260	260	381	381	35,6	35,6	60,5	45	10	63	20	347,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063260	YOK	163414_DNC-63-260-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	265	265	386	386	35,6	35,6	60,5	45	10	63	20	352,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063265	YOK	163414_DNC-63-265-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	270	270	391	391	35,6	35,6	60,5	45	10	63	20	357,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063270	YOK	163414_DNC-63-270-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	275	275	396	396	35,6	35,6	60,5	45	10	63	20	362,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063275	YOK	163414_DNC-63-275-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	280	280	401	401	35,6	35,6	60,5	45	10	63	20	367,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063280	YOK	163414_DNC-63-280-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	285	285	406	406	35,6	35,6	60,5	45	10	63	20	372,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063285	YOK	163414_DNC-63-285-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	290	290	411	411	35,6	35,6	60,5	45	10	63	20	377,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063290	YOK	163414_DNC-63-290-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	295	295	416	416	35,6	35,6	60,5	45	10	63	20	382,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063295	YOK	163414_DNC-63-295-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	300	300	421	421	35,6	35,6	60,5	45	10	63	20	387,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063300	YOK	163414_DNC-63-300-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	320	320	441	441	35,6	35,6	60,5	45	10	63	20	407,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063320	YOK	163424_DNC-63-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	350	350	471	471	35,6	35,6	60,5	45	10	63	20	437,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063350	YOK	163424_DNC-63-350-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	400	400	521	521	35,6	35,6	60,5	45	10	63	20	487,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063400	YOK	163425_DNC-63-400-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	450	450	571	571	35,6	35,6	60,5	45	10	63	20	537,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063450	YOK	163424_DNC-63-450-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	63	500	500	621	621	35,6	35,6	60,5	45	10	63	20	587,5	32	16	16	45	12	4	24	8	10	17	15	16	75,5	106	False	False	False	True	False	False	False	False	False	3	YOK	TKSPNS063500	YOK	163426_DNC-63-500-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	10	10	138	138	35,9	35,9	64	53	12,5	80	25	107,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080010	YOK	163446_DNC-80-10-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	15	15	143	143	35,9	35,9	64	53	12,5	80	25	112,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080015	YOK	163446_DNC-80-15-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	20	20	148	148	35,9	35,9	64	53	12,5	80	25	117,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080020	YOK	163446_DNC-80-20-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	25	25	153	153	35,9	35,9	64	53	12,5	80	25	122,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080025	YOK	163447_DNC-80-25-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	30	30	158	158	35,9	35,9	64	53	12,5	80	25	127,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080030	YOK	163446_DNC-80-30-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	35	35	163	163	35,9	35,9	64	53	12,5	80	25	132,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080035	YOK	163446_DNC-80-35-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	40	40	168	168	35,9	35,9	64	53	12,5	80	25	137,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080040	YOK	163448_DNC-80-40-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	45	45	173	173	35,9	35,9	64	53	12,5	80	25	142,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080045	YOK	163446_DNC-80-45-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	50	50	178	178	35,9	35,9	64	53	12,5	80	25	147,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080050	YOK	163449_DNC-80-50-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	55	55	183	183	35,9	35,9	64	53	12,5	80	25	152,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080055	YOK	163446_DNC-80-55-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	60	60	188	188	35,9	35,9	64	53	12,5	80	25	157,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080060	YOK	163446_DNC-80-60-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	65	65	193	193	35,9	35,9	64	53	12,5	80	25	162,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080065	YOK	163446_DNC-80-65-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	70	70	198	198	35,9	35,9	64	53	12,5	80	25	167,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080070	YOK	163446_DNC-80-70-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	75	75	203	203	35,9	35,9	64	53	12,5	80	25	172,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080075	YOK	163446_DNC-80-75-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	80	80	208	208	35,9	35,9	64	53	12,5	80	25	177,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080080	YOK	163450_DNC-80-80-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	85	85	213	213	35,9	35,9	64	53	12,5	80	25	182,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080085	YOK	163446_DNC-80-85-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	90	90	218	218	35,9	35,9	64	53	12,5	80	25	187,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080090	YOK	163446_DNC-80-90-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	95	95	223	223	35,9	35,9	64	53	12,5	80	25	192,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080095	YOK	163446_DNC-80-95-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	100	100	228	228	35,9	35,9	64	53	12,5	80	25	197,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080100	YOK	163451_DNC-80-100-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	105	105	233	233	35,9	35,9	64	53	12,5	80	25	202,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080105	YOK	163446_DNC-80-105-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	110	110	238	238	35,9	35,9	64	53	12,5	80	25	207,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080110	YOK	163446_DNC-80-110-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	115	115	243	243	35,9	35,9	64	53	12,5	80	25	212,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080115	YOK	163446_DNC-80-115-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	120	120	248	248	35,9	35,9	64	53	12,5	80	25	217,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080120	YOK	163446_DNC-80-120-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	125	125	253	253	35,9	35,9	64	53	12,5	80	25	222,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080125	YOK	163452_DNC-80-125-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	130	130	258	258	35,9	35,9	64	53	12,5	80	25	227,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080130	YOK	163446_DNC-80-130-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	135	135	263	263	35,9	35,9	64	53	12,5	80	25	232,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080135	YOK	163446_DNC-80-135-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	140	140	268	268	35,9	35,9	64	53	12,5	80	25	237,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080140	YOK	163446_DNC-80-140-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	145	145	273	273	35,9	35,9	64	53	12,5	80	25	242,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080145	YOK	163446_DNC-80-145-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	150	150	278	278	35,9	35,9	64	53	12,5	80	25	247,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080150	YOK	163446_DNC-80-150-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	155	155	283	283	35,9	35,9	64	53	12,5	80	25	252,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080155	YOK	163446_DNC-80-155-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	160	160	288	288	35,9	35,9	64	53	12,5	80	25	257,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080160	YOK	163453_DNC-80-160-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	165	165	293	293	35,9	35,9	64	53	12,5	80	25	262,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080165	YOK	163446_DNC-80-165-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	170	170	298	298	35,9	35,9	64	53	12,5	80	25	267,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080170	YOK	163446_DNC-80-170-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	175	175	303	303	35,9	35,9	64	53	12,5	80	25	272,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080175	YOK	163446_DNC-80-175-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	180	180	308	308	35,9	35,9	64	53	12,5	80	25	277,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080180	YOK	163446_DNC-80-180-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	185	185	313	313	35,9	35,9	64	53	12,5	80	25	282,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080185	YOK	163446_DNC-80-185-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	190	190	318	318	35,9	35,9	64	53	12,5	80	25	287,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080190	YOK	163446_DNC-80-190-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	195	195	323	323	35,9	35,9	64	53	12,5	80	25	292,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080195	YOK	163446_DNC-80-195-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	200	200	328	328	35,9	35,9	64	53	12,5	80	25	297,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080200	YOK	163454_DNC-80-200-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	205	205	333	333	35,9	35,9	64	53	12,5	80	25	302,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080205	YOK	163446_DNC-80-205-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	210	210	338	338	35,9	35,9	64	53	12,5	80	25	307,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080210	YOK	163446_DNC-80-210-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	215	215	343	343	35,9	35,9	64	53	12,5	80	25	312,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080215	YOK	163446_DNC-80-215-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	220	220	348	348	35,9	35,9	64	53	12,5	80	25	317,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080220	YOK	163446_DNC-80-220-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	225	225	353	353	35,9	35,9	64	53	12,5	80	25	322,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080225	YOK	163446_DNC-80-225-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	230	230	358	358	35,9	35,9	64	53	12,5	80	25	327,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080230	YOK	163446_DNC-80-230-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	235	235	363	363	35,9	35,9	64	53	12,5	80	25	332,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080235	YOK	163446_DNC-80-235-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	240	240	368	368	35,9	35,9	64	53	12,5	80	25	337,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080240	YOK	163446_DNC-80-240-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	245	245	373	373	35,9	35,9	64	53	12,5	80	25	342,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080245	YOK	163446_DNC-80-245-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	250	250	378	378	35,9	35,9	64	53	12,5	80	25	347,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080250	YOK	163455_DNC-80-250-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	255	255	383	383	35,9	35,9	64	53	12,5	80	25	352,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080255	YOK	163446_DNC-80-255-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	260	260	388	388	35,9	35,9	64	53	12,5	80	25	357,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080260	YOK	163446_DNC-80-260-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	265	265	393	393	35,9	35,9	64	53	12,5	80	25	362,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080265	YOK	163446_DNC-80-265-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	270	270	398	398	35,9	35,9	64	53	12,5	80	25	367,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080270	YOK	163446_DNC-80-270-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	275	275	403	403	35,9	35,9	64	53	12,5	80	25	372,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080275	YOK	163446_DNC-80-275-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	280	280	408	408	35,9	35,9	64	53	12,5	80	25	377,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080280	YOK	163446_DNC-80-280-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	285	285	413	413	35,9	35,9	64	53	12,5	80	25	382,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080285	YOK	163446_DNC-80-285-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	290	290	418	418	35,9	35,9	64	53	12,5	80	25	387,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080290	YOK	163446_DNC-80-290-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	295	295	423	423	35,9	35,9	64	53	12,5	80	25	392,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080295	YOK	163446_DNC-80-295-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	300	300	428	428	35,9	35,9	64	53	12,5	80	25	397,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080300	YOK	163446_DNC-80-300-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	320	320	448	448	35,9	35,9	64	53	12,5	80	25	417,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080320	YOK	163456_DNC-80-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	350	350	478	478	35,9	35,9	64	53	12,5	80	25	447,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080350	YOK	163456_DNC-80-350-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	400	400	528	528	35,9	35,9	64	53	12,5	80	25	497,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080400	YOK	163457_DNC-80-400-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	450	450	578	578	35,9	35,9	64	53	12,5	80	25	547,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080450	YOK	163456_DNC-80-450-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	80	500	500	628	628	35,9	35,9	64	53	12,5	80	25	597,5	40	20	16,7	45	18	4	30	10	8	16,4	15	16	93	124	False	False	False	False	True	False	False	False	False	3	YOK	TKSPNS080500	YOK	163458_DNC-80-500-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	10	10	148	148	38,8	38,8	69	58	12,5	100	25	117,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100010	YOK	163478_DNC-100-10-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	15	15	153	153	38,8	38,8	69	58	12,5	100	25	122,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100015	YOK	163478_DNC-100-15-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	20	20	158	158	38,8	38,8	69	58	12,5	100	25	127,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100020	YOK	163478_DNC-100-20-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	25	25	163	163	38,8	38,8	69	58	12,5	100	25	132,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100025	YOK	163479_DNC-100-25-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	30	30	168	168	38,8	38,8	69	58	12,5	100	25	137,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100030	YOK	163478_DNC-100-30-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	35	35	173	173	38,8	38,8	69	58	12,5	100	25	142,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100035	YOK	163478_DNC-100-35-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	40	40	178	178	38,8	38,8	69	58	12,5	100	25	147,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100040	YOK	163480_DNC-100-40-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	45	45	183	183	38,8	38,8	69	58	12,5	100	25	152,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100045	YOK	163478_DNC-100-45-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	50	50	188	188	38,8	38,8	69	58	12,5	100	25	157,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100050	YOK	163481_DNC-100-50-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	55	55	193	193	38,8	38,8	69	58	12,5	100	25	162,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100055	YOK	163478_DNC-100-55-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	60	60	198	198	38,8	38,8	69	58	12,5	100	25	167,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100060	YOK	163478_DNC-100-60-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	65	65	203	203	38,8	38,8	69	58	12,5	100	25	172,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100065	YOK	163478_DNC-100-65-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	70	70	208	208	38,8	38,8	69	58	12,5	100	25	177,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100070	YOK	163478_DNC-100-70-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	75	75	213	213	38,8	38,8	69	58	12,5	100	25	182,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100075	YOK	163478_DNC-100-75-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	80	80	218	218	38,8	38,8	69	58	12,5	100	25	187,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100080	YOK	163482_DNC-100-80-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	85	85	223	223	38,8	38,8	69	58	12,5	100	25	192,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100085	YOK	163478_DNC-100-85-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	90	90	228	228	38,8	38,8	69	58	12,5	100	25	197,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100090	YOK	163478_DNC-100-90-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	95	95	233	233	38,8	38,8	69	58	12,5	100	25	202,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100095	YOK	163478_DNC-100-95-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	100	100	238	238	38,8	38,8	69	58	12,5	100	25	207,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100100	YOK	163483_DNC-100-100-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	105	105	243	243	38,8	38,8	69	58	12,5	100	25	212,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100105	YOK	163478_DNC-100-105-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	110	110	248	248	38,8	38,8	69	58	12,5	100	25	217,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100110	YOK	163478_DNC-100-110-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	115	115	253	253	38,8	38,8	69	58	12,5	100	25	222,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100115	YOK	163478_DNC-100-115-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	120	120	258	258	38,8	38,8	69	58	12,5	100	25	227,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100120	YOK	163478_DNC-100-120-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	125	125	263	263	38,8	38,8	69	58	12,5	100	25	232,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100125	YOK	163484_DNC-100-125-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	130	130	268	268	38,8	38,8	69	58	12,5	100	25	237,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100130	YOK	163478_DNC-100-130-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	135	135	273	273	38,8	38,8	69	58	12,5	100	25	242,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100135	YOK	163478_DNC-100-135-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	140	140	278	278	38,8	38,8	69	58	12,5	100	25	247,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100140	YOK	163478_DNC-100-140-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	145	145	283	283	38,8	38,8	69	58	12,5	100	25	252,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100145	YOK	163478_DNC-100-145-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	150	150	288	288	38,8	38,8	69	58	12,5	100	25	257,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100150	YOK	163478_DNC-100-150-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	155	155	293	293	38,8	38,8	69	58	12,5	100	25	262,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100155	YOK	163478_DNC-100-155-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	160	160	298	298	38,8	38,8	69	58	12,5	100	25	267,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100160	YOK	163485_DNC-100-160-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	165	165	303	303	38,8	38,8	69	58	12,5	100	25	272,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100165	YOK	163478_DNC-100-165-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	170	170	308	308	38,8	38,8	69	58	12,5	100	25	277,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100170	YOK	163478_DNC-100-170-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	175	175	313	313	38,8	38,8	69	58	12,5	100	25	282,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100175	YOK	163478_DNC-100-175-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	180	180	318	318	38,8	38,8	69	58	12,5	100	25	287,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100180	YOK	163478_DNC-100-180-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	185	185	323	323	38,8	38,8	69	58	12,5	100	25	292,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100185	YOK	163478_DNC-100-185-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	190	190	328	328	38,8	38,8	69	58	12,5	100	25	297,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100190	YOK	163478_DNC-100-190-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	195	195	333	333	38,8	38,8	69	58	12,5	100	25	302,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100195	YOK	163478_DNC-100-195-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	200	200	338	338	38,8	38,8	69	58	12,5	100	25	307,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100200	YOK	163486_DNC-100-200-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	205	205	343	343	38,8	38,8	69	58	12,5	100	25	312,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100205	YOK	163478_DNC-100-205-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	210	210	348	348	38,8	38,8	69	58	12,5	100	25	317,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100210	YOK	163478_DNC-100-210-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	215	215	353	353	38,8	38,8	69	58	12,5	100	25	322,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100215	YOK	163478_DNC-100-215-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	220	220	358	358	38,8	38,8	69	58	12,5	100	25	327,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100220	YOK	163478_DNC-100-220-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	225	225	363	363	38,8	38,8	69	58	12,5	100	25	332,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100225	YOK	163478_DNC-100-225-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	230	230	368	368	38,8	38,8	69	58	12,5	100	25	337,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100230	YOK	163478_DNC-100-230-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	235	235	373	373	38,8	38,8	69	58	12,5	100	25	342,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100235	YOK	163478_DNC-100-235-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	240	240	378	378	38,8	38,8	69	58	12,5	100	25	347,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100240	YOK	163478_DNC-100-240-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	245	245	383	383	38,8	38,8	69	58	12,5	100	25	352,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100245	YOK	163478_DNC-100-245-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	250	250	388	388	38,8	38,8	69	58	12,5	100	25	357,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100250	YOK	163487_DNC-100-250-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	255	255	393	393	38,8	38,8	69	58	12,5	100	25	362,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100255	YOK	163478_DNC-100-255-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	260	260	398	398	38,8	38,8	69	58	12,5	100	25	367,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100260	YOK	163478_DNC-100-260-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	265	265	403	403	38,8	38,8	69	58	12,5	100	25	372,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100265	YOK	163478_DNC-100-265-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	270	270	408	408	38,8	38,8	69	58	12,5	100	25	377,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100270	YOK	163478_DNC-100-270-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	275	275	413	413	38,8	38,8	69	58	12,5	100	25	382,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100275	YOK	163478_DNC-100-275-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	280	280	418	418	38,8	38,8	69	58	12,5	100	25	387,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100280	YOK	163478_DNC-100-280-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	285	285	423	423	38,8	38,8	69	58	12,5	100	25	392,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100285	YOK	163478_DNC-100-285-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	290	290	428	428	38,8	38,8	69	58	12,5	100	25	397,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100290	YOK	163478_DNC-100-290-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	295	295	433	433	38,8	38,8	69	58	12,5	100	25	402,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100295	YOK	163478_DNC-100-295-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	300	300	438	438	38,8	38,8	69	58	12,5	100	25	407,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100300	YOK	163478_DNC-100-300-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	320	320	458	458	38,8	38,8	69	58	12,5	100	25	427,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100320	YOK	163488_DNC-100-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	350	350	488	488	38,8	38,8	69	58	12,5	100	25	457,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100350	YOK	163488_DNC-100-350-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	400	400	538	538	38,8	38,8	69	58	12,5	100	25	507,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100400	YOK	163489_DNC-100-400-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	450	450	588	588	38,8	38,8	69	58	12,5	100	25	557,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100450	YOK	163488_DNC-100-450-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	100	500	500	638	638	38,8	38,8	69	58	12,5	100	25	607,5	40	20	20	55	18	4	30	10	10	18,8	18,6	19	110	161	False	False	False	False	False	True	False	False	False	3	YOK	TKSPNS100500	YOK	163490_DNC-100-500-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	10	10	170	170	44,7	44,7	80	73	16	125	32	139	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125010	YOK	163510_DNC-125-10-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	15	15	175	175	44,7	44,7	80	73	16	125	32	144	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125015	YOK	163510_DNC-125-15-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	20	20	180	180	44,7	44,7	80	73	16	125	32	149	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125020	YOK	163510_DNC-125-20-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	25	25	185	185	44,7	44,7	80	73	16	125	32	154	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125025	YOK	163511_DNC-125-25-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	30	30	190	190	44,7	44,7	80	73	16	125	32	159	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125030	YOK	163510_DNC-125-30-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	35	35	195	195	44,7	44,7	80	73	16	125	32	164	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125035	YOK	163510_DNC-125-35-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	40	40	200	200	44,7	44,7	80	73	16	125	32	169	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125040	YOK	163512_DNC-125-40-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	45	45	205	205	44,7	44,7	80	73	16	125	32	174	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125045	YOK	163510_DNC-125-45-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	50	50	210	210	44,7	44,7	80	73	16	125	32	179	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125050	YOK	163513_DNC-125-50-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	55	55	215	215	44,7	44,7	80	73	16	125	32	184	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125055	YOK	163510_DNC-125-55-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	60	60	220	220	44,7	44,7	80	73	16	125	32	189	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125060	YOK	163510_DNC-125-60-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	65	65	225	225	44,7	44,7	80	73	16	125	32	194	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125065	YOK	163510_DNC-125-65-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	70	70	230	230	44,7	44,7	80	73	16	125	32	199	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125070	YOK	163510_DNC-125-70-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	75	75	235	235	44,7	44,7	80	73	16	125	32	204	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125075	YOK	163510_DNC-125-75-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	80	80	240	240	44,7	44,7	80	73	16	125	32	209	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125080	YOK	163514_DNC-125-80-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	85	85	245	245	44,7	44,7	80	73	16	125	32	214	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125085	YOK	163510_DNC-125-85-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	90	90	250	250	44,7	44,7	80	73	16	125	32	219	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125090	YOK	163510_DNC-125-90-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	95	95	255	255	44,7	44,7	80	73	16	125	32	224	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125095	YOK	163510_DNC-125-95-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	100	100	260	260	44,7	44,7	80	73	16	125	32	229	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125100	YOK	163515_DNC-125-100-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	105	105	265	265	44,7	44,7	80	73	16	125	32	234	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125105	YOK	163510_DNC-125-105-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	110	110	270	270	44,7	44,7	80	73	16	125	32	239	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125110	YOK	163510_DNC-125-110-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	115	115	275	275	44,7	44,7	80	73	16	125	32	244	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125115	YOK	163510_DNC-125-115-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	120	120	280	280	44,7	44,7	80	73	16	125	32	249	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125120	YOK	163510_DNC-125-120-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	125	125	285	285	44,7	44,7	80	73	16	125	32	254	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125125	YOK	163516_DNC-125-125-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	130	130	290	290	44,7	44,7	80	73	16	125	32	259	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125130	YOK	163510_DNC-125-130-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	135	135	295	295	44,7	44,7	80	73	16	125	32	264	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125135	YOK	163510_DNC-125-135-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	140	140	300	300	44,7	44,7	80	73	16	125	32	269	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125140	YOK	163510_DNC-125-140-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	145	145	305	305	44,7	44,7	80	73	16	125	32	274	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125145	YOK	163510_DNC-125-145-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	150	150	310	310	44,7	44,7	80	73	16	125	32	279	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125150	YOK	163510_DNC-125-150-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	155	155	315	315	44,7	44,7	80	73	16	125	32	284	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125155	YOK	163510_DNC-125-155-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	160	160	320	320	44,7	44,7	80	73	16	125	32	289	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125160	YOK	163517_DNC-125-160-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	165	165	325	325	44,7	44,7	80	73	16	125	32	294	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125165	YOK	163510_DNC-125-165-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	170	170	330	330	44,7	44,7	80	73	16	125	32	299	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125170	YOK	163510_DNC-125-170-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	175	175	335	335	44,7	44,7	80	73	16	125	32	304	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125175	YOK	163510_DNC-125-175-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	180	180	340	340	44,7	44,7	80	73	16	125	32	309	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125180	YOK	163510_DNC-125-180-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	185	185	345	345	44,7	44,7	80	73	16	125	32	314	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125185	YOK	163510_DNC-125-185-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	190	190	350	350	44,7	44,7	80	73	16	125	32	319	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125190	YOK	163510_DNC-125-190-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	195	195	355	355	44,7	44,7	80	73	16	125	32	324	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125195	YOK	163510_DNC-125-195-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	200	200	360	360	44,7	44,7	80	73	16	125	32	329	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125200	YOK	163518_DNC-125-200-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	205	205	365	365	44,7	44,7	80	73	16	125	32	334	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125205	YOK	163510_DNC-125-205-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	210	210	370	370	44,7	44,7	80	73	16	125	32	339	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125210	YOK	163510_DNC-125-210-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	215	215	375	375	44,7	44,7	80	73	16	125	32	344	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125215	YOK	163510_DNC-125-215-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	220	220	380	380	44,7	44,7	80	73	16	125	32	349	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125220	YOK	163510_DNC-125-220-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	225	225	385	385	44,7	44,7	80	73	16	125	32	354	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125225	YOK	163510_DNC-125-225-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	230	230	390	390	44,7	44,7	80	73	16	125	32	359	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125230	YOK	163510_DNC-125-230-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	235	235	395	395	44,7	44,7	80	73	16	125	32	364	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125235	YOK	163510_DNC-125-235-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	240	240	400	400	44,7	44,7	80	73	16	125	32	369	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125240	YOK	163510_DNC-125-240-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	245	245	405	405	44,7	44,7	80	73	16	125	32	374	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125245	YOK	163510_DNC-125-245-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	250	250	410	410	44,7	44,7	80	73	16	125	32	379	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125250	YOK	163519_DNC-125-250-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	255	255	415	415	44,7	44,7	80	73	16	125	32	384	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125255	YOK	163510_DNC-125-255-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	260	260	420	420	44,7	44,7	80	73	16	125	32	389	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125260	YOK	163510_DNC-125-260-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	265	265	425	425	44,7	44,7	80	73	16	125	32	394	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125265	YOK	163510_DNC-125-265-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	270	270	430	430	44,7	44,7	80	73	16	125	32	399	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125270	YOK	163510_DNC-125-270-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	275	275	435	435	44,7	44,7	80	73	16	125	32	404	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125275	YOK	163510_DNC-125-275-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	280	280	440	440	44,7	44,7	80	73	16	125	32	409	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125280	YOK	163510_DNC-125-280-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	285	285	445	445	44,7	44,7	80	73	16	125	32	414	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125285	YOK	163510_DNC-125-285-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	290	290	450	450	44,7	44,7	80	73	16	125	32	419	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125290	YOK	163510_DNC-125-290-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	295	295	455	455	44,7	44,7	80	73	16	125	32	424	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125295	YOK	163510_DNC-125-295-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	300	300	460	460	44,7	44,7	80	73	16	125	32	429	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125300	YOK	163510_DNC-125-300-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	320	320	480	480	44,7	44,7	80	73	16	125	32	449	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125320	YOK	163520_DNC-125-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	350	350	510	510	44,7	44,7	80	73	16	125	32	479	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125350	YOK	163520_DNC-125-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	400	400	560	560	44,7	44,7	80	73	16	125	32	529	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125400	YOK	163521_DNC-125-400-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	450	450	610	610	44,7	44,7	80	73	16	125	32	579	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125450	YOK	163520_DNC-125-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	125	500	500	660	660	44,7	44,7	80	73	16	125	32	629	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	True	False	False	3	YOK	TKSPNS125500	YOK	163522_DNC-125-500-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	10	10	190	0	44,7	44,7	80	73	16	160	32	139	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160010	YOK	163510_DNC-160-10-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	15	15	195	5	44,7	44,7	80	73	16	160	32	144	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160015	YOK	163510_DNC-160-15-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	20	20	200	10	44,7	44,7	80	73	16	160	32	149	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160020	YOK	163510_DNC-160-20-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	25	25	205	15	44,7	44,7	80	73	16	160	32	154	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160025	YOK	163511_DNC-160-25-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	30	30	210	20	44,7	44,7	80	73	16	160	32	159	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160030	YOK	163510_DNC-160-30-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	35	35	215	25	44,7	44,7	80	73	16	160	32	164	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160035	YOK	163510_DNC-160-35-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	40	40	220	30	44,7	44,7	80	73	16	160	32	169	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160040	YOK	163512_DNC-160-40-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	45	45	225	35	44,7	44,7	80	73	16	160	32	174	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160045	YOK	163510_DNC-160-45-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	50	50	230	40	44,7	44,7	80	73	16	160	32	179	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160050	YOK	163513_DNC-160-50-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	55	55	235	45	44,7	44,7	80	73	16	160	32	184	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160055	YOK	163510_DNC-160-55-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	60	60	240	50	44,7	44,7	80	73	16	160	32	189	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160060	YOK	163510_DNC-160-60-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	65	65	245	55	44,7	44,7	80	73	16	160	32	194	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160065	YOK	163510_DNC-160-65-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	70	70	250	60	44,7	44,7	80	73	16	160	32	199	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160070	YOK	163510_DNC-160-70-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	75	75	255	65	44,7	44,7	80	73	16	160	32	204	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160075	YOK	163510_DNC-160-75-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	80	80	260	70	44,7	44,7	80	73	16	160	32	209	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160080	YOK	163514_DNC-160-80-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	85	85	265	75	44,7	44,7	80	73	16	160	32	214	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160085	YOK	163510_DNC-160-85-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	90	90	270	80	44,7	44,7	80	73	16	160	32	219	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160090	YOK	163510_DNC-160-90-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	95	95	275	85	44,7	44,7	80	73	16	160	32	224	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160095	YOK	163510_DNC-160-95-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	100	100	280	90	44,7	44,7	80	73	16	160	32	229	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160100	YOK	163515_DNC-160-100-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	105	105	285	95	44,7	44,7	80	73	16	160	32	234	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160105	YOK	163510_DNC-160-105-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	110	110	290	100	44,7	44,7	80	73	16	160	32	239	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160110	YOK	163510_DNC-160-110-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	115	115	295	105	44,7	44,7	80	73	16	160	32	244	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160115	YOK	163510_DNC-160-115-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	120	120	300	110	44,7	44,7	80	73	16	160	32	249	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160120	YOK	163510_DNC-160-120-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	125	125	305	115	44,7	44,7	80	73	16	160	32	254	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160125	YOK	163516_DNC-160-125-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	130	130	310	120	44,7	44,7	80	73	16	160	32	259	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160130	YOK	163510_DNC-160-130-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	135	135	315	125	44,7	44,7	80	73	16	160	32	264	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160135	YOK	163510_DNC-160-135-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	140	140	320	130	44,7	44,7	80	73	16	160	32	269	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160140	YOK	163510_DNC-160-140-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	145	145	325	135	44,7	44,7	80	73	16	160	32	274	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160145	YOK	163510_DNC-160-145-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	150	150	330	140	44,7	44,7	80	73	16	160	32	279	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160150	YOK	163510_DNC-160-150-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	155	155	335	145	44,7	44,7	80	73	16	160	32	284	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160155	YOK	163510_DNC-160-155-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	160	160	340	150	44,7	44,7	80	73	16	160	32	289	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160160	YOK	163517_DNC-160-160-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	165	165	345	155	44,7	44,7	80	73	16	160	32	294	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160165	YOK	163510_DNC-160-165-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	170	170	350	160	44,7	44,7	80	73	16	160	32	299	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160170	YOK	163510_DNC-160-170-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	175	175	355	165	44,7	44,7	80	73	16	160	32	304	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160175	YOK	163510_DNC-160-175-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	180	180	360	170	44,7	44,7	80	73	16	160	32	309	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160180	YOK	163510_DNC-160-180-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	185	185	365	175	44,7	44,7	80	73	16	160	32	314	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160185	YOK	163510_DNC-160-185-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	190	190	370	180	44,7	44,7	80	73	16	160	32	319	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160190	YOK	163510_DNC-160-190-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	195	195	375	185	44,7	44,7	80	73	16	160	32	324	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160195	YOK	163510_DNC-160-195-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	200	200	380	190	44,7	44,7	80	73	16	160	32	329	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160200	YOK	163518_DNC-160-200-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	205	205	385	195	44,7	44,7	80	73	16	160	32	334	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160205	YOK	163510_DNC-160-205-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	210	210	390	200	44,7	44,7	80	73	16	160	32	339	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160210	YOK	163510_DNC-160-210-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	215	215	395	205	44,7	44,7	80	73	16	160	32	344	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160215	YOK	163510_DNC-160-215-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	220	220	400	210	44,7	44,7	80	73	16	160	32	349	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160220	YOK	163510_DNC-160-220-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	225	225	405	215	44,7	44,7	80	73	16	160	32	354	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160225	YOK	163510_DNC-160-225-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	230	230	410	220	44,7	44,7	80	73	16	160	32	359	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160230	YOK	163510_DNC-160-230-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	235	235	415	225	44,7	44,7	80	73	16	160	32	364	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160235	YOK	163510_DNC-160-235-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	240	240	420	230	44,7	44,7	80	73	16	160	32	369	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160240	YOK	163510_DNC-160-240-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	245	245	425	235	44,7	44,7	80	73	16	160	32	374	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160245	YOK	163510_DNC-160-245-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	250	250	430	240	44,7	44,7	80	73	16	160	32	379	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160250	YOK	163519_DNC-160-250-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	255	255	435	245	44,7	44,7	80	73	16	160	32	384	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160255	YOK	163510_DNC-160-255-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	260	260	440	250	44,7	44,7	80	73	16	160	32	389	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160260	YOK	163510_DNC-160-260-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	265	265	445	255	44,7	44,7	80	73	16	160	32	394	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160265	YOK	163510_DNC-160-265-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	270	270	450	260	44,7	44,7	80	73	16	160	32	399	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160270	YOK	163510_DNC-160-270-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	275	275	455	265	44,7	44,7	80	73	16	160	32	404	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160275	YOK	163510_DNC-160-275-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	280	280	460	270	44,7	44,7	80	73	16	160	32	409	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160280	YOK	163510_DNC-160-280-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	285	285	465	275	44,7	44,7	80	73	16	160	32	414	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160285	YOK	163510_DNC-160-285-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	290	290	470	280	44,7	44,7	80	73	16	160	32	419	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160290	YOK	163510_DNC-160-290-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	295	295	475	285	44,7	44,7	80	73	16	160	32	424	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160295	YOK	163510_DNC-160-295-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	300	300	480	290	44,7	44,7	80	73	16	160	32	429	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160300	YOK	163510_DNC-160-300-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	320	320	500	310	44,7	44,7	80	73	16	160	32	449	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160320	YOK	163520_DNC-160-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	350	350	530	340	44,7	44,7	80	73	16	160	32	479	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160350	YOK	163520_DNC-160-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	400	400	580	390	44,7	44,7	80	73	16	160	32	529	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160400	YOK	163521_DNC-160-400-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	450	450	630	440	44,7	44,7	80	73	16	160	32	579	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160450	YOK	163520_DNC-160-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	160	500	500	680	490	44,7	44,7	80	73	16	160	32	629	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	True	False	3	YOK	TKSPNS160500	YOK	163522_DNC-160-500-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	10	10	190	0	44,7	44,7	80	73	16	200	32	139	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200010	YOK	163510_DNC-200-10-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	15	15	195	5	44,7	44,7	80	73	16	200	32	144	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200015	YOK	163510_DNC-200-15-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	20	20	200	10	44,7	44,7	80	73	16	200	32	149	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200020	YOK	163510_DNC-200-20-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	25	25	205	15	44,7	44,7	80	73	16	200	32	154	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200025	YOK	163511_DNC-200-25-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	30	30	210	20	44,7	44,7	80	73	16	200	32	159	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200030	YOK	163510_DNC-200-30-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	35	35	215	25	44,7	44,7	80	73	16	200	32	164	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200035	YOK	163510_DNC-200-35-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	40	40	220	30	44,7	44,7	80	73	16	200	32	169	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200040	YOK	163512_DNC-200-40-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	45	45	225	35	44,7	44,7	80	73	16	200	32	174	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200045	YOK	163510_DNC-200-45-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	50	50	230	40	44,7	44,7	80	73	16	200	32	179	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200050	YOK	163513_DNC-200-50-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	55	55	235	45	44,7	44,7	80	73	16	200	32	184	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200055	YOK	163510_DNC-200-55-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	60	60	240	50	44,7	44,7	80	73	16	200	32	189	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200060	YOK	163510_DNC-200-60-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	65	65	245	55	44,7	44,7	80	73	16	200	32	194	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200065	YOK	163510_DNC-200-65-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	70	70	250	60	44,7	44,7	80	73	16	200	32	199	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200070	YOK	163510_DNC-200-70-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	75	75	255	65	44,7	44,7	80	73	16	200	32	204	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200075	YOK	163510_DNC-200-75-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	80	80	260	70	44,7	44,7	80	73	16	200	32	209	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200080	YOK	163514_DNC-200-80-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	85	85	265	75	44,7	44,7	80	73	16	200	32	214	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200085	YOK	163510_DNC-200-85-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	90	90	270	80	44,7	44,7	80	73	16	200	32	219	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200090	YOK	163510_DNC-200-90-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	95	95	275	85	44,7	44,7	80	73	16	200	32	224	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200095	YOK	163510_DNC-200-95-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	100	100	280	90	44,7	44,7	80	73	16	200	32	229	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200100	YOK	163515_DNC-200-100-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	105	105	285	95	44,7	44,7	80	73	16	200	32	234	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200105	YOK	163510_DNC-200-105-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	110	110	290	100	44,7	44,7	80	73	16	200	32	239	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200110	YOK	163510_DNC-200-110-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	115	115	295	105	44,7	44,7	80	73	16	200	32	244	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200115	YOK	163510_DNC-200-115-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	120	120	300	110	44,7	44,7	80	73	16	200	32	249	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200120	YOK	163510_DNC-200-120-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	125	125	305	115	44,7	44,7	80	73	16	200	32	254	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200125	YOK	163516_DNC-200-125-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	130	130	310	120	44,7	44,7	80	73	16	200	32	259	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200130	YOK	163510_DNC-200-130-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	135	135	315	125	44,7	44,7	80	73	16	200	32	264	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200135	YOK	163510_DNC-200-135-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	140	140	320	130	44,7	44,7	80	73	16	200	32	269	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200140	YOK	163510_DNC-200-140-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	145	145	325	135	44,7	44,7	80	73	16	200	32	274	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200145	YOK	163510_DNC-200-145-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	150	150	330	140	44,7	44,7	80	73	16	200	32	279	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200150	YOK	163510_DNC-200-150-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	155	155	335	145	44,7	44,7	80	73	16	200	32	284	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200155	YOK	163510_DNC-200-155-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	160	160	340	150	44,7	44,7	80	73	16	200	32	289	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200160	YOK	163517_DNC-200-160-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	165	165	345	155	44,7	44,7	80	73	16	200	32	294	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200165	YOK	163510_DNC-200-165-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	170	170	350	160	44,7	44,7	80	73	16	200	32	299	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200170	YOK	163510_DNC-200-170-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	175	175	355	165	44,7	44,7	80	73	16	200	32	304	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200175	YOK	163510_DNC-200-175-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	180	180	360	170	44,7	44,7	80	73	16	200	32	309	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200180	YOK	163510_DNC-200-180-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	185	185	365	175	44,7	44,7	80	73	16	200	32	314	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200185	YOK	163510_DNC-200-185-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	190	190	370	180	44,7	44,7	80	73	16	200	32	319	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200190	YOK	163510_DNC-200-190-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	195	195	375	185	44,7	44,7	80	73	16	200	32	324	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200195	YOK	163510_DNC-200-195-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	200	200	380	190	44,7	44,7	80	73	16	200	32	329	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200200	YOK	163518_DNC-200-200-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	205	205	385	195	44,7	44,7	80	73	16	200	32	334	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200205	YOK	163510_DNC-200-205-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	210	210	390	200	44,7	44,7	80	73	16	200	32	339	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200210	YOK	163510_DNC-200-210-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	215	215	395	205	44,7	44,7	80	73	16	200	32	344	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200215	YOK	163510_DNC-200-215-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	220	220	400	210	44,7	44,7	80	73	16	200	32	349	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200220	YOK	163510_DNC-200-220-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	225	225	405	215	44,7	44,7	80	73	16	200	32	354	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200225	YOK	163510_DNC-200-225-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	230	230	410	220	44,7	44,7	80	73	16	200	32	359	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200230	YOK	163510_DNC-200-230-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	235	235	415	225	44,7	44,7	80	73	16	200	32	364	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200235	YOK	163510_DNC-200-235-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	240	240	420	230	44,7	44,7	80	73	16	200	32	369	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200240	YOK	163510_DNC-200-240-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	245	245	425	235	44,7	44,7	80	73	16	200	32	374	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200245	YOK	163510_DNC-200-245-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	250	250	430	240	44,7	44,7	80	73	16	200	32	379	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200250	YOK	163519_DNC-200-250-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	255	255	435	245	44,7	44,7	80	73	16	200	32	384	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200255	YOK	163510_DNC-200-255-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	260	260	440	250	44,7	44,7	80	73	16	200	32	389	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200260	YOK	163510_DNC-200-260-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	265	265	445	255	44,7	44,7	80	73	16	200	32	394	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200265	YOK	163510_DNC-200-265-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	270	270	450	260	44,7	44,7	80	73	16	200	32	399	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200270	YOK	163510_DNC-200-270-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	275	275	455	265	44,7	44,7	80	73	16	200	32	404	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200275	YOK	163510_DNC-200-275-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	280	280	460	270	44,7	44,7	80	73	16	200	32	409	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200280	YOK	163510_DNC-200-280-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	285	285	465	275	44,7	44,7	80	73	16	200	32	414	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200285	YOK	163510_DNC-200-285-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	290	290	470	280	44,7	44,7	80	73	16	200	32	419	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200290	YOK	163510_DNC-200-290-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	295	295	475	285	44,7	44,7	80	73	16	200	32	424	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200295	YOK	163510_DNC-200-295-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	300	300	480	290	44,7	44,7	80	73	16	200	32	429	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200300	YOK	163510_DNC-200-300-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	320	320	500	310	44,7	44,7	80	73	16	200	32	449	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200320	YOK	163520_DNC-200-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	350	350	530	340	44,7	44,7	80	73	16	200	32	479	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200350	YOK	163520_DNC-200-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	400	400	580	390	44,7	44,7	80	73	16	200	32	529	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200400	YOK	163521_DNC-200-400-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	450	450	630	440	44,7	44,7	80	73	16	200	32	579	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200450	YOK	163520_DNC-200-320-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
PnomatikSilindir		H	Cikaricilar-iticiler	200	500	500	680	490	44,7	44,7	80	73	16	200	32	629	54	27	21,5	60	24,5	6	41	13,5	8	18	18,6	19	134	185	False	False	False	False	False	False	False	False	True	3	YOK	TKSPNS200500	YOK	163522_DNC-200-500-PPV	PnomatikSilindir	AirCylinder	CilindroAria	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA014KonikStoper; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA014KonikStoper" ("ParcaAdi", "Stoplama Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "D1(mm)", "D2(mm)", "D3(mm)", "D4(mm)", "A(mm)", "B(mm)", "C(mm)", "E(mm)", "F(mm)", "G(mm)", "L(mm)", "H(mm)", "N(mm)", "Ha(mm)", "M", "Md(mm)", "Ml(mm)", "M1", "M2", "D5(mm)", "D6(mm)", "D7(mm)", "Olcu", "D8(mm)", "Kritiklik_No", "Baglanti", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
KonikStoper		N	Stoplama Elemanları	100x80	100	75	58	40,5	55	40	48	15	35	15	80	90	50	10	M10	30	35	M12	M5	11	5,5	25	100x58x80	16	3	2-M10x45	CN_100_B	TKSKNS10008001	Y3560001377	KonikStoper	ConeBalancerBlock	ConoDiCentraggio	Rev03	01/01/2020
KonikStoper		N	Stoplama Elemanları	120x90	120	96	78	50,5	65	50	68	15	35	15	90	100	50	10	M10	30	35	M12	M5	11	5,5	25	120x78x90	16	3	2-M10x45	CN_120_B	TKSKNS12009002	Y3560001378	KonikStoper	ConeBalancerBlock	ConoDiCentraggio	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA015Burc; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA015Burc" ("ParcaAdi", "Merkezleme Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "D1(mm)", "D2(mm)", "L(mm)", "D3(mm)", "L2(mm)", "L3(mm)", "L4(mm)", "R1(mm)", "R2(mm)", "Rc(mm)", "L5(mm)", "Db(mm)", "Olcu", "ACI(deg)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
Burc		N	Merkezleme Elemanları	25x40	25	32	40	40	35	6,3	30	10	3	3	1	58	Ø25x40mm	0	3	BOC_025040_V	TKSBRC02504001	Y3560001379	Burc	Bush	BoccoleGuida	Rev03	01/01/2020
Burc		N	Merkezleme Elemanları	32x50	32	40	50	50	50	6,3	38	10	3	4	1	66	Ø32x50mm	0	3	BOC_032050_V	TKSBRC03205002	Y3560001380	Burc	Bush	BoccoleGuida	Rev03	01/01/2020
Burc		N	Merkezleme Elemanları	40x63	40	50	63	63	55	6,3	48	10	3	5	1	79	Ø40x63mm	0	3	BOC_040063_V	TKSBRC04006303	Y3560001381	Burc	Bush	BoccoleGuida	Rev03	01/01/2020
Burc		N	Merkezleme Elemanları	50x71	50	63	71	71	55	6,3	54	10	5	6,3	8	89	Ø50x71mm	0	3	BOC_050071_V	TKSBRC05007104	Y3560001382	Burc	Bush	BoccoleGuida	Rev03	01/01/2020
Burc		N	Merkezleme Elemanları	63x80	63	80	80	90	88	10	61	10	6	8	10	123	Ø63x80mm	0	3	BOC_063080_V	TKSBRC06308005	Y3560001383	Burc	Bush	BoccoleGuida	Rev03	01/01/2020
Burc		N	Merkezleme Elemanları	80x100	80	100	100	112	88	10	78	10	8	10	10	143	Ø80x100mm	0	3	BOC_080100_V	TKSBRC08010006	Y3560001384	Burc	Bush	BoccoleGuida	Rev03	01/01/2020
Burc		N	Merkezleme Elemanları	100x125	100	125	125	140	140	10	104	10	10	12,5	10	168	Ø100x125mm	0	3	BOC_100125_V	TKSBRC10012507	Y3560001385	Burc	Bush	BoccoleGuida	Rev03	01/01/2020
Burc		N	Merkezleme Elemanları	125x160	125	160	160	180	140	10	130	10	12	16	10	203	Ø125x160mm	0	3	BOC_125160_V	TKSBRC12516008	Y3560001386	Burc	Bush	BoccoleGuida	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA016AciliKizak; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA016AciliKizak" ("ParcaAdi", "Merkezleme Elemanları", "Merkezleme_Sinifi", "Grup", "Tip", "Alternatif", "H", "H1(mm)", "L1(mm)", "L(mm)", "Malzeme", "Sertlik_Degeri", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
AciliKizak		N	Merkezleme Elemanları	40x45x60	YUMUSAK	40	40	45	60	39NiCrMo3	HRC 54-56, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK04506001	Y3560001387	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	40x50x60	YUMUSAK	40	40	50	60	39NiCrMo3	HRC 54-56, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK05006001	Y3560001388	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	40x55x60	YUMUSAK	40	40	55	60	39NiCrMo3	HRC 54-56, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK05506001	Y3560001389	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	40x45x80	YUMUSAK	40	40	45	80	39NiCrMo3	HRC 54-56, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK04508001	Y3560001390	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	40x50x80	YUMUSAK	40	40	50	80	39NiCrMo3	HRC 54-56, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK05008001	Y3560001391	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	40x55x80	YUMUSAK	40	40	55	80	39NiCrMo3	HRC 54-56, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK05508001	Y3560001392	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	60x65x100	YUMUSAK	60	60	65	100	39NiCrMo3	HRC 54-56, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK06510001	Y3560001393	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	60x70x100	YUMUSAK	60	60	70	100	39NiCrMo3	HRC 54-56, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK07010001	Y3560001394	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	60x75x100	YUMUSAK	60	60	75	100	39NiCrMo3	HRC 54-56, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK07510001	Y3560001395	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	60x65x120	YUMUSAK	60	60	65	120	39NiCrMo3	HRC 54-56, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK06512001	Y3560001396	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	60x70x120	YUMUSAK	60	60	70	120	39NiCrMo3	HRC 54-56, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK07012001	Y3560001397	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	60x75x120	YUMUSAK	60	60	75	120	39NiCrMo3	HRC 54-56, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK07512001	Y3560001398	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	40x45x60	SERT	40	40	45	60	16MnCr5	HRC 58-60, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK04506002	Y3560001399	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	40x50x60	SERT	40	40	50	60	16MnCr5	HRC 58-60, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK05006002	Y3560001400	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	40x55x60	SERT	40	40	55	60	16MnCr5	HRC 58-60, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK05506002	Y3560001401	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	40x45x80	SERT	40	40	45	80	16MnCr5	HRC 58-60, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK04508002	Y3560001402	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	40x50x80	SERT	40	40	50	80	16MnCr5	HRC 58-60, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK05008002	Y3560001403	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	40x55x80	SERT	40	40	55	80	16MnCr5	HRC 58-60, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK05508002	Y3560001404	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	60x65x100	SERT	60	60	65	100	16MnCr5	HRC 58-60, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK06510002	Y3560001405	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	60x70x100	SERT	60	60	70	100	16MnCr5	HRC 58-60, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK07010002	Y3560001406	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	60x75x100	SERT	60	60	75	100	16MnCr5	HRC 58-60, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK07510002	Y3560001407	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	60x65x120	SERT	60	60	65	120	16MnCr5	HRC 58-60, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK06512002	Y3560001408	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	60x70x120	SERT	60	60	70	120	16MnCr5	HRC 58-60, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK07012002	Y3560001409	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
AciliKizak		N	Merkezleme Elemanları	60x75x120	SERT	60	60	75	120	16MnCr5	HRC 58-60, Depth3-6mm	M10	40	45	45	2-M10x45	2	YOK	TKSAKK07512002	Y3560001410	AciliKizak	FillerCamPlate	PettineChiavarda	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA017PnoSilKavramaPlakasi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA017PnoSilKavramaPlakasi" ("ParcaAdi", "Cikaricilar-iticiler", "Malzeme_Sinifi", "Grup", "Tip", "d(mm)", "E(mm)", "FB(mm)", "MF(mm)", "R(mm)", "TF(mm)", "TG(mm)", "UF(mm)", "M", "Md(mm)", "Ml(mm)", "d1(mm)", "d2(mm)", "Baglanti", "MOlcu(mm)", "Olcu", "L4(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler	32	30	50	7	10	32	64	32,5	86	M6	18	23	6,6	11	4-M6x30	30	50x86x10	5	2	FP_032	TKSPKI01003201	Y3560001411	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler	40	35	58	9	10	36	72	38	96	M8	24	29	6,6	11	4-M6x30	30	58x96x10	5	2	FP_040	TKSPKI01004002	Y3560001412	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler	50	40	70	9	12	45	90	46,5	115	M8	24	29	9	15	4-M8x35	35	70x115x12	6,5	2	FP_050	TKSPKI01005003	Y3560001413	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler	63	45	85	9	12	50	100	56,5	130	M8	24	29	9	15	4-M8x35	35	85x130x12	6,5	2	FP_063	TKSPKI01006304	Y3560001414	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler	80	45	105	12	16	63	126	72	165	M10	30	35	11	18	4-M10x40	40	105x165x16	9	2	FP_080	TKSPKI01008005	Y3560001415	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler	100	55	130	14	16	75	150	89	187	M12	36	41	11	18	4-M12x40	40	130x187x16	9	2	FP_100	TKSPKI01010006	Y3560001416	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler	125	60	157	16	20	90	180	110	224	M12	36	41	14	20	4-M12x40	40	157x224x20	10,5	2	FP_125	TKSPKI01012507	Y3560001417	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler	160	65	195	18	20	115	230	140	280	M16	48	53	18	26	4-M16x50	50	195x280x20	9,5	2	FP_160	TKSPKI01016008	Y3560001418	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler	200	75	238	22	25	135	270	175	320	M20	60	65	18	26	4-M20x70	70	238x320x25	12,5	2	FP_200	TKSPKI01020009	Y3560001419	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler		30	45	7	10	32	100	32,5	115	M6	18	23	6,6	11	4-M6x30	40	50x86x10	5	2	YOK	TKSPKU01103201	Y3560001420	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler		35	55	9	10	36	105	38	125	M8	24	29	6,6	11	4-M6x30	40	58x96x10	5	2	YOK	TKSPKU01104002	Y3560001421	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler		40	70	9	12	45	120	46,5	140	M8	24	29	9	15	4-M8x35	45	70x115x12	6,5	2	YOK	TKSPKU01105003	Y3560001422	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler		45	80	9	12	50	135	56,5	155	M8	24	29	9	15	4-M8x35	45	85x130x12	6,5	2	YOK	TKSPKU01106304	Y3560001423	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler		45	102	12	16	63	155	72	180	M10	30	35	11	18	4-M10x40	45	105x165x16	9	2	YOK	TKSPKU01108005	Y3560001424	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler		55	127	14	16	75	185	89	210	M12	36	41	11	18	4-M12x40	50	130x187x16	9	2	YOK	TKSPKU01110006	Y3560001425	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler		60	140	14	20	90	210	110	235	M12	36	41	14	20	4-M12x40	50	157x224x20	10,5	2	YOK	TKSPKU01112507	Y3560001426	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler		65	178	18	20	115	250	140	280	M16	48	53	18	26	4-M16x50	50	195x280x20	9,5	2	YOK	TKSPKU01116008	Y3560001427	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
PnoSilKavramaPlakasi		H	Cikaricilar-iticiler		75	229	22	25	135	300	175	335	M20	60	65	18	26	4-M20x70	70	238x320x25	12,5	2	YOK	TKSPKU01120009	Y3560001428	PnoSilKavramaPlakasi	FlangeMount	CilindroAriaFlangia	Rev03	01/01/2020
																														
\.


--
-- Data for Name: ISEDA018PnoSilBaglantiAyagi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA018PnoSilBaglantiAyagi" ("ParcaAdi", "Cikaricilar-iticiler", "Malzeme_Sinifi", "Grup", "Tip", "AB(mm)", "AH(mm)", "AT(mm)", "AU(mm)", "AO(mm)", "C(mm)", "E(mm)", "TR1(mm)", "R1(mm)", "R2(mm)", "D(mm)", "TG(mm)", "Md(mm)", "Ml(mm)", "MOlcu(mm)", "M", "Olcu", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
PnoSilBaglantiAyagi		H	Cikaricilar-iticiler	32	7	32	5	24	8	32	46	32	2	15	0,1	32,5	18	23	20	M6	32x46x5	2-M6x20	2	YOK	TKSPSB01003201	Y3560001429	PnoSilBaglantiAyagi	FootMount	CilindroAriaPiedinoInterno	Rev03	01/01/2020
PnoSilBaglantiAyagi		H	Cikaricilar-iticiler	40	9	36	5	28	10	38	52	36	2	17,5	0,1	38	24	29	25	M8	38x52x5	2-M8x25	2	YOK	TKSPSB01004002	Y3560001430	PnoSilBaglantiAyagi	FootMount	CilindroAriaPiedinoInterno	Rev03	01/01/2020
PnoSilBaglantiAyagi		H	Cikaricilar-iticiler	50	9	45	6,4	32	12,5	44,5	65	45	2	20	0,1	46,5	24	29	25	M8	44,5x65x6,4	2-M8x25	2	YOK	TKSPSB01005003	Y3560001431	PnoSilBaglantiAyagi	FootMount	CilindroAriaPiedinoInterno	Rev03	01/01/2020
PnoSilBaglantiAyagi		H	Cikaricilar-iticiler	63	9	50	6,4	32	12,5	44,5	75	50	2	22,5	0,1	56,5	24	29	25	M8	44,5x75x6,4	2-M8x25	2	YOK	TKSPSB01006304	Y3560001432	PnoSilBaglantiAyagi	FootMount	CilindroAriaPiedinoInterno	Rev03	01/01/2020
PnoSilBaglantiAyagi		H	Cikaricilar-iticiler	80	12	63	6,4	41	22,5	63,5	95	63	2	22,5	0,1	72	30	35	30	M10	63,5x95x6,4	2-M10x30	2	YOK	TKSPSB01008005	Y3560001433	PnoSilBaglantiAyagi	FootMount	CilindroAriaPiedinoInterno	Rev03	01/01/2020
PnoSilBaglantiAyagi		H	Cikaricilar-iticiler	100	14	71	6,4	41	22,5	63,5	115	75	2	27,5	8	89	36	41	35	M12	63,5x115x6,4	2-M12x35	2	YOK	TKSPSB01010006	Y3560001434	PnoSilBaglantiAyagi	FootMount	CilindroAriaPiedinoInterno	Rev03	01/01/2020
PnoSilBaglantiAyagi		H	Cikaricilar-iticiler	125	16	90	8	45	18,5	63,5	140	90	3	30	1	110	36	41	35	M12	63,5x140x8	2-M12x35	2	YOK	TKSPSB01012507	Y3560001435	PnoSilBaglantiAyagi	FootMount	CilindroAriaPiedinoInterno	Rev03	01/01/2020
PnoSilBaglantiAyagi		H	Cikaricilar-iticiler	160	18	115	10	60	16	76	171,5	115	3	32,5	10	140	48	53	40	M16	76x171,5x10	2-M16x50	2	YOK	TKSPSB01016008	Y3560001436	PnoSilBaglantiAyagi	FootMount	CilindroAriaPiedinoInterno	Rev03	01/01/2020
PnoSilBaglantiAyagi		H	Cikaricilar-iticiler	200	22	135	13	70	32	102	210	135	3	37,5	10	175	60	65	50	M20	102x210x13	2-M20x60	2	YOK	TKSPSB01020009	Y3560001437	PnoSilBaglantiAyagi	FootMount	CilindroAriaPiedinoInterno	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA019EklemBaglantisiAT4; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA019EklemBaglantisiAT4" ("ParcaAdi", "Cikaricilar-iticiler", "Malzeme_Sinifi", "Grup", "Tip", "UL(mm)", "NH(mm)", "TH(mm)", "C(mm)", "CR(mm)", "HB(mm)", "HC(mm)", "G(mm)", "FN(mm)", "FK(mm)", "M", "Md(mm)", "Ml(mm)", "CB(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
EklemBaglantisi_AT4		H	Cikaricilar-iticiler	32_Lik_Piston	46	18	32	10,5	12	6,6	11	8	30	15	M6	18	23	50	2-M6x20	3	YOK	TKSPEBAT03201	YOK	EklemBaglantisiAT4	TrunnionPivotBracketAT4	TrunnionPivotBracketAT4	Rev03	01/01/2020
EklemBaglantisi_AT4		H	Cikaricilar-iticiler	40_Lik_Piston	55	21	36	12	16	9	15	9	36	18	M8	24	29	60	2-M8x25	3	YOK	TKSPEBAT04002	YOK	EklemBaglantisiAT4	TrunnionPivotBracketAT4	TrunnionPivotBracketAT4	Rev03	01/01/2020
EklemBaglantisi_AT4		H	Cikaricilar-iticiler	50_Lik_Piston	55	21	36	12	16	9	15	9	36	18	M8	24	29	60	2-M8x25	3	YOK	TKSPEBAT05003	YOK	EklemBaglantisiAT4	TrunnionPivotBracketAT4	TrunnionPivotBracketAT4	Rev03	01/01/2020
EklemBaglantisi_AT4		H	Cikaricilar-iticiler	63_Luk_Piston	65	23	42	13	20	11	18	11	40	20	M10	24	29	60	2-M8x25	3	YOK	TKSPEBAT06304	YOK	EklemBaglantisiAT4	TrunnionPivotBracketAT4	TrunnionPivotBracketAT4	Rev03	01/01/2020
EklemBaglantisi_AT4		H	Cikaricilar-iticiler	80_Lik_Piston	65	23	42	13	20	11	18	11	40	20	M10	30	35	60	2-M10x30	3	YOK	TKSPEBAT08005	YOK	EklemBaglantisiAT4	TrunnionPivotBracketAT4	TrunnionPivotBracketAT4	Rev03	01/01/2020
EklemBaglantisi_AT4		H	Cikaricilar-iticiler	100_Luk_Piston	75	28,5	50	16	25	14	20	13	50	25	M12	36	41	70	2-M12x35	3	YOK	TKSPEBAT10006	YOK	EklemBaglantisiAT4	TrunnionPivotBracketAT4	TrunnionPivotBracketAT4	Rev03	01/01/2020
EklemBaglantisi_AT4		H	Cikaricilar-iticiler	125_Lik_Piston	75	28,5	50	16	25	14	20	13	50	25	M12	36	41	70	2-M12x35	3	YOK	TKSPEBAT12507	YOK	EklemBaglantisiAT4	TrunnionPivotBracketAT4	TrunnionPivotBracketAT4	Rev03	01/01/2020
EklemBaglantisi_AT4		H	Cikaricilar-iticiler	160_Lik_Piston	92	40	60	22,5	32	18	26	17	60	30	M16	48	53	70	2-M16x40	3	YOK	TKSPEBAT16008	YOK	EklemBaglantisiAT4	TrunnionPivotBracketAT4	TrunnionPivotBracketAT4	Rev03	01/01/2020
EklemBaglantisi_AT4		H	Cikaricilar-iticiler	200_Luk_Piston	92	40	60	22,5	32	18	26	17	60	30	M16	48	53	70	2-M20x50	3	YOK	TKSPEBAT20009	YOK	EklemBaglantisiAT4	TrunnionPivotBracketAT4	TrunnionPivotBracketAT4	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA020EklemBaglantisiMP; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA020EklemBaglantisiMP" ("ParcaAdi", "Cikaricilar-iticiler", "Malzeme_Sinifi", "Grup", "Tip", "Kritiklik_No", "STQ_NORMU", "TOFASCP", "TOFASCN", "Depo_KoduCP", "Depo_KoduCN", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
EklemBaglantisi_MP		H	Cikaricilar-iticiler	32_Lik_Piston	3	YOK	TKSPEBCP03201	TKSPEBCN03201	YOK	YOK	EklemBaglantisi_MP	ClevisMount_MP	CernieraAnterioreMaschio	Rev03	01/01/2020
EklemBaglantisi_MP		H	Cikaricilar-iticiler	40_Lik_Piston	3	YOK	TKSPEBCP04002	TKSPEBCN04002	YOK	YOK	EklemBaglantisi_MP	ClevisMount_MP	CernieraAnterioreMaschio	Rev03	01/01/2020
EklemBaglantisi_MP		H	Cikaricilar-iticiler	50_Lik_Piston	3	YOK	TKSPEBCP05003	TKSPEBCN05003	YOK	YOK	EklemBaglantisi_MP	ClevisMount_MP	CernieraAnterioreMaschio	Rev03	01/01/2020
EklemBaglantisi_MP		H	Cikaricilar-iticiler	63_Luk_Piston	3	YOK	TKSPEBCP06304	TKSPEBCN06304	YOK	YOK	EklemBaglantisi_MP	ClevisMount_MP	CernieraAnterioreMaschio	Rev03	01/01/2020
EklemBaglantisi_MP		H	Cikaricilar-iticiler	80_Lik_Piston	3	YOK	TKSPEBCP08005	TKSPEBCN08005	YOK	YOK	EklemBaglantisi_MP	ClevisMount_MP	CernieraAnterioreMaschio	Rev03	01/01/2020
EklemBaglantisi_MP		H	Cikaricilar-iticiler	100_Luk_Piston	3	YOK	TKSPEBCP10006	TKSPEBCN10006	YOK	YOK	EklemBaglantisi_MP	ClevisMount_MP	CernieraAnterioreMaschio	Rev03	01/01/2020
EklemBaglantisi_MP		H	Cikaricilar-iticiler	125_Lik_Piston	3	YOK	TKSPEBCP12507	TKSPEBCN12507	YOK	YOK	EklemBaglantisi_MP	ClevisMount_MP	CernieraAnterioreMaschio	Rev03	01/01/2020
EklemBaglantisi_MP		H	Cikaricilar-iticiler	160_Lik_Piston	3	YOK	TKSPEBCP16008	TKSPEBCN16008	YOK	YOK	EklemBaglantisi_MP	ClevisMount_MP	CernieraAnterioreMaschio	Rev03	01/01/2020
EklemBaglantisi_MP		H	Cikaricilar-iticiler	200_Luk_Piston	3	YOK	TKSPEBCP20009	TKSPEBCN20009	YOK	YOK	EklemBaglantisi_MP	ClevisMount_MP	CernieraAnterioreMaschio	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA020İPTAL; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA020İPTAL" ("ParcaAdi", "Cikaricilar-iticiler", "Tip", "S(mm)", "D(mm)", "D1(mm)", "D2(mm)", "M", "Dp(mm)", "Md(mm)", "Ml(mm)", "H(mm)", "H1(mm)", "H2(mm)", "H3(mm)", "L(mm)", "L1(mm)", "W(mm)", "W1(mm)", "W2(mm)", "E(mm)", "E1(mm)", "e2(mm)", "e3(mm)", "f(mm)", "Filk(N)", "Fson(N)", "FIBRO", "SPECiALSPRiNGS", "GSB", "MBT", "SANKYO", "OMCR", "BALLUF", "FESTO", "ISO", "TOFAS", "MOELLER", "PERMA", "IFM", "DAYTON", "NEWSTARK", "Revizyon_Numarasi", "Revizyon_Tarihi", "FIRMA", "TERCIH", "FOTOSANKYO") FROM stdin;
FlansCikariciTip2		Ø60-Kurs60	60	60	80	18	M16	10	30	40	150	67,5	100	15	160	135	155	125	84	25	55	40	65	30	250	1000	YOK	YOK	YOK	YOK	SBLFT 60	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017	SANKYO	1	SANKYO
FlansCikariciTip2		Ø65-Kurs80	80	65	85	18	M16	10	30	40	185	97,5	135	15	195	170	160	130	89	25	55	40	65	30	200	1000	YOK	YOK	YOK	YOK	SBLFT 80	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			SANKYO
FlansCikariciTip2		Ø75-Kurs120	120	75	95	18	M16	10	30	40	240	122,5	190	20	260	230	170	140	100	30	60	45	70	40	224	1569	YOK	YOK	YOK	YOK	SBLFT 120	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			SANKYO
\.


--
-- Data for Name: ISEDA021EklemBaglantisiCI; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA021EklemBaglantisiCI" ("ParcaAdi", "Cikaricilar-iticiler", "Malzeme_Sinifi", "Grup", "Tip", "32", "40", "50", "63", "80", "100", "125", "160", "200", "M", "Md(mm)", "Ml(mm)", "CB(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi", "F30", "F31", "F32", "F33", "F34", "F35", "F36", "F37", "F38") FROM stdin;
EklemBaglantisiCI		H	Cikaricilar-iticiler	32_Lik_Piston	True	False	False	False	False	False	False	False	False	M6	18	23	50	-	3	CI_032	TKSPEBCI03201	YOK	EklemBaglantisiCI	CenterTrunnionMount	CilindroAriaCernieraIntermedia	Rev03	01/01/2020									
EklemBaglantisiCI		H	Cikaricilar-iticiler	40_Lik_Piston	False	True	False	False	False	False	False	False	False	M8	24	29	60	-	3	CI_040	TKSPEBCI04002	YOK	EklemBaglantisiCI	CenterTrunnionMount	CilindroAriaCernieraIntermedia	Rev03	01/01/2020									
EklemBaglantisiCI		H	Cikaricilar-iticiler	50_Lik_Piston	False	False	True	False	False	False	False	False	False	M8	24	29	60	-	3	CI_050	TKSPEBCI05003	YOK	EklemBaglantisiCI	CenterTrunnionMount	CilindroAriaCernieraIntermedia	Rev03	01/01/2020									
EklemBaglantisiCI		H	Cikaricilar-iticiler	63_Luk_Piston	False	False	False	True	False	False	False	False	False	M10	24	29	60	-	3	CI_063	TKSPEBCI06304	YOK	EklemBaglantisiCI	CenterTrunnionMount	CilindroAriaCernieraIntermedia	Rev03	01/01/2020									
EklemBaglantisiCI		H	Cikaricilar-iticiler	80_Lik_Piston	False	False	False	False	True	False	False	False	False	M10	30	35	60	-	3	CI_080	TKSPEBCI08005	YOK	EklemBaglantisiCI	CenterTrunnionMount	CilindroAriaCernieraIntermedia	Rev03	01/01/2020									
EklemBaglantisiCI		H	Cikaricilar-iticiler	100_Luk_Piston	False	False	False	False	False	True	False	False	False	M12	36	41	70	-	3	CI_100	TKSPEBCI10006	YOK	EklemBaglantisiCI	CenterTrunnionMount	CilindroAriaCernieraIntermedia	Rev03	01/01/2020									
EklemBaglantisiCI		H	Cikaricilar-iticiler	125_Lik_Piston	False	False	False	False	False	False	True	False	False	M12	36	41	70	-	3	CI_125	TKSPEBCI12507	YOK	EklemBaglantisiCI	CenterTrunnionMount	CilindroAriaCernieraIntermedia	Rev03	01/01/2020									
EklemBaglantisiCI		H	Cikaricilar-iticiler	160_Lik_Piston	False	False	False	False	False	False	False	True	False	M16	48	53	70	-	3	CI_160	TKSPEBCI16008	YOK	EklemBaglantisiCI	CenterTrunnionMount	CilindroAriaCernieraIntermedia	Rev03	01/01/2020									
EklemBaglantisiCI		H	Cikaricilar-iticiler	200_Luk_Piston	False	False	False	False	False	False	False	False	True	M16	48	53	70	-	3	CI_200	TKSPEBCI20009	YOK	EklemBaglantisiCI	CenterTrunnionMount	CilindroAriaCernieraIntermedia	Rev03	01/01/2020									
\.


--
-- Data for Name: ISEDA021İPTAL; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA021İPTAL" ("ParcaAdi", "Cikaricilar-iticiler", "Tip", "Kurs(mm)", "Filk(N)", "Fson(N)", "M", "Md(mm)", "Ml(mm)", "A(mm)", "B(mm)", "C(mm)", "D(mm)", "E(mm)", "F(mm)", "G(mm)", "I(mm)", "J(mm)", "K(mm)", "L(mm)", "J1(mm)", "N(mm)", "O(mm)", "P(mm)", "R(mm)", "S(mm)", "T(mm)", "U(mm)", "V(mm)", "Y(mm)", "Z(mm)", "W(mm)", "X(mm)", "a1(mm)", "b1(mm)", "c1(mm)", "d1(mm)", "e1(mm)", "f1(mm)", "g1(mm)", "l1(mm)", "k1(mm)", "FIBRO", "SPECiALSPRiNGS", "GSB", "MBT", "SANKYO", "OMCR", "BALLUF", "FESTO", "ISO", "TOFAS", "MOELLER", "PERMA", "IFM", "DAYTON", "NEWSTARK", "Revizyon_Numarasi", "Revizyon_Tarihi", "FIRMA", "TERCIH", "FOTOSANKYO") FROM stdin;
FlansCikariciTip3		Kurs50	50	160	810	M12	24	32	30	55	12,5	130	100	80	50	40	20	28	25	15	60	10	34	18	30	166	8	6,5	15	10	58	20	108	30	40	40	95	65	28	13	20	YOK	YOK	YOK	YOK	SOFLV50	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017	SANKYO	1	SANKYO
FlansCikariciTip3		Kurs80	80	200	1020	M16	30	40	55	58	12,5	150	120	90	60	0	35	28	25	15	75	10	50	20	30	260	5	6,5	15	15	100	20	160	30	45	40	103	70	30	18	18	YOK	YOK	YOK	YOK	SOFLV80	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			SANKYO
\.


--
-- Data for Name: ISEDA022FlansCikariciTip; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA022FlansCikariciTip" ("ParcaAdi", "Cikaricilar-iticiler", "Malzeme_Sinifi", "Grup", "Tip", "Kurs(mm)", "Md(mm)", "Ml(mm)", "MOlcu(mm)", "M", "MBaglanti", "Kritiklik_No", "STQ_NORMU", "SANKYO", "TOFAS", "TOFASALTTAN", "TOFASYANDAN", "Depo_KoduALTTAN", "Depo_KoduYANDAN", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
FlansCikarici		N	Cikaricilar-iticiler	Tip1	50	36	41	50	M12	4-M12x50	2	YOK	SOFLV50	OZEL	TKSVFC06505001	YOK	YOK	YOK	FlansCikarici	FlangeLifter	MolleTraliccio	Rev03	01/01/2020
FlansCikarici		N	Cikaricilar-iticiler	Tip2	50	36	41	40	M12	4-M12x40	2	YOK	SOFLH50	YOK	YOK	TKSHFC06505002	YOK	YOK	FlansCikarici	FlangeLifter	MolleTraliccio	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA023KalipMerkezlemePimi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA023KalipMerkezlemePimi" ("ParcaAdi", "Merkezleme Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Md(mm)", "Ml(mm)", "MOlcu(mm)", "Mbaglanti", "M1", "A(mm)", "B(mm)", "C(mm)", "D(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
KalipMerkezlemePimi		N	Cikaricilar-iticiler	Tektip	36	41	50	1-M12x50	M12	55	40	30	19	3	PDC_04055	TKSMPM04005501	Y3560001440	KalipMerkezlemePimi	CenteringPin	PernoDiCentraggio	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA024DerinCekmeSensorDayama; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA024DerinCekmeSensorDayama" ("ParcaAdi", "Merkezleme Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "L(mm)", "M", "Md(mm)", "Ml(mm)", "CB(mm)", "Baglanti", "Olcu", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi", "F23", "F24", "F25", "F26", "F27", "F28", "F29", "F30", "F31") FROM stdin;
DerinCekmeSensorDayama		N	Merkezleme Elemanları	120	120	M12	48	53	45	1-M12x45	105x120x30	2	YOK	TKSDCS120M1201	Y3560001441	DerinCekmeSensorDayama	GageForSensor	RiferimentoConSensore	Rev03	01/01/2020									
DerinCekmeSensorDayama		N	Merkezleme Elemanları	150	150	M12	48	53	45	1-M12x45	105x150x30	2	YOK	TKSDCS150M1202	Y3560001442	DerinCekmeSensorDayama	GageForSensor	RiferimentoConSensore	Rev03	01/01/2020									
DerinCekmeSensorDayama		N	Merkezleme Elemanları	180	180	M12	48	53	45	1-M12x45	105x180x30	2	YOK	TKSDCS180M1203	Y3560001443	DerinCekmeSensorDayama	GageForSensor	RiferimentoConSensore	Rev03	01/01/2020									
DerinCekmeSensorDayama		N	Merkezleme Elemanları	250	250	M12	48	53	45	1-M12x45	105x250x30	2	YOK	TKSDCS250M1204	Y3560001444	DerinCekmeSensorDayama	GageForSensor	RiferimentoConSensore	Rev03	01/01/2020									
\.


--
-- Data for Name: ISEDA024iptal; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA024iptal" ("ParcaAdi", "Cikaricilar-iticiler", "Tip", "UL(mm)", "NH(mm)", "TH(mm)", "C(mm)", "CR(mm)", "HB(mm)", "HC(mm)", "G(mm)", "FN(mm)", "FK(mm)", "M", "Md(mm)", "Ml(mm)", "CB(mm)", "Baglanti", "STQ_NORMU", "TOFAS") FROM stdin;
PistonEklemBaglantisi_4		32_Lik_Piston	46	18	32	10,5	12	6,6	11	8	30	15	M6	18	23	50	2-M6x20	YOK	TKSPEBAT03201
PistonEklemBaglantisi_4		40_Lik_Piston	55	21	36	12	16	9	15	9	36	18	M8	24	29	60	2-M8x25	YOK	TKSPEBAT04002
PistonEklemBaglantisi_4		50_Lik_Piston	55	21	36	12	16	9	15	9	36	18	M8	24	29	60	2-M8x25	YOK	TKSPEBAT05003
PistonEklemBaglantisi_4		63_Luk_Piston	65	23	42	13	20	11	18	11	40	20	M10	24	29	60	2-M8x25	YOK	TKSPEBAT06304
PistonEklemBaglantisi_4		80_Lik_Piston	65	23	42	13	20	11	18	11	40	20	M10	30	35	60	2-M10x30	YOK	TKSPEBAT08005
PistonEklemBaglantisi_4		100_Luk_Piston	75	28,5	50	16	25	14	20	13	50	25	M12	36	41	70	2-M12x35	YOK	TKSPEBAT10006
PistonEklemBaglantisi_4		125_Lik_Piston	75	28,5	50	16	25	14	20	13	50	25	M12	36	41	70	2-M12x35	YOK	TKSPEBAT12507
PistonEklemBaglantisi_4		160_Lik_Piston	92	40	60	22,5	32	18	26	17	60	30	M16	48	53	70	2-M16x40	YOK	TKSPEBAT16008
PistonEklemBaglantisi_4		200_Luk_Piston	92	40	60	22,5	32	18	26	17	60	30	M16	48	53	70	2-M20x50	YOK	TKSPEBAT20009
\.


--
-- Data for Name: ISEDA025DayamaSKesim; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA025DayamaSKesim" ("ParcaAdi", "Merkezleme Elemanları", "Malzeme_Sinifi", "Grup", "h(mm)", "Ml(mm)", "Md(mm)", "Mbaglanti", "M", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
DayamaSKesim		N	Merkezleme Elemanları	50	48	53	2-M12x35	M12	3	YOK	TKSDSD	YOK	DayamaSKesim	GagesForFlatS	RiferimentoConS	Rev03	01/01/2020
DayamaSKesim		N	Merkezleme Elemanları	75	48	53	2-M12x35	M12	3	YOK	TKSDSD	YOK	DayamaSKesim	GagesForFlatS	RiferimentoConS	Rev03	01/01/2020
DayamaSKesim		N	Merkezleme Elemanları	100	48	53	2-M12x35	M12	3	YOK	TKSDSD	YOK	DayamaSKesim	GagesForFlatS	RiferimentoConS	Rev03	01/01/2020
DayamaSKesim		N	Merkezleme Elemanları	125	48	53	2-M12x35	M12	3	YOK	TKSDSD	YOK	DayamaSKesim	GagesForFlatS	RiferimentoConS	Rev03	01/01/2020
DayamaSKesim		N	Merkezleme Elemanları	150	48	53	2-M12x35	M12	3	YOK	TKSDSD	YOK	DayamaSKesim	GagesForFlatS	RiferimentoConS	Rev03	01/01/2020
DayamaSKesim		N	Merkezleme Elemanları	175	48	53	2-M12x35	M12	3	YOK	TKSDSD	YOK	DayamaSKesim	GagesForFlatS	RiferimentoConS	Rev03	01/01/2020
DayamaSKesim		N	Merkezleme Elemanları	200	48	53	2-M12x35	M12	3	YOK	TKSDSD	YOK	DayamaSKesim	GagesForFlatS	RiferimentoConS	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA026HTipiPnoKaldiriciTip1; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA026HTipiPnoKaldiriciTip1" ("ParcaAdi", "Cikaricilar-iticiler", "Malzeme_Sinifi", "Grup", "Tip", "OzelDurumlar", "SKurs(mm)", "M", "M1", "M2", "Md(mm)", "Ml(mm)", "D(mm)", "A(mm)", "B(mm)", "C1(mm)", "C2(mm)", "NOT", "D1(mm)", "L(mm)", "L1(mm)", "L2(mm)", "L3(mm)", "L4(mm)", "L5(mm)", "L6(mm)", "W(mm)", "W1(mm)", "W2(mm)", "W3(mm)", "T1(mm)", "D2(mm)", "L7(mm)", "D3(mm)", "L8(mm)", "T2(mm)", "D4(mm)", "L9(mm)", "Baglanti", "D5(mm)", "Deneme", "Kritiklik_No", "STQ_NORMU", "TOFAS", "SANKYO", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	Tip1	50	M12	M16	M16	48	53	40	138	130	85	50	Baglanti 1/4"	52	270	240	215	190	66	60	120	75	45	25	28	19	70	75	30	56	19	14	106	M16x50	18	A1	1	YOK	TKSPGC04005001	HLSGC 40-50	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	Tip1	75	M12	M16	M16	48	53	40	163	155	85	50	Baglanti 1/4"	52	270	240	215	190	66	60	120	75	45	25	28	19	70	75	30	56	19	14	106	M16x50	18	A2	1	YOK	TKSPGC04007502	HLSGC 40-75	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	Tip1	100	M12	M16	M16	48	53	40	188	180	85	50	Baglanti 1/4"	52	270	240	215	190	66	60	120	75	45	25	28	19	70	75	30	56	19	14	106	M16x50	18	A3	1	YOK	TKSPGC04010003	HLSGC 40-100	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	Tip1	125	M12	M16	M16	48	53	40	213	205	85	50	Baglanti 1/4"	52	270	240	215	190	66	60	120	75	45	25	28	19	70	75	30	56	19	14	106	M16x50	18	A4	1	YOK	TKSPGC04012504	HLSGC 40-125	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	Tip1	150	M12	M16	M16	48	53	40	238	230	85	50	Baglanti 1/4"	52	270	240	215	190	66	60	120	75	45	25	28	19	70	75	30	56	19	14	106	M16x50	18	A5	1	YOK	TKSPGC04015005	HLSGC 40-150	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	Tip1	175	M12	M16	M16	48	53	40	263	255	85	50	Baglanti 1/4"	52	270	240	215	190	66	60	120	75	45	25	28	19	70	75	30	56	19	14	106	M16x50	18	A6	1	YOK	TKSPGC04017506	HLSGC 40-175	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	Tip1	200	M12	M16	M16	48	53	40	288	280	85	50	Baglanti 1/4"	52	270	240	215	190	66	60	120	75	45	25	28	19	70	75	30	56	19	14	106	M16x50	18	A7	1	YOK	TKSPGC04020007	HLSGC 40-200	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	Tip1	225	M12	M16	M16	48	53	40	313	305	85	50	Baglanti 1/4"	52	270	240	215	190	66	60	120	75	45	25	28	19	70	75	30	56	19	14	106	M16x50	18	A8	1	YOK	TKSPGC04022508	HLSGC 40-225	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	Tip1	250	M12	M16	M16	48	53	40	338	330	85	50	Baglanti 1/4"	52	270	240	215	190	66	60	120	75	45	25	28	19	70	75	30	56	19	14	106	M16x50	18	A9	1	YOK	TKSPGC04025009	HLSGC 40-250	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	Tip1	275	M12	M16	M16	48	53	40	363	355	85	50	Baglanti 1/4"	52	270	240	215	190	66	60	120	75	45	25	28	19	70	75	30	56	19	14	106	M16x50	18	A10	1	YOK	TKSPGC04027510	HLSGC 40-275	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	Tip1	300	M12	M16	M16	48	53	40	388	380	85	50	Baglanti 1/4"	52	270	240	215	190	66	60	120	75	45	25	28	19	70	75	30	56	19	14	106	M16x50	18	A11	1	YOK	TKSPGC04030011	HLSGC 40-300	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	Tip1	50	M12	M16	M16	48	53	63	148	130	95	60	Baglanti 3/8"	75	290	260	235	215	96	70	145	90	70	30	32	19	70	75	30	56	19	14	106	M16x50	18	A12	1	YOK	TKSPGC06305012	HLSGC 63-50	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	Tip1	75	M12	M16	M16	48	53	63	173	155	95	60	Baglanti 3/8"	75	290	260	235	215	96	70	145	90	70	30	32	19	70	75	30	56	19	14	106	M16x50	18	A13	1	YOK	TKSPGC06307513	HLSGC 63-75	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	Tip1	100	M12	M16	M16	48	53	63	198	180	95	60	Baglanti 3/8"	75	290	260	235	215	96	70	145	90	70	30	32	19	70	75	30	56	19	14	106	M16x50	18	A14	1	YOK	TKSPGC06310014	HLSGC 63-100	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	Tip1	125	M12	M16	M16	48	53	63	223	205	95	60	Baglanti 3/8"	75	290	260	235	215	96	70	145	90	70	30	32	19	70	75	30	56	19	14	106	M16x50	18	A15	1	YOK	TKSPGC06312515	HLSGC 63-125	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	Tip1	150	M12	M16	M16	48	53	63	248	230	95	60	Baglanti 3/8"	75	290	260	235	215	96	70	145	90	70	30	32	19	70	75	30	56	19	14	106	M16x50	18	A16	1	YOK	TKSPGC06315016	HLSGC 63-150	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	Tip1	175	M12	M16	M16	48	53	63	273	255	95	60	Baglanti 3/8"	75	290	260	235	215	96	70	145	90	70	30	32	19	70	75	30	56	19	14	106	M16x50	18	A17	1	YOK	TKSPGC06317517	HLSGC 63-175	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	Tip1	200	M12	M16	M16	48	53	63	298	280	95	60	Baglanti 3/8"	75	290	260	235	215	96	70	145	90	70	30	32	19	70	75	30	56	19	14	106	M16x50	18	A18	1	YOK	TKSPGC06320018	HLSGC 63-200	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	Tip1	225	M12	M16	M16	48	53	63	323	305	95	60	Baglanti 3/8"	75	290	260	235	215	96	70	145	90	70	30	32	19	70	75	30	56	19	14	106	M16x50	18	A19	1	YOK	TKSPGC06322519	HLSGC 63-225	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	Tip1	250	M12	M16	M16	48	53	63	348	330	95	60	Baglanti 3/8"	75	290	260	235	215	96	70	145	90	70	30	32	19	70	75	30	56	19	14	106	M16x50	18	A20	1	YOK	TKSPGC06325020	HLSGC 63-250	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	Tip1	275	M12	M16	M16	48	53	63	373	355	95	60	Baglanti 3/8"	75	290	260	235	215	96	70	145	90	70	30	32	19	70	75	30	56	19	14	106	M16x50	18	A21	1	YOK	TKSPGC06327521	HLSGC 63-275	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	Tip1	300	M12	M16	M16	48	53	63	398	380	95	60	Baglanti 3/8"	75	290	260	235	215	96	70	145	90	70	30	32	19	70	75	30	56	19	14	106	M16x50	18	A22	1	YOK	TKSPGC06330022	HLSGC 63-300	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	DuzPlakali	50	M12	M16	M16	48	53	40	138	130	85	50	Baglanti 1/4"	52	270	240	215	190	120	60	120	75	45	25	28	19	70	75	30	56	19	14	75	M16x50	18	A23	1	YOK	TKSPGF04005023	HLSGF 40-50	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	DuzPlakali	75	M12	M16	M16	48	53	40	163	155	85	50	Baglanti 1/4"	52	270	240	215	190	120	60	120	75	45	25	28	19	70	75	30	56	19	14	75	M16x50	18	A24	1	YOK	TKSPGF04007524	HLSGF 40-75	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	DuzPlakali	100	M12	M16	M16	48	53	40	188	180	85	50	Baglanti 1/4"	52	270	240	215	190	120	60	120	75	45	25	28	19	70	75	30	56	19	14	75	M16x50	18	A25	1	YOK	TKSPGF04010025	HLSGF 40-100	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	DuzPlakali	125	M12	M16	M16	48	53	40	213	205	85	50	Baglanti 1/4"	52	270	240	215	190	66	60	120	75	45	25	28	19	70	75	30	56	19	14	75	M16x50	18	A26	1	YOK	TKSPGF04012526	HLSGF 40-125	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	DuzPlakali	150	M12	M16	M16	48	53	40	238	230	85	50	Baglanti 1/4"	52	270	240	215	190	120	60	120	75	45	25	28	19	70	75	30	56	19	14	75	M16x50	18	A27	1	YOK	TKSPGF04015027	HLSGF 40-150	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	DuzPlakali	175	M12	M16	M16	48	53	40	263	255	85	50	Baglanti 1/4"	52	270	240	215	190	120	60	120	75	45	25	28	19	70	75	30	56	19	14	75	M16x50	18	A28	1	YOK	TKSPGF04017528	HLSGF 40-175	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	DuzPlakali	200	M12	M16	M16	48	53	40	288	280	85	50	Baglanti 1/4"	52	270	240	215	190	120	60	120	75	45	25	28	19	70	75	30	56	19	14	75	M16x50	18	A29	1	YOK	TKSPGF04020029	HLSGF 40-200	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	DuzPlakali	225	M12	M16	M16	48	53	40	313	305	85	50	Baglanti 1/4"	52	270	240	215	190	120	60	120	75	45	25	28	19	70	75	30	56	19	14	75	M16x50	18	A30	1	YOK	TKSPGF04022530	HLSGF 40-225	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	DuzPlakali	250	M12	M16	M16	48	53	40	338	330	85	50	Baglanti 1/4"	52	270	240	215	190	120	60	120	75	45	25	28	19	70	75	30	56	19	14	75	M16x50	18	A31	1	YOK	TKSPGF04025031	HLSGF 40-250	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	DuzPlakali	275	M12	M16	M16	48	53	40	363	355	85	50	Baglanti 1/4"	52	270	240	215	190	120	60	120	75	45	25	28	19	70	75	30	56	19	14	75	M16x50	18	A32	1	YOK	TKSPGF04027532	HLSGF 40-275	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D40	DuzPlakali	300	M12	M16	M16	48	53	40	388	380	85	50	Baglanti 1/4"	52	270	240	215	190	120	60	120	75	45	25	28	19	70	75	30	56	19	14	75	M16x50	18	A33	1	YOK	TKSPGF04030033	HLSGF 40-300	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	DuzPlakali	50	M12	M16	M16	48	53	63	148	130	95	60	Baglanti 3/8"	75	290	260	235	215	145	70	145	90	70	30	32	19	70	75	30	56	19	14	75	M16x50	18	A34	1	YOK	TKSPGF06305034	HLSGF 63-50	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	DuzPlakali	75	M12	M16	M16	48	53	63	173	155	95	60	Baglanti 3/8"	75	290	260	235	215	145	70	145	90	70	30	32	19	70	75	30	56	19	14	75	M16x50	18	A35	1	YOK	TKSPGF06307535	HLSGF 63-75	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	DuzPlakali	100	M12	M16	M16	48	53	63	198	180	95	60	Baglanti 3/8"	75	290	260	235	215	145	70	145	90	70	30	32	19	70	75	30	56	19	14	75	M16x50	18	A36	1	YOK	TKSPGF06310036	HLSGF 63-100	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	DuzPlakali	125	M12	M16	M16	48	53	63	223	205	95	60	Baglanti 3/8"	75	290	260	235	215	145	70	145	90	70	30	32	19	70	75	30	56	19	14	75	M16x50	18	A37	1	YOK	TKSPGF06312537	HLSGF 63-125	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	DuzPlakali	150	M12	M16	M16	48	53	63	248	230	95	60	Baglanti 3/8"	75	290	260	235	215	145	70	145	90	70	30	32	19	70	75	30	56	19	14	75	M16x50	18	A38	1	YOK	TKSPGF06315038	HLSGF 63-150	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	DuzPlakali	175	M12	M16	M16	48	53	63	273	255	95	60	Baglanti 3/8"	75	290	260	235	215	145	70	145	90	70	30	32	19	70	75	30	56	19	14	75	M16x50	18	A39	1	YOK	TKSPGF06317539	HLSGF 63-175	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	DuzPlakali	200	M12	M16	M16	48	53	63	298	280	95	60	Baglanti 3/8"	75	290	260	235	215	145	70	145	90	70	30	32	19	70	75	30	56	19	14	75	M16x50	18	A40	1	YOK	TKSPGF06320040	HLSGF 63-200	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	DuzPlakali	225	M12	M16	M16	48	53	63	323	305	95	60	Baglanti 3/8"	75	290	260	235	215	145	70	145	90	70	30	32	19	70	75	30	56	19	14	75	M16x50	18	A41	1	YOK	TKSPGF06322541	HLSGF 63-225	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	DuzPlakali	250	M12	M16	M16	48	53	63	348	330	95	60	Baglanti 3/8"	75	290	260	235	215	145	70	145	90	70	30	32	19	70	75	30	56	19	14	75	M16x50	18	A42	1	YOK	TKSPGF06325042	HLSGF 63-250	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	DuzPlakali	275	M12	M16	M16	48	53	63	373	355	95	60	Baglanti 3/8"	75	290	260	235	215	145	70	145	90	70	30	32	19	70	75	30	56	19	14	75	M16x50	18	A43	1	YOK	TKSPGF06327543	HLSGF 63-275	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
HTipiPnoKaldiriciTip1		H	Cikaricilar-iticiler	D63	DuzPlakali	300	M12	M16	M16	48	53	63	398	380	95	60	Baglanti 3/8"	75	290	260	235	215	145	70	145	90	70	30	32	19	70	75	30	56	19	14	75	M16x50	18	A44	1	YOK	TKSPGF06330044	HLSGF 63-300	YOK	HTipiPnoKaldiriciTip1	Lifter1	Sollevare1	Rev03	01/01/2020
																																																		
\.


--
-- Data for Name: ISEDA028PozitifReturnTipA; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA028PozitifReturnTipA" ("ParcaAdi", "Kam Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "A(mm)", "B(mm)", "C(mm)", "D(mm)", "E(mm)", "F(mm)", "G(mm)", "Dp(mm)", "Dc1(mm)", "Dc2(mm)", "Dh(mm)", "H(mm)", "Kod2", "Baglanti", "M", "Md(mm)", "Ml(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
PozitifReturnTipA		N	Kam Elemanları	35	35	15	7	20	18	29	20	10	18	11	11	28	01	2-M10x30	M10	30	35	3	GA_35	TKSPRPA35	Y3560001571	PozitifReturnTipA	PositiveReturnPlateA	GancioDiSicurezzaA	Rev03	01/01/2020
PozitifReturnTipA		N	Kam Elemanları	60	60	40	10	20	18	29	20	10	18	11	11	28	02	2-M10x30	M10	30	35	3	GA_60	TKSPRPA65	Y3560001572	PozitifReturnTipA	PositiveReturnPlateA	GancioDiSicurezzaA	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA029PozitifReturnTipB; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA029PozitifReturnTipB" ("ParcaAdi", "Kam Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "A(mm)", "B(mm)", "C(mm)", "D(mm)", "E(mm)", "F(mm)", "F1(mm)", "G(mm)", "Dc1(mm)", "Dc2(mm)", "Dh(mm)", "H(mm)", "L(mm)", "M", "Md(mm)", "Ml(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
PozitifReturnTipB		N	Kam Elemanları	60x171	60	30	10	25	32	42	47	25	20	13	15	16	171	M12	48	53	2-M12x50	3	YOK	TKSPRPB06017101	Y3560001573	PozitifReturnTipB	PositiveReturnPlateB	GancioDiSicurezzaB	Rev03	01/01/2020
PozitifReturnTipB		N	Kam Elemanları	60x191	60	30	10	25	32	42	47	25	20	13	15	16	191	M12	48	53	2-M12x50	3	YOK	TKSPRPB06019102	Y3560001574	PozitifReturnTipB	PositiveReturnPlateB	GancioDiSicurezzaB	Rev03	01/01/2020
PozitifReturnTipB		N	Kam Elemanları	80x171	80	40	10	25	32	42	47	25	20	13	15	16	171	M12	48	53	2-M12x50	3	YOK	TKSPRPB08017103	Y3560001575	PozitifReturnTipB	PositiveReturnPlateB	GancioDiSicurezzaB	Rev03	01/01/2020
PozitifReturnTipB		N	Kam Elemanları	80x191	80	40	10	25	32	42	47	25	20	13	15	16	191	M12	48	53	2-M12x50	3	YOK	TKSPRPB08019104	Y3560001576	PozitifReturnTipB	PositiveReturnPlateB	GancioDiSicurezzaB	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA030PozitifReturnKarsilik; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA030PozitifReturnKarsilik" ("ParcaAdi", "Kam Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "w(mm)", "l(mm)", "a(mm)", "t(mm)", "l1(mm)", "l2(mm)", "d(mm)", "d1(mm)", "h(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
PozitifReturnKarsilik		N	Kam Elemanları	25x60	25	60	11	30	30	15	11	17,5	18	M10	40	45	40	2-M10x50	3	YOK	TKSPRK02506001	YOK	PozitifReturnKarsilik	RetainerPlate	Gancio	Rev03	01/01/2020
PozitifReturnKarsilik		N	Kam Elemanları	32x60	32	60	16	38	30	15	13	20	23	M12	40	45	40	2-M10x50	3	YOK	TKSPRK03206002	YOK	PozitifReturnKarsilik	RetainerPlate	Gancio	Rev03	01/01/2020
PozitifReturnKarsilik		N	Kam Elemanları	32x80	32	80	16	38	40	20	13	20	23	M12	48	53	40	2-M12x50	3	YOK	TKSPRK03208003	YOK	PozitifReturnKarsilik	RetainerPlate	Gancio	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA031PistonBaglantisiAD; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA031PistonBaglantisiAD" ("ParcaAdi", "Cikaricilar-iticiler", "Malzeme_Sinifi", "Grup", "Tip", "A(mm)", "B(mm)", "C(mm)", "D(mm)", "E(mm)", "F(mm)", "G(mm)", "J(mm)", "K(mm)", "L(mm)", "P(mm)", "R(mm)", "S(mm)", "M1", "Md1(mm)", "Ml1(mm)", "M", "Md(mm)", "Ml(mm)", "CB(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
PistonBaglantisiAD		H	Cikaricilar-iticiler	32_Lik_Piston	91	90	20	20	25	12	4	50	71	9	51	32	71	M6	18	23	M8	24	29	35	4-M8x35	3	YOK	TKSPEBAD03201	YOK	PistonBaglantisiAD	TrunnionSupportMounting	TrunnionSupportMounting	Rev03	01/01/2020
PistonBaglantisiAD		H	Cikaricilar-iticiler	40_Lik_Piston	110	121	20	22	50	12	4	60	87	12	66	36	88	M8	24	29	M10	24	29	35	4-M10x35	3	YOK	TKSPEBAD04002	YOK	PistonBaglantisiAD	TrunnionSupportMounting	TrunnionSupportMounting	Rev03	01/01/2020
PistonBaglantisiAD		H	Cikaricilar-iticiler	50_Lik_Piston	121	110	20	22	50	12	4	60	87	12	77	36	99	M8	24	29	M10	24	29	35	4-M10x35	3	YOK	TKSPEBAD05003	YOK	PistonBaglantisiAD	TrunnionSupportMounting	TrunnionSupportMounting	Rev03	01/01/2020
PistonBaglantisiAD		H	Cikaricilar-iticiler	63_Luk_Piston	140	160	25	24	63	14	4,5	70	116	14	92	42	116	M10	24	29	M12	36	41	50	4-M12x50	3	YOK	TKSPEBAD06304	YOK	PistonBaglantisiAD	TrunnionSupportMounting	TrunnionSupportMounting	Rev03	01/01/2020
PistonBaglantisiAD		H	Cikaricilar-iticiler	80_Lik_Piston	160	140	25	24	63	14	4,5	70	116	14	112	42	136	M10	30	35	M12	36	41	50	4-M12x50	3	YOK	TKSPEBAD08005	YOK	PistonBaglantisiAD	TrunnionSupportMounting	TrunnionSupportMounting	Rev03	01/01/2020
PistonBaglantisiAD		H	Cikaricilar-iticiler	100_Luk_Piston	200	228	30	35	89	14	4,5	90	164	18	130	50	165	M12	36	41	M16	48	53	55	4-M12x55	3	YOK	TKSPEBAD10006	YOK	PistonBaglantisiAD	TrunnionSupportMounting	TrunnionSupportMounting	Rev03	01/01/2020
PistonBaglantisiAD		H	Cikaricilar-iticiler	125_Lik_Piston	228	200	30	35	89	14	4,5	90	164	18	158	50	193	M12	36	41	M16	48	53	55	4-M12x55	3	YOK	TKSPEBAD12507	YOK	PistonBaglantisiAD	TrunnionSupportMounting	TrunnionSupportMounting	Rev03	01/01/2020
PistonBaglantisiAD		H	Cikaricilar-iticiler	160_Lik_Piston	282	332	38	37	120	20	6	100	241	18	208	60	245	M16	48	53	M16	48	53	65	4-M16x65	3	YOK	TKSPEBAD16008	YOK	PistonBaglantisiAD	TrunnionSupportMounting	TrunnionSupportMounting	Rev03	01/01/2020
PistonBaglantisiAD		H	Cikaricilar-iticiler	200_Luk_Piston	332	282	38	37	120	20	6	100	241	18	258	60	295	M16	48	53	M16	48	53	65	4-M20x65	3	YOK	TKSPEBAD20009	YOK	PistonBaglantisiAD	TrunnionSupportMounting	TrunnionSupportMounting	Rev03	01/01/2020
																																		
\.


--
-- Data for Name: ISEDA031iptal; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA031iptal" ("ParcaAdi", "Kam Elemanları", "Tip", "w(mm)", "l(mm)", "a(mm)", "t(mm)", "l1(mm)", "l2(mm)", "d(mm)", "d1(mm)", "h(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "STQ_NORMU", "TOFAS", "FIRMA", "TERCIH") FROM stdin;
PozitifReturnKarsilik		25x60	25	60	11	30	30	15	11	17,5	18	M10	40	45	40	2-M10x40	YOK	TKSPRK02506001	TOFAS	1
PozitifReturnKarsilik		32x60	32	60	16	38	30	15	13	20	23	M12	40	45	40	2-M10x40	YOK	TKSPRK03206002		
PozitifReturnKarsilik		32x80	32	80	16	38	40	20	13	20	23	M12	48	53	40	2-M12x40	YOK	TKSPRK03208003		
\.


--
-- Data for Name: ISEDA032KalipMerkezlemesi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA032KalipMerkezlemesi" ("ParcaAdi", "Merkezleme Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "D(mm)", "L(mm)", "D1(mm)", "D2(mm)", "Dc(mm)", "Dc1(mm)", "Dcl(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
KalipMerkezlemesi		N	Merkezleme Elemanları	Tektip	105	54	41,5	70	20	13	25	M12	48	53	50	3-M12x50	2	230GSG7401	TKSKMB10505401	Y3560001580	KalipMerkezlemesi	Locating	CentraggioStampo	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA033TijMiliKarsiligi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA033TijMiliKarsiligi" ("ParcaAdi", "Baskı Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "D(mm)", "L(mm)", "D1(mm)", "D2(mm)", "D3(mm)", "L1(mm)", "L2(mm)", "Dc(mm)", "Dc1(mm)", "Dcl(mm)", "B(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "TOFASYARIM", "TOFASTAM", "Depo_KoduYARIM", "Depo_KoduTAM", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
TijMiliKarsiligi		N	Baskı Elemanları	110x25	110	25	25	55	80	25	25	22	13	17	33	M12	48	53	30	3-M12x30	3	YOK	OZEL	TKSTMK11002502	TKSTMK11002501	Y3560001591	Y3560001581	TijMiliKarsiligi	AirPin	Candela	Rev03	01/01/2020
TijMiliKarsiligi		N	Baskı Elemanları	110x50	110	50	25	55	80	25	25	22	13	17	33	M12	48	53	30	3-M12x30	3	YOK	YOK	TKSTMK11005002	TKSTMK11005001	Y3560001592	Y3560001582	TijMiliKarsiligi	AirPin	Candela	Rev03	01/01/2020
TijMiliKarsiligi		N	Baskı Elemanları	110x75	110	75	25	55	80	25	25	22	13	17	33	M12	48	53	30	3-M12x30	3	YOK	YOK	TKSTMK11007502	TKSTMK11007501	Y3560001593	Y3560001583	TijMiliKarsiligi	AirPin	Candela	Rev03	01/01/2020
TijMiliKarsiligi		N	Baskı Elemanları	110x100	110	100	25	55	80	25	25	22	13	17	33	M12	48	53	30	3-M12x30	3	YOK	YOK	TKSTMK11010002	TKSTMK11010001	Y3560001594	Y3560001584	TijMiliKarsiligi	AirPin	Candela	Rev03	01/01/2020
TijMiliKarsiligi		N	Baskı Elemanları	110x125	110	125	25	55	80	25	25	22	13	17	33	M12	48	53	30	3-M12x30	3	YOK	YOK	TKSTMK11012502	TKSTMK11012501	Y3560001595	Y3560001585	TijMiliKarsiligi	AirPin	Candela	Rev03	01/01/2020
TijMiliKarsiligi		N	Baskı Elemanları	110x150	110	150	25	55	80	25	25	22	13	17	33	M12	48	53	30	3-M12x30	3	YOK	YOK	TKSTMK11015002	TKSTMK11015001	Y3560001596	Y3560001586	TijMiliKarsiligi	AirPin	Candela	Rev03	01/01/2020
TijMiliKarsiligi		N	Baskı Elemanları	110x175	110	175	25	55	80	25	25	22	13	17	33	M12	48	53	30	3-M12x30	3	YOK	YOK	TKSTMK11017502	TKSTMK11017501	Y3560001597	Y3560001587	TijMiliKarsiligi	AirPin	Candela	Rev03	01/01/2020
TijMiliKarsiligi		N	Baskı Elemanları	110x200	110	200	25	55	80	25	25	22	13	17	33	M12	48	53	30	3-M12x30	3	YOK	YOK	TKSTMK11020002	TKSTMK11020001	Y3560001598	Y3560001588	TijMiliKarsiligi	AirPin	Candela	Rev03	01/01/2020
TijMiliKarsiligi		N	Baskı Elemanları	110x225	110	225	25	55	80	25	25	22	13	17	33	M12	48	53	30	3-M12x30	3	YOK	YOK	TKSTMK11022502	TKSTMK11022501	Y3560001599	Y3560001589	TijMiliKarsiligi	AirPin	Candela	Rev03	01/01/2020
TijMiliKarsiligi		N	Baskı Elemanları	110x250	110	250	25	55	80	25	25	22	13	17	33	M12	48	53	30	3-M12x30	3	YOK	YOK	TKSTMK11025002	TKSTMK11025001	Y3560001600	Y3560001590	TijMiliKarsiligi	AirPin	Candela	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA034OtomatikKlempPlakasi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA034OtomatikKlempPlakasi" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
OtomatikKlempPlakasi		N	Genel Kalıp Elemanları	TofasTip	2	YOK	TKSOKP03008001	Y3560001601	OtomatikKlempPlakasi	PlateBracket	PiastrinaForClamps	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA035OtomatikKlempCelikleri; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA035OtomatikKlempCelikleri" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
DerinCekmeOtoKlempCelik		N	Genel Kalıp Elemanları	Tektip	115x150x240	2	YOK	TKSOKC15024001	Y3560001602	OtoKlempCelik	BracketClamps	StaffePerClamps	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA036izZimbasi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA036izZimbasi" ("ParcaAdi", "Markalama Elemanları", "Tip", "Malzeme_Sinifi", "Grup", "Olcu", "Mi(mm)", "D(mm)", "E(mm)", "Hi(mm)", "K(mm)", "N(mm)", "T(mm)", "L(mm)", "R", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
izZimbasi		15	N	Markalama Elemanları	Ø15x20	13	15	14	11	7	8	4	16	M8	M6	24	29	30	1-M6x30	1	YOK	TKSIZZ13015001	Y3560001603	izZimbasi	VisualLocater	PunzoneDiVisualizzazione	Rev03	01/01/2020
izZimbasi		21	N	Markalama Elemanları	Ø21x20	19	21	20,5	14	9	6	4	16	M10	M8	32	37	30	1-M8x30	1	YOK	TKSIZZ19021002	Y3560001604	izZimbasi	VisualLocater	PunzoneDiVisualizzazione	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA037Markalama; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA037Markalama" ("ParcaAdi", "Markalama Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "A(mm)", "B(mm)", "C(mm)", "D(mm)", "E(mm)", "F(mm)", "G(mm)", "M1", "M2(mm)", "Md(mm)", "MI(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
Markalama		N	Markalama Elemanları	D17	18,2x17x44	44	28	17	6,5	6	12,5	12	M6	15	24	29	30	2-M6x30	2	YOK	TKSMRK01704401	Y3560001605	Markalama	Stamp	PunzoneMarchioEmblematico	Rev03	01/01/2020
Markalama		N	Markalama Elemanları	D22	18,2x22x52	52	34	22	9	8,5	17,5	17	M6	20	24	29	30	2-M6x30	2	YOK	TKSMRK02205202	Y3560001606	Markalama	Stamp	PunzoneMarchioEmblematico	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA038Kama; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA038Kama" ("ParcaAdi", "Genel Kalıp Elemanları", "Tip", "Malzeme_Sinifi", "Grup", "Olcu", "A(mm)", "L(mm)", "H1(mm)", "D1(mm)", "D2(mm)", "Dl(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
Kama		80x25	N	Genel Kalıp Elemanları	80x25x25	80	25	25	20	11	12	M10	40	45	40	1-M10x40	3	CH_R_025080	TKSKMA02508004	Y3560001610	Kama	Key	ChiavettaDiReazione	Rev03	01/01/2020
Kama		80x30	N	Genel Kalıp Elemanları	80x30x30	80	30	30	20	11	12	M10	40	45	40	1-M10x40	3	CH_R_030080	TKSKMA03008006	Y3560001612	Kama	Key	ChiavettaDiReazione	Rev03	01/01/2020
Kama		125x25	N	Genel Kalıp Elemanları	125x25x25	125	25	25	20	11	12	M10	40	45	40	1-M10x40	3	CH_R_025125	TKSKMA02512505	Y3560001611	Kama	Key	ChiavettaDiReazione	Rev03	01/01/2020
Kama		125x30	N	Genel Kalıp Elemanları	125x30x30	125	30	30	20	11	12	M10	40	45	40	1-M10x40	3	CH_R_030125	TKSKMA03012507	Y3560001613	Kama	Key	ChiavettaDiReazione	Rev03	01/01/2020
Kama		16x12	N	Genel Kalıp Elemanları	16x12x8	16	12	8	10	5,5	5	M5	20	25	15	1-M5x15	3	YOK	TKSKMA01201601	Y3560001607	Kama	Key	ChiavettaDiReazione	Rev03	01/01/2020
Kama		20x12	N	Genel Kalıp Elemanları	20x12x8	20	12	8	10	5,5	6	M5	20	25	15	1-M5x15	3	CH_MA_081220	TKSKMA01202002	Y3560001608	Kama	Key	ChiavettaDiReazione	Rev03	01/01/2020
Kama		20x16	N	Genel Kalıp Elemanları	20x16x10	20	16	10	11	6,6	7	M6	24	29	20	1-M6x20	3	CH_MA_101620	TKSKMA01602003	Y3560001609	Kama	Key	ChiavettaDiReazione	Rev03	01/01/2020
																									
																									
																									
\.


--
-- Data for Name: ISEDA039TasimaBraketi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA039TasimaBraketi" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "HC(mm)", "x1(mm)", "y1(mm)", "x2(mm)", "y2(mm)", "x3(mm)", "y3(mm)", "x4(mm)", "y4(mm)", "ax1(mm)", "ay1(mm)", "ax2(mm)", "ay2(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
TasimaBraketi		N	Genel Kalıp Elemanları	600kg	22	22,5	25	62,5	25	22,5	25	62,5	25	35	65	35	65	M12	48	53	45	4-M12x45	3	ST_KG600_S	TKSTBR08014501	Y3560001614	TasimaBraketi	LiftingBrackets	StaffaDiSollevamento	Rev03	01/01/2020
TasimaBraketi		N	Genel Kalıp Elemanları	1000kg	26	27,5	30	67,5	30	27,5	30	67,5	30	30	48	30	48	M16	64	69	50	4-M16x50	3	ST_KG1000_S	TKSTBR09016002	Y3560001615	TasimaBraketi	LiftingBrackets	StaffaDiSollevamento	Rev03	01/01/2020
TasimaBraketi		N	Genel Kalıp Elemanları	2000kg	40	32,5	32,5	97,5	32,5	32,5	32,5	97,5	32,5	35	65	35	65	M20	80	85	65	4-M20x65	3	ST_KG2000_S	TKSTBR10021503	Y3560001616	TasimaBraketi	LiftingBrackets	StaffaDiSollevamento	Rev03	01/01/2020
TasimaBraketi		N	Genel Kalıp Elemanları	4000kg	13	20	28	80	42	20	28	80	42	30	48	30	48	M16	64	69	50	6-M20x50	3	ST_KG4000_S	TKSTBR13522104	Y3560001617	TasimaBraketi	LiftingBrackets	StaffaDiSollevamento	Rev03	01/01/2020
TasimaBraketi		N	Genel Kalıp Elemanları	7000kg	19	30	40	100	55	30	40	100	55	35	65	35	65	M20	80	85	50	6-M20x50	3	ST_KG7000_S	TKSTBR18027005	Y3560001618	TasimaBraketi	LiftingBrackets	StaffaDiSollevamento	Rev03	01/01/2020
TasimaBraketi		N	Genel Kalıp Elemanları	25000kg_BMW	19	30	40	100	55	30	40	100	55	35	65	35	65	M20	80	85	50	6-M20x50	3	YOK	TKSTBR20028006	Y3560001624	TasimaBraketi	LiftingBrackets	StaffaDiSollevamento	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA040Mapa; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA040Mapa" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Bicim", "d1(mm)", "d2(mm)", d3, "d4(mm)", "h(mm)", "l3(mm)", "Md(mm)", "Ml(mm)", "Ddb(mm)", "d5(mm)", "1Adet_Mapanin_Tasima_Kapasitesi", "2Adet_Mapanin_Tasima_Kapasitesi", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
Mapa		X	Genel Kalıp Elemanları	M12	Tip01	30	54	M12	12	26	20,5	48	53	50	58	-	-	3	YOK	TKSMPA01200001	YOK	Mapa	SafetyEyebolt	Golfare	Rev03	01/01/2020
Mapa		X	Genel Kalıp Elemanları	M16	Tip01	35	63	M16	16	30	27	64	69	50	66	1500 kg	2100 kg	3	YOK	TKSMPA01600001	YOK	Mapa	SafetyEyebolt	Golfare	Rev03	01/01/2020
Mapa		X	Genel Kalıp Elemanları	M20	Tip01	40	72	M20	20	35	30	80	85	55	81	2500 kg	3500 kg	3	YOK	TKSMPA02000001	YOK	Mapa	SafetyEyebolt	Golfare	Rev03	01/01/2020
Mapa		X	Genel Kalıp Elemanları	M24	Tip01	50	90	M24	24	45	36	96	100	65	118	4000 kg	5600 kg	3	YOK	TKSMPA02400001	YOK	Mapa	SafetyEyebolt	Golfare	Rev03	01/01/2020
Mapa		X	Genel Kalıp Elemanları	M30	Tip01	60	108	M30	30	55	45	105	110	75	145	5000 kg	7000 kg	3	YOK	TKSMPA03000001	YOK	Mapa	SafetyEyebolt	Golfare	Rev03	01/01/2020
Mapa		X	Genel Kalıp Elemanları	M36	Tip01	70	126	M36	36	65	54	126	131	85	150	8000 kg	11200 kg	3	YOK	TKSMPA03600001	YOK	Mapa	SafetyEyebolt	Golfare	Rev03	01/01/2020
Mapa		X	Genel Kalıp Elemanları	M12	Tip02	30	54	M12	12	26	20,5	48	53	50	58	-	-	3	YOK	TKSMPA01200002	YOK	Mapa	SafetyEyebolt	Golfare	Rev03	01/01/2020
Mapa		X	Genel Kalıp Elemanları	M16	Tip02	35	63	M16	16	30	27	64	69	50	66	1500 kg	2100 kg	3	YOK	TKSMPA01600002	YOK	Mapa	SafetyEyebolt	Golfare	Rev03	01/01/2020
Mapa		X	Genel Kalıp Elemanları	M20	Tip02	40	72	M20	20	35	30	80	85	55	81	2500 kg	3500 kg	3	YOK	TKSMPA02000002	YOK	Mapa	SafetyEyebolt	Golfare	Rev03	01/01/2020
Mapa		X	Genel Kalıp Elemanları	M24	Tip02	50	90	M24	24	45	36	96	100	65	118	4000 kg	5600 kg	3	YOK	TKSMPA02400002	YOK	Mapa	SafetyEyebolt	Golfare	Rev03	01/01/2020
Mapa		X	Genel Kalıp Elemanları	M30	Tip02	60	108	M30	30	55	45	105	110	75	145	5000 kg	7000 kg	3	YOK	TKSMPA03000002	YOK	Mapa	SafetyEyebolt	Golfare	Rev03	01/01/2020
Mapa		X	Genel Kalıp Elemanları	M36	Tip02	70	126	M36	36	65	54	126	131	85	150	8000 kg	11200 kg	3	YOK	TKSMPA03600002	YOK	Mapa	SafetyEyebolt	Golfare	Rev03	01/01/2020
Mapa		X	Genel Kalıp Elemanları	M42	Tip03	70	126	M42	36	65	54	147	152	85	150	12000 kg	16800 kg	3	YOK	TKSMPA04200003	YOK	Mapa	SafetyEyebolt	Golfare	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA041MerkezlemeCivata; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA041MerkezlemeCivata" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "L", "ds(mm)", "I1(mm)", "dk(mm)", "k(mm)", "dg1(mm)", "g1(mm)", "g2(mm)", "r1(mm)", "r2(mm)", "I2(mm)", "t(mm)", "sw(mm)", "MX(mm)", "M", "Md(mm)", "Ml(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	12	8	12	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00801201	Y3560001641	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	15	8	15	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00801502	Y3560001642	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	16	8	16	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00801603	Y3560001643	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	20	8	20	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00802004	Y3560001644	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	25	8	25	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00802505	Y3560001645	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	30	8	30	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00803006	Y3560001646	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	35	8	35	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00803507	Y3560001647	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	40	8	40	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00804008	Y3560001648	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	45	8	45	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00804509	Y3560001649	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	50	8	50	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00805010	Y3560001650	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	55	8	55	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00805511	Y3560001651	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	60	8	60	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00806012	Y3560001652	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	65	8	65	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00806513	Y3560001653	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	70	8	70	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00807014	Y3560001654	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	80	8	80	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00808015	Y3560001655	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	90	8	90	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00809016	Y3560001656	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D8	100	8	100	13	5,5	7,52	1,85	2,3	0,6	0,6	11	3,3	4	6	M6	24	29	3	YOK	TKSMKC00810017	Y3560001657	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	15	10	15	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01001518	Y3560001658	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	16	10	16	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01001619	Y3560001659	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	20	10	20	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01002020	Y3560001660	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	25	10	25	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01002521	Y3560001661	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	30	10	30	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01003022	Y3560001662	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	35	10	35	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01003523	Y3560001663	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	40	10	40	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01004024	Y3560001664	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	45	10	45	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01004525	Y3560001665	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	50	10	50	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01005026	Y3560001666	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	55	10	55	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01005527	Y3560001667	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	60	10	60	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01006028	Y3560001668	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	65	10	65	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01006529	Y3560001669	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	70	10	70	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01007030	Y3560001670	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	80	10	80	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01008031	Y3560001671	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	90	10	90	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01009032	Y3560001672	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D10	100	10	100	16	7	9,52	1,85	2,6	0,6	0,7	13	4,2	5	8	M8	32	37	3	YOK	TKSMKC01010033	Y3560001673	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	15	12	15	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01201534	Y3560001674	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	16	12	16	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01201635	Y3560001675	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	20	12	20	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01202036	Y3560001676	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	25	12	25	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01202537	Y3560001677	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	30	12	30	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01203038	Y3560001678	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	35	12	35	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01203539	Y3560001679	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	40	12	40	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01204040	Y3560001680	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	45	12	45	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01204541	Y3560001681	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	50	12	50	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01205042	Y3560001682	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	55	12	55	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01205543	Y3560001683	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	60	12	60	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01206044	Y3560001684	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	65	12	65	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01206545	Y3560001685	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	70	12	70	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01207046	Y3560001686	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	80	12	80	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01208047	Y3560001687	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	90	12	90	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01209048	Y3560001688	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	100	12	100	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01210049	Y3560001689	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D12	120	12	120	18	9	11,52	1,85	2,8	0,8	0,9	16	4,9	6	10	M10	40	45	3	YOK	TKSMKC01212050	Y3560001690	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D16	30	16	30	24	11	15,52	1,85	3,8	0,8	1	18	6,3	8	12	M12	48	53	3	YOK	TKSMKC01603051	Y3560001691	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D16	35	16	35	24	11	15,52	1,85	3,8	0,8	1	18	6,3	8	12	M12	48	53	3	YOK	TKSMKC01603552	Y3560001692	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D16	40	16	40	24	11	15,52	1,85	3,8	0,8	1	18	6,3	8	12	M12	48	53	3	YOK	TKSMKC01604053	Y3560001693	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D16	45	16	45	24	11	15,52	1,85	3,8	0,8	1	18	6,3	8	12	M12	48	53	3	YOK	TKSMKC01604554	Y3560001694	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D16	50	16	50	24	11	15,52	1,85	3,8	0,8	1	18	6,3	8	12	M12	48	53	3	YOK	TKSMKC01605055	Y3560001695	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D16	55	16	55	24	11	15,52	1,85	3,8	0,8	1	18	6,3	8	12	M12	48	53	3	YOK	TKSMKC01605556	Y3560001696	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D16	60	16	60	24	11	15,52	1,85	3,8	0,8	1	18	6,3	8	12	M12	48	53	3	YOK	TKSMKC01606057	Y3560001697	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D16	65	16	65	24	11	15,52	1,85	3,8	0,8	1	18	6,3	8	12	M12	48	53	3	YOK	TKSMKC01606558	Y3560001698	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D16	70	16	70	24	11	15,52	1,85	3,8	0,8	1	18	6,3	8	12	M12	48	53	3	YOK	TKSMKC01607059	Y3560001699	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D16	80	16	80	24	11	15,52	1,85	3,8	0,8	1	18	6,3	8	12	M12	48	53	3	YOK	TKSMKC01608060	Y3560001700	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D16	90	16	90	24	11	15,52	1,85	3,8	0,8	1	18	6,3	8	12	M12	48	53	3	YOK	TKSMKC01609061	Y3560001701	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D16	100	16	100	24	11	15,52	1,85	3,8	0,8	1	18	6,3	8	12	M12	48	53	3	YOK	TKSMKC01610062	Y3560001702	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D16	120	16	120	24	11	15,52	1,85	3,8	0,8	1	18	6,3	8	12	M12	48	53	3	YOK	TKSMKC01612063	Y3560001703	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D20	40	20	40	30	14	19,52	2,65	4,6	1	1,1	22	8,8	10	16	M16	64	69	3	YOK	TKSMKC02004064	Y3560001704	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D20	45	20	45	30	14	19,52	2,65	4,6	1	1,1	22	8,8	10	16	M16	64	69	3	YOK	TKSMKC02004565	Y3560001705	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D20	50	20	50	30	14	19,52	2,65	4,6	1	1,1	22	8,8	10	16	M16	64	69	3	YOK	TKSMKC02005066	Y3560001706	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D20	55	20	55	30	14	19,52	2,65	4,6	1	1,1	22	8,8	10	16	M16	64	69	3	YOK	TKSMKC02005567	Y3560001707	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D20	60	20	60	30	14	19,52	2,65	4,6	1	1,1	22	8,8	10	16	M16	64	69	3	YOK	TKSMKC02006068	Y3560001708	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D20	65	20	65	30	14	19,52	2,65	4,6	1	1,1	22	8,8	10	16	M16	64	69	3	YOK	TKSMKC02006569	Y3560001709	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D20	70	20	70	30	14	19,52	2,65	4,6	1	1,1	22	8,8	10	16	M16	64	69	3	YOK	TKSMKC02007070	Y3560001710	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D20	80	20	80	30	14	19,52	2,65	4,6	1	1,1	22	8,8	10	16	M16	64	69	3	YOK	TKSMKC02008071	Y3560001711	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D20	90	20	90	30	14	19,52	2,65	4,6	1	1,1	22	8,8	10	16	M16	64	69	3	YOK	TKSMKC02009072	Y3560001712	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D20	100	20	100	30	14	19,52	2,65	4,6	1	1,1	22	8,8	10	16	M16	64	69	3	YOK	TKSMKC02010073	Y3560001713	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D20	120	20	120	30	14	19,52	2,65	4,6	1	1,1	22	8,8	10	16	M16	64	69	3	YOK	TKSMKC02012074	Y3560001714	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D24	50	24	50	36	16	23,52	2,65	5,4	1	1,3	27	10	12	20	M20	80	85	3	YOK	TKSMKC02405075	Y3560001715	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D24	55	24	55	36	16	23,52	2,65	5,4	1	1,3	27	10	12	20	M20	80	85	3	YOK	TKSMKC02405576	Y3560001716	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D24	60	24	60	36	16	23,52	2,65	5,4	1	1,3	27	10	12	20	M20	80	85	3	YOK	TKSMKC02406077	Y3560001717	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D24	65	24	65	36	16	23,52	2,65	5,4	1	1,3	27	10	12	20	M20	80	85	3	YOK	TKSMKC02406578	Y3560001718	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D24	70	24	70	36	16	23,52	2,65	5,4	1	1,3	27	10	12	20	M20	80	85	3	YOK	TKSMKC02407079	Y3560001719	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D24	80	24	80	36	16	23,52	2,65	5,4	1	1,3	27	10	12	20	M20	80	85	3	YOK	TKSMKC02408080	Y3560001720	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D24	90	24	90	36	16	23,52	2,65	5,4	1	1,3	27	10	12	20	M20	80	85	3	YOK	TKSMKC02409081	Y3560001721	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D24	100	24	100	36	16	23,52	2,65	5,4	1	1,3	27	10	12	20	M20	80	85	3	YOK	TKSMKC02410082	Y3560001722	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
MerkezlemeCivata		N	Genel Kalıp Elemanları	D24	120	24	120	36	16	23,52	2,65	5,4	1	1,3	27	10	12	20	M20	80	85	3	YOK	TKSMKC02412083	Y3560001723	MerkezlemeCivata	CollarScrew	ViteConColletto	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA042StoplamaCivata; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA042StoplamaCivata" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "L", "N(mm)", "e(mm)", "l2(mm)", "a(mm)", "c(mm)", "d(mm)", "f(mm)", "g(mm)", "sw(mm)", "Civata", "Md(mm)", "MI(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
StoplamaCivata		N	Genel Kalıp Elemanları	M6	20	6	20	35	10	15	10	5,5	10	5	M6	24	29	3	YOK	TKSSMC0M602001	Y3560001724	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M6	25	6	25	40	10	15	10	5,5	10	5	M6	24	29	3	YOK	TKSSMC0M602502	Y3560001725	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M6	30	6	30	45	10	15	10	5,5	10	5	M6	24	29	3	YOK	TKSSMC0M603003	Y3560001726	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M6	35	6	35	50	10	15	10	5,5	10	5	M6	24	29	3	YOK	TKSSMC0M603504	Y3560001727	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M6	40	6	40	55	10	15	10	5,5	10	5	M6	24	29	3	YOK	TKSSMC0M604005	Y3560001728	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M6	45	6	45	60	10	15	10	5,5	10	5	M6	24	29	3	YOK	TKSSMC0M604506	Y3560001729	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M6	50	6	50	65	10	15	10	5,5	10	5	M6	24	29	3	YOK	TKSSMC0M605007	Y3560001730	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M6	55	6	55	70	10	15	10	5,5	10	5	M6	24	29	3	YOK	TKSSMC0M605508	Y3560001731	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M6	60	6	60	80	10	15	10	5,5	10	5	M6	24	29	3	YOK	TKSSMC0M606009	Y3560001732	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M6	70	6	70	90	10	15	10	5,5	10	5	M6	24	29	3	YOK	TKSSMC0M607010	Y3560001733	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M6	80	6	80	100	10	15	10	5,5	10	5	M6	24	29	3	YOK	TKSSMC0M608011	Y3560001734	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M6	90	6	90	100	10	15	10	5,5	10	5	M6	24	29	3	YOK	TKSSMC0M609012	Y3560001735	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M8	30	8	30	45	12,5	19	13	6,5	13	6	M8	32	37	3	YOK	TKSSMC0M803013	Y3560001736	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M8	35	8	35	50	12,5	19	13	6,5	13	6	M8	32	37	3	YOK	TKSSMC0M803514	Y3560001737	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M8	40	8	40	55	12,5	19	13	6,5	13	6	M8	32	37	3	YOK	TKSSMC0M804015	Y3560001738	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M8	45	8	45	60	12,5	19	13	6,5	13	6	M8	32	37	3	YOK	TKSSMC0M804516	Y3560001739	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M8	50	8	50	65	12,5	19	13	6,5	13	6	M8	32	37	3	YOK	TKSSMC0M805017	Y3560001740	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M8	55	8	55	70	12,5	19	13	6,5	13	6	M8	32	37	3	YOK	TKSSMC0M805518	Y3560001741	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M8	60	8	60	80	12,5	19	13	6,5	13	6	M8	32	37	3	YOK	TKSSMC0M806019	Y3560001742	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M8	70	8	70	90	12,5	19	13	6,5	13	6	M8	32	37	3	YOK	TKSSMC0M807020	Y3560001743	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M8	80	8	80	100	12,5	19	13	6,5	13	6	M8	32	37	3	YOK	TKSSMC0M808021	Y3560001744	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M8	90	8	90	110	12,5	19	13	6,5	13	6	M8	32	37	3	YOK	TKSSMC0M809022	Y3560001745	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M8	100	8	100	120	12,5	19	13	6,5	13	6	M8	32	37	3	YOK	TKSSMC0M810023	Y3560001746	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M10	30	10	30	50	15	23	15	7,5	16	8	M10	40	45	3	YOK	TKSSMCM1003024	Y3560001747	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M10	35	10	35	55	15	23	15	7,5	16	8	M10	40	45	3	YOK	TKSSMCM1003525	Y3560001748	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M10	40	10	40	60	15	23	15	7,5	16	8	M10	40	45	3	YOK	TKSSMCM1004026	Y3560001749	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M10	45	10	45	65	15	23	15	7,5	16	8	M10	40	45	3	YOK	TKSSMCM1004527	Y3560001750	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M10	50	10	50	70	15	23	15	7,5	16	8	M10	40	45	3	YOK	TKSSMCM1005028	Y3560001751	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M10	55	10	55	75	15	23	15	7,5	16	8	M10	40	45	3	YOK	TKSSMCM1005529	Y3560001752	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M10	60	10	60	80	15	23	15	7,5	16	8	M10	40	45	3	YOK	TKSSMCM1006030	Y3560001753	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M10	70	10	70	90	15	23	15	7,5	16	8	M10	40	45	3	YOK	TKSSMCM1007031	Y3560001754	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M10	80	10	80	100	15	23	15	7,5	16	8	M10	40	45	3	YOK	TKSSMCM1008032	Y3560001755	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M10	90	10	90	110	15	23	15	7,5	16	8	M10	40	45	3	YOK	TKSSMCM1009033	Y3560001756	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M10	100	10	100	120	15	23	15	7,5	16	8	M10	40	45	3	YOK	TKSSMCM1010034	Y3560001757	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M10	120	10	120	140	15	23	15	7,5	16	8	M10	40	45	3	YOK	TKSSMCM1012035	Y3560001758	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M12	40	12	40	60	17,5	27	18	9	18	10	M12	48	53	3	YOK	TKSSMCM1204036	Y3560001759	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M12	45	12	45	65	17,5	27	18	9	18	10	M12	48	53	3	YOK	TKSSMCM1204537	Y3560001760	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M12	50	12	50	70	17,5	27	18	9	18	10	M12	48	53	3	YOK	TKSSMCM1205038	Y3560001761	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M12	55	12	55	80	17,5	27	18	9	18	10	M12	48	53	3	YOK	TKSSMCM1205539	Y3560001762	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M12	60	12	60	90	17,5	27	18	9	18	10	M12	48	53	3	YOK	TKSSMCM1206040	Y3560001763	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M12	70	12	70	100	17,5	27	18	9	18	10	M12	48	53	3	YOK	TKSSMCM1207041	Y3560001764	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M12	80	12	80	110	17,5	27	18	9	18	10	M12	48	53	3	YOK	TKSSMCM1208042	Y3560001765	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M12	90	12	90	120	17,5	27	18	9	18	10	M12	48	53	3	YOK	TKSSMCM1209043	Y3560001766	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M12	100	12	100	130	17,5	27	18	9	18	10	M12	48	53	3	YOK	TKSSMCM1210044	Y3560001767	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M12	110	12	110	140	17,5	27	18	9	18	10	M12	48	53	3	YOK	TKSSMCM1211045	Y3560001768	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M12	120	12	120	150	17,5	27	18	9	18	10	M12	48	53	3	YOK	TKSSMCM1212046	Y3560001769	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M12	140	12	140	180	17,5	27	18	9	18	10	M12	48	53	3	YOK	TKSSMCM1214047	Y3560001770	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M16	50	16	50	80	23	34	24	11	24	14	M16	64	69	3	YOK	TKSSMCM1605048	Y3560001771	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M16	60	16	60	90	23	34	24	11	24	14	M16	64	69	3	YOK	TKSSMCM1606049	Y3560001772	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M16	70	16	70	100	23	34	24	11	24	14	M16	64	69	3	YOK	TKSSMCM1607050	Y3560001773	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M16	80	16	80	110	23	34	24	11	24	14	M16	64	69	3	YOK	TKSSMCM1608051	Y3560001774	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M16	90	16	90	120	23	34	24	11	24	14	M16	64	69	3	YOK	TKSSMCM1609052	Y3560001775	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M16	100	16	100	130	23	34	24	11	24	14	M16	64	69	3	YOK	TKSSMCM1610053	Y3560001776	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M16	110	16	110	140	23	34	24	11	24	14	M16	64	69	3	YOK	TKSSMCM1611054	Y3560001777	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M16	120	16	120	150	23	34	24	11	24	14	M16	64	69	3	YOK	TKSSMCM1612055	Y3560001778	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M16	140	16	140	180	23	34	24	11	24	14	M16	64	69	3	YOK	TKSSMCM1614056	Y3560001779	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M16	150	16	150	180	23	34	24	11	24	14	M16	64	69	3	YOK	TKSSMCM1615057	Y3560001780	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
StoplamaCivata		N	Genel Kalıp Elemanları	M16	160	16	160	200	23	34	24	11	24	14	M16	64	69	3	YOK	TKSSMCM1616058	Y3560001781	StoplamaCivata	PadRetainer	GruppoTirante	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA043BilyeBasliMafsal; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA043BilyeBasliMafsal" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "1", "2", "3", "4", "5", "6", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
BilyeBasliMafsal		H	Genel Kalıp Elemanları	D32	True	False	False	False	False	False	2	YOK	TKSBBMSS01001	YOK	BilyeBasliMafsal	SwivelRod	SwivelRod	Rev03	01/01/2020
BilyeBasliMafsal		H	Genel Kalıp Elemanları	D40	False	True	False	False	False	False	2	YOK	TKSBBMSS01202	YOK	BilyeBasliMafsal	SwivelRod	SwivelRod	Rev03	01/01/2020
BilyeBasliMafsal		H	Genel Kalıp Elemanları	D50_63	False	False	True	False	False	False	2	YOK	TKSBBMSS01603	YOK	BilyeBasliMafsal	SwivelRod	SwivelRod	Rev03	01/01/2020
BilyeBasliMafsal		H	Genel Kalıp Elemanları	D80_100	False	False	False	True	False	False	2	YOK	TKSBBMSS02004	YOK	BilyeBasliMafsal	SwivelRod	SwivelRod	Rev03	01/01/2020
BilyeBasliMafsal		H	Genel Kalıp Elemanları	D125	False	False	False	False	True	False	2	YOK	TKSBBMSS02705	YOK	BilyeBasliMafsal	SwivelRod	SwivelRod	Rev03	01/01/2020
BilyeBasliMafsal		H	Genel Kalıp Elemanları	D160_200	False	False	False	False	False	True	2	YOK	TKSBBMSS03606	YOK	BilyeBasliMafsal	SwivelRod	SwivelRod	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA044PnoSilSomunTutucu; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA044PnoSilSomunTutucu" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "A(mm)", "B(mm)", "C(mm)", "D(mm)", "E(mm)", "F(mm)", "G(mm)", "H(mm)", "I(mm)", "L(mm)", "J(mm)", "M1(mm)", "N(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
PnoSilSomunTutucu		N	Genel Kalıp Elemanları	32	25x50x80	25	11	14	38	50	80	30	15	17	11	11,5	57	27	M10	40	45	30	4-M10x40	2	FO_NO_3530	TKSPST03203801	Y3560001789	PnoSilSomunTutucu	CouplingPlate	StaffaDiReazione	Rev03	01/01/2020
PnoSilSomunTutucu		N	Genel Kalıp Elemanları	40	25x50x80	25	11	14	38	50	80	30	15	17	11	11,5	57	27	M10	40	45	30	4-M10x40	2	FO_NO_3530	TKSPST04003801	Y3560001790	PnoSilSomunTutucu	CouplingPlate	StaffaDiReazione	Rev03	01/01/2020
PnoSilSomunTutucu		N	Genel Kalıp Elemanları	50	32x55x100	32	15	20	50	55	100	35	20	20	13	12,5	75	30	M12	48	53	35	4-M12x50	2	FO_NO_4740	TKSPST05005002	Y3560001791	PnoSilSomunTutucu	CouplingPlate	StaffaDiReazione	Rev03	01/01/2020
PnoSilSomunTutucu		N	Genel Kalıp Elemanları	63	32x55x100	32	15	20	50	55	100	35	20	20	13	12,5	75	30	M12	48	53	35	4-M12x50	2	FO_NO_4740	TKSPST06305002	Y3560001792	PnoSilSomunTutucu	CouplingPlate	StaffaDiReazione	Rev03	01/01/2020
PnoSilSomunTutucu		N	Genel Kalıp Elemanları	80	32x55x100	32	15	20	50	55	100	35	20	20	13	12,5	75	30	M12	48	53	35	4-M12x50	2	FO_NO_4740	TKSPST08005002	Y3560001793	PnoSilSomunTutucu	CouplingPlate	StaffaDiReazione	Rev03	01/01/2020
PnoSilSomunTutucu		N	Genel Kalıp Elemanları	100	32x55x100	32	15	20	50	55	100	35	20	20	13	12,5	75	30	M12	48	53	35	4-M12x50	2	FO_NO_4740	TKSPST10005002	Y3560001794	PnoSilSomunTutucu	CouplingPlate	StaffaDiReazione	Rev03	01/01/2020
PnoSilSomunTutucu		N	Genel Kalıp Elemanları	125	40x65x120	40	20	25	60	65	120	45	24	26	17	16	88	33	M16	64	69	40	4-M16x55	2	FO_NO_5750	TKSPST12506003	Y3560001795	PnoSilSomunTutucu	CouplingPlate	StaffaDiReazione	Rev03	01/01/2020
PnoSilSomunTutucu		N	Genel Kalıp Elemanları	160	40x65x120	40	20	25	60	65	120	45	24	26	17	16	88	33	M16	64	69	40	4-M16x55	2	FO_NO_5750	TKSPST16006003	Y3560001796	PnoSilSomunTutucu	CouplingPlate	StaffaDiReazione	Rev03	01/01/2020
PnoSilSomunTutucu		N	Genel Kalıp Elemanları	200	40x65x120	40	20	25	60	65	120	45	24	26	17	16	88	33	M16	64	69	40	4-M16x55	2	FO_NO_5750	TKSPST20006003	Y3560001797	PnoSilSomunTutucu	CouplingPlate	StaffaDiReazione	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA045PnoSilKavSomunu; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA045PnoSilKavSomunu" ("ParcaAdi", "Cikaricilar-iticiler", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "M", "B(mm)", "C(mm)", "D(mm)", "E(mm)", "F(mm)", "G(mm)", "H(mm)", "L(mm)", "TD(mm)", "HD(mm)", "PD(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
PnoSilKavramaSomunu		N	Cikaricilar-iticiler	D32	Ø35x30	M10x1.25	35	30	25	30	16	10	24	12	10	8,467	1,25	2	NO_3530M10	TKSPKS032M1001	Y3560001799	PnoSilKavSomunu	CouplingNut	AggancioStaffa	Rev03	01/01/2020
PnoSilKavramaSomunu		N	Cikaricilar-iticiler	D40	Ø35x30	M12x1.25	35	30	25	30	16	10	24	12	12	10,467	1,25	2	NO_3530M12	TKSPKS040M1202	Y3560001800	PnoSilKavSomunu	CouplingNut	AggancioStaffa	Rev03	01/01/2020
PnoSilKavramaSomunu		N	Cikaricilar-iticiler	D50	Ø47x40	M16x1.5	47	42	37	40	19	14	36	16,5	16	14,376	1,5	2	NO_4740M16	TKSPKS050M1603	Y3560001801	PnoSilKavSomunu	CouplingNut	AggancioStaffa	Rev03	01/01/2020
PnoSilKavramaSomunu		N	Cikaricilar-iticiler	D63	Ø47x40	M16x1.5	47	42	37	40	19	14	36	16,5	16	14,376	1,5	2	NO_4740M16	TKSPKS063M1603	Y3560001802	PnoSilKavSomunu	CouplingNut	AggancioStaffa	Rev03	01/01/2020
PnoSilKavramaSomunu		N	Cikaricilar-iticiler	D80	Ø47x40	M20x1.5	47	42	37	40	19	14	36	16,5	20	18,376	1,5	2	NO_4740M20	TKSPKS080M2004	Y3560001803	PnoSilKavSomunu	CouplingNut	AggancioStaffa	Rev03	01/01/2020
PnoSilKavramaSomunu		N	Cikaricilar-iticiler	D100	Ø47x40	M20x1.5	47	42	37	40	19	14	36	16,5	20	18,376	1,5	2	NO_4740M20	TKSPKS100M2004	Y3560001804	PnoSilKavSomunu	CouplingNut	AggancioStaffa	Rev03	01/01/2020
PnoSilKavramaSomunu		N	Cikaricilar-iticiler	D125	Ø57x50	M27x2	57	52	47	50	24	19	45	19	27	24,835	2	2	NO_5750M27	TKSPKS125M2705	Y3560001805	PnoSilKavSomunu	CouplingNut	AggancioStaffa	Rev03	01/01/2020
PnoSilKavramaSomunu		N	Cikaricilar-iticiler	D160	Ø57x50	M36x2	57	52	47	50	24	19	45	19	36	31,67	2	2	NO_5750M36	TKSPKS160M3606	Y3560001806	PnoSilKavSomunu	CouplingNut	AggancioStaffa	Rev03	01/01/2020
PnoSilKavramaSomunu		N	Cikaricilar-iticiler	D200	Ø57x50	M36x2	57	52	47	50	24	19	45	19	36	31,67	2	2	NO_5750M36	TKSPKS200M3606	Y3560001807	PnoSilKavSomunu	CouplingNut	AggancioStaffa	Rev03	01/01/2020
PnoSilKavramaSomunu		N	Cikaricilar-iticiler	D250	Ø76x76	M42x2	76	64	59	76	50	19	60	7	42	37,129	2	2	YOK	TKSPKS250M4207	Y3560001808	PnoSilKavSomunu	CouplingNut	AggancioStaffa	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA046VulkolonStoper; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA046VulkolonStoper" ("ParcaAdi", "Stoplama Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "d(mm)", "l(mm)", "d1(mm)", "l1(mm)", "r(mm)", "Fmax(N)", "li(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
VulkolonStoper		N	Stoplama Elemanları	D6	6	9,5	3,6	4,5	0,1	100	6,5	1	PU_EL_06	TKSVST00609501	Y3560001809	VulkolonStoper	SpringPin	PuntalinoElastico	Rev03	01/01/2020
VulkolonStoper		N	Stoplama Elemanları	D10	10	15,5	6	7,5	1	450	12,5	1	PU_EL_10	TKSVST01015502	Y3560001810	VulkolonStoper	SpringPin	PuntalinoElastico	Rev03	01/01/2020
VulkolonStoper		N	Stoplama Elemanları	D16	16	25	9,5	12	1,5	1500	22	1	PU_EL_16	TKSVST01625003	Y3560001811	VulkolonStoper	SpringPin	PuntalinoElastico	Rev03	01/01/2020
VulkolonStoper		N	Stoplama Elemanları	D24	24	25	18	10	2	3000	22	1	PU_EL_24	TKSVST02425004	Y3560001812	VulkolonStoper	SpringPin	PuntalinoElastico	Rev03	01/01/2020
VulkolonStoper		N	Stoplama Elemanları	D30	30	35	20	19	2,5	3000	32	1	PU_EL_30	TKSVST03035005	Y3560001813	VulkolonStoper	SpringPin	PuntalinoElastico	Rev03	01/01/2020
VulkolonStoper		N	Stoplama Elemanları	D32	32	32	24	14	3	12000	29	1	PU_EL_32	TKSVST03232006	Y3560001814	VulkolonStoper	SpringPin	PuntalinoElastico	Rev03	01/01/2020
VulkolonStoper		N	Stoplama Elemanları	D39.5	39,5	40	30	16	3	25000	37	1	PU_EL_39,5	TKSVST03940007	Y3560001815	VulkolonStoper	SpringPin	PuntalinoElastico	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA047DuzKizak; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA047DuzKizak" ("ParcaAdi", "Merkezleme Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "Kalinlik", "En(mm)", "Boy(mm)", "METRIK", "D1(mm)", "D(mm)", "H(mm)", "ACI(deg)", "ACIH(mm)", "KIZAK_KALINLIGI(mm)", "X1(mm)", "Y1(mm)", "X2(mm)", "Y2(mm)", "X3(mm)", "Y3(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "TOFASBRONZ", "TOFASCELIK", "Depo_KoduBRONZ", "Depo_KoduCELIK", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
DuzKizak		N	Merkezleme Elemanları	50x80	50x80x20	20	50	80	M8	15	9	9	15	10	20	25	25	25	55	25	55	M8	32	37	25	2-M8x25	2	YOK	OZEL	TKSBDK05008001	TKSCDK05008030	Y3560001816	Y3560001845	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	50x100	50x100x20	20	50	100	M12	20	13,5	13	15	10	20	25	25	25	75	25	75	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK05010002	TKSCDK05010031	Y3560001817	Y3560001846	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	50x125	50x125x20	20	50	125	M12	20	13,5	13	15	10	20	25	25	25	100	25	100	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK05012503	TKSBDK05012532	Y3560001818	Y3560001847	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	50x160	50x160x20	20	50	160	M12	20	13,5	13	15	10	20	25	25	25	135	25	135	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK05016004	TKSCDK05016033	Y3560001819	Y3560001848	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	50x200	50x200x20	20	50	200	M12	20	13,5	13	15	10	20	25	25	25	175	25	175	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK05020005	TKSBDK05020034	Y3560001820	Y3560001849	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	80x50	80x50x20	20	80	50	M8	15	9	9	15	10	20	25	25	55	25	55	25	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK08005006	TKSCDK08005035	Y3560001821	Y3560001850	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	80x80	80x80x20	20	80	80	M12	20	13,5	13	15	10	20	40	25	40	55	40	55	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK08008007	TKSCDK08008036	Y3560001822	Y3560001851	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	80x100	80x100x20	20	80	100	M12	20	13,5	13	15	10	20	40	25	40	75	40	75	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK08010008	TKSCDK08010037	Y3560001823	Y3560001852	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	80x125	80x125x20	20	80	125	M12	20	13,5	13	15	10	20	40	25	40	100	40	100	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK08012509	TKSCDK08012538	Y3560001824	Y3560001853	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	80x160	80x160x20	20	80	160	M12	20	13,5	13	15	10	20	40	25	40	135	40	135	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK08016010	TKSCDK08016039	Y3560001825	Y3560001854	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	80x200	80x200x20	20	80	200	M12	20	13,5	13	15	10	20	40	25	40	175	40	175	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK08020011	TKSCDK08020040	Y3560001826	Y3560001855	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	100x50	100x50x20	20	100	50	M12	20	13,5	13	15	10	20	25	25	75	25	75	25	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK10005012	TKSCDK10005041	Y3560001827	Y3560001856	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	100x80	100x80x20	20	100	80	M12	20	13,5	13	15	10	20	25	40	75	40	75	40	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK10008013	TKSCDK10008042	Y3560001828	Y3560001857	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	100x100	100x100x20	20	100	100	M12	20	13,5	13	15	10	20	50	25	50	75	50	75	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK10010014	TKSCDK10010043	Y3560001829	Y3560001858	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	100x125	100x125x20	20	100	125	M12	20	13,5	13	15	10	20	50	25	50	100	50	100	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK10012515	TKSCDK10012544	Y3560001830	Y3560001859	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	100x160	100x160x20	20	100	160	M12	20	13,5	13	15	10	20	50	25	50	135	50	135	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK10016016	TKSCDK10016045	Y3560001831	Y3560001860	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	100x200	100x200x20	20	100	200	M12	20	13,5	13	15	10	20	50	25	50	175	50	175	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK10020017	TKSCDK10020046	Y3560001832	Y3560001861	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	125x50	125x50x20	20	125	50	M12	20	13,5	13	15	10	20	25	25	100	25	100	25	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK12505018	TKSCDK12505047	Y3560001833	Y3560001862	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	125x80	125x80x20	20	125	80	M12	20	13,5	13	15	10	20	25	40	100	40	100	40	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK12508019	TKSCDK12508048	Y3560001834	Y3560001863	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	125x100	125x100x20	20	125	100	M12	20	13,5	13	15	10	20	62,5	25	25	75	100	75	M12	48	53	25	3-M12x25	2	YOK	YOK	TKSBDK12510020	TKSCDK12510049	Y3560001835	Y3560001864	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	125x125	125x125x20	20	125	125	M12	20	13,5	13	15	10	20	62,5	25	25	100	100	100	M12	48	53	25	3-M12x25	2	YOK	YOK	TKSBDK12512521	TKSCDK12512550	Y3560001836	Y3560001865	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	125x160	125x160x20	20	125	160	M12	20	13,5	13	15	10	20	62,5	25	25	135	100	135	M12	48	53	25	3-M12x25	2	YOK	YOK	TKSBDK12516022	TKSCDK12516051	Y3560001837	Y3560001866	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	125x200	125x200x20	20	125	200	M12	20	13,5	13	15	10	20	62,5	25	25	175	100	175	M12	48	53	25	3-M12x25	2	YOK	YOK	TKSBDK12520023	TKSCDK12520052	Y3560001838	Y3560001867	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	160x50	160x50x20	20	160	50	M12	20	13,5	13	15	10	20	25	25	135	25	135	25	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK16005024	TKSCDK16005053	Y3560001839	Y3560001868	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	160x80	160x80x20	20	160	80	M12	20	13,5	13	15	10	20	25	40	135	40	135	40	M12	48	53	25	2-M12x25	2	YOK	YOK	TKSBDK16008025	TKSCDK16008054	Y3560001840	Y3560001869	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	160x100	160x100x20	20	160	100	M12	20	13,5	13	15	10	20	80	25	25	75	135	75	M12	48	53	25	3-M12x25	2	YOK	YOK	TKSBDK16010026	TKSCDK16010055	Y3560001841	Y3560001870	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	160x125	160x125x20	20	160	125	M12	20	13,5	13	15	10	20	80	25	25	100	135	100	M12	48	53	25	3-M12x25	2	YOK	YOK	TKSBDK16012527	TKSCDK16012556	Y3560001842	Y3560001871	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	160x160	160x160x20	20	160	160	M12	20	13,5	13	15	10	20	80	25	25	135	135	135	M12	48	53	25	3-M12x25	2	YOK	YOK	TKSBDK16016028	TKSCDK16016057	Y3560001843	Y3560001872	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	160x200	160x200x20	20	160	200	M12	20	13,5	13	15	10	20	80	25	25	175	135	175	M12	48	53	25	3-M12x25	2	YOK	YOK	TKSBDK16020029	TKSCDK16020058	Y3560001844	Y3560001873	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	30x80	30x80x12	12	30	80	M8	15	9	9	9	10	12	15	25	15	55	15	55	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK03008060	TKSCDK03008085	Y3560001874	Y3560001899	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	30x100	30x100x12	12	30	100	M8	15	9	9	9	10	12	15	25	15	75	15	75	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK03010061	TKSCDK03010086	Y3560001875	Y3560001900	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	30x125	30x125x12	12	30	125	M8	15	9	9	9	10	12	15	25	15	100	15	100	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK03012562	TKSCDK03012587	Y3560001876	Y3560001901	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	30x160	30x160x12	12	30	160	M8	15	9	9	9	10	12	15	25	15	135	15	135	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK03016063	TKSCDK03016088	Y3560001877	Y3560001902	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	30x200	30x200x12	12	30	200	M8	15	9	9	9	10	12	15	25	15	175	15	175	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK03020064	TKSCDK03020089	Y3560001878	Y3560001903	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	40x80	40x80x12	12	40	80	M8	15	9	9	9	10	12	20	25	20	55	20	55	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK04008065	TKSCDK04008090	Y3560001879	Y3560001904	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	40x100	40x100x12	12	40	100	M8	15	9	9	9	10	12	20	25	20	75	20	75	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK04010066	TKSCDK04010091	Y3560001880	Y3560001905	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	40x125	40x125x12	12	40	125	M8	15	9	9	9	10	12	20	25	20	100	20	100	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK04012567	TKSCDK04012592	Y3560001881	Y3560001906	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	40x160	40x160x12	12	40	160	M8	15	9	9	9	10	12	20	25	20	135	20	135	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK04016068	TKSCDK04016093	Y3560001882	Y3560001907	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	40x200	40x200x12	12	40	200	M8	15	9	9	9	10	12	20	25	20	175	20	175	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK04020069	TKSCDK04020094	Y3560001883	Y3560001908	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	50x80	50x80x12	12	50	80	M8	15	9	9	9	10	12	25	25	25	55	25	55	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK05008070	TKSCDK05008095	Y3560001884	Y3560001909	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	50x100	50x100x12	12	50	100	M8	15	9	9	9	10	12	25	25	25	75	25	75	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK05010071	TKSCDK05010096	Y3560001885	Y3560001910	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	50x125	50x125x12	12	50	125	M8	15	9	9	9	10	12	25	25	25	100	25	100	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK05012572	TKSCDK05012597	Y3560001886	Y3560001911	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	50x160	50x160x12	12	50	160	M8	15	9	9	9	10	12	25	25	25	135	25	135	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK05016073	TKSCDK05016098	Y3560001887	Y3560001912	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	50x200	50x200x12	12	50	200	M8	15	9	9	9	10	12	25	25	25	175	25	175	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK05020074	TKSCDK05020099	Y3560001888	Y3560001913	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	60x80	60x80x12	12	60	80	M8	15	9	9	9	10	12	30	25	30	55	30	55	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK06008075	TKSCDK060080100	Y3560001889	Y3560001914	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	60x100	60x100x12	12	60	100	M8	15	9	9	9	10	12	30	25	30	75	30	75	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK06010076	TKSCDK060100101	Y3560001890	Y3560001915	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	60x125	60x125x12	12	60	125	M8	15	9	9	9	10	12	30	25	30	100	30	100	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK06012577	TKSCDK060125102	Y3560001891	Y3560001916	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	60x160	60x160x12	12	60	160	M8	15	9	9	9	10	12	30	25	30	135	30	135	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK06016078	TKSCDK060160103	Y3560001892	Y3560001917	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	60x200	60x200x12	12	60	200	M8	15	9	9	9	10	12	30	25	30	175	30	175	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK06020079	TKSCDK060200104	Y3560001893	Y3560001918	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	80x80	80x80x12	12	80	80	M8	15	9	9	9	10	12	40	25	40	55	40	55	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK08008080	TKSCDK080080105	Y3560001894	Y3560001919	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	80x100	80x100x12	12	80	100	M8	15	9	9	9	10	12	40	25	40	75	40	75	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK08010081	TKSCDK080100106	Y3560001895	Y3560001920	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	80x125	80x125x12	12	80	125	M8	15	9	9	9	10	12	40	25	40	100	40	100	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK08012582	TKSCDK080125107	Y3560001896	Y3560001921	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	80x160	80x160x12	12	80	160	M8	15	9	9	9	10	12	40	25	40	135	40	135	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK08016083	TKSCDK080160108	Y3560001897	Y3560001922	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
DuzKizak		N	Merkezleme Elemanları	80x200	80x200x12	12	80	200	M8	15	9	9	9	10	12	40	25	40	175	40	175	M8	32	37	25	2-M8x25	2	YOK	YOK	TKSBDK08020084	TKSCDK080200109	Y3560001898	Y3560001923	DuzKizak	WearPlate	PiastraGuida	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA048LDayama; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA048LDayama" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "L(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
LDayama		N	Genel Kalıp Elemanları	65	30x107x65	65	M12	48	53	45	1-M12x45	2	RIF_L_065	TKSLDY03006501	Y3560001924	Ldayama	Gage	Riferimento	Rev03	01/01/2020
LDayama		N	Genel Kalıp Elemanları	90	30x107x90	90	M12	48	53	45	1-M12x45	2	RIF_L_090	TKSLDY03009002	Y3560001925	Ldayama	Gage	Riferimento	Rev03	01/01/2020
LDayama		N	Genel Kalıp Elemanları	120	30x107x120	120	M12	48	53	45	1-M12x45	2	RIF_L_120	TKSLDY03012003	Y3560001926	Ldayama	Gage	Riferimento	Rev03	01/01/2020
LDayama		N	Genel Kalıp Elemanları	150	30x107x150	150	M12	48	53	45	1-M12x45	2	RIF_L_150	TKSLDY03015004	Y3560001927	Ldayama	Gage	Riferimento	Rev03	01/01/2020
LDayama		N	Genel Kalıp Elemanları	180	30x107x180	180	M12	48	53	45	1-M12x45	2	RIF_L_180	TKSLDY03018005	Y3560001928	Ldayama	Gage	Riferimento	Rev03	01/01/2020
LDayama		N	Genel Kalıp Elemanları	250	30x107x250	250	M12	48	53	45	1-M12x45	2	RIF_L_250	TKSLDY03025006	Y3560001929	Ldayama	Gage	Riferimento	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA049DerincekmeSensor; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA049DerincekmeSensor" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "M", "Md(mm)", "Ml(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
DerincekmeSensor		N	Genel Kalıp Elemanları	TekTip	M10	48	53	2-M10x25	1	RIF_M18L150	TKSDCS100M1802	YOK	DerincekmeSensor	FlipperGageWithSensor	PortaSensore	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA050CevreVulkolon; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA050CevreVulkolon" ("ParcaAdi", "Baskı Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "D(mm)", "D1(mm)", "H(mm)", "D2(mm)", "S(mm)", "BAGLANTI_TIPI", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
CevreVulkolon		N	Baskı Elemanları	D100x100	Ø100x100	100	21	100	120	30	2	3	MOL_100100	TKSCVK10010001	Y3560001933	CevreVulkolon	ElastomerSpring	MollaInElastomero	Rev03	01/01/2020
CevreVulkolon		N	Baskı Elemanları	D125x100	Ø125x100	125	27	100	152	30	3	3	MOL_125100	TKSCVK12510002	Y3560001934	CevreVulkolon	ElastomerSpring	MollaInElastomero	Rev03	01/01/2020
CevreVulkolon		N	Baskı Elemanları	D125x125	Ø125x125	125	27	125	152	37,5	3	3	MOL_125125	TKSCVK12512503	Y3560001935	CevreVulkolon	ElastomerSpring	MollaInElastomero	Rev03	01/01/2020
CevreVulkolon		N	Baskı Elemanları	D125x160	Ø125x160	125	27	160	152	48	3	3	MOL_125160	TKSCVK12516004	Y3560001936	CevreVulkolon	ElastomerSpring	MollaInElastomero	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA051VulkolonPimi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA051VulkolonPimi" ("ParcaAdi", "Baskı Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "D1(mm)", "L(mm)", "L1(mm)", "L2(mm)", "D2(mm)", "D3(mm)", "K(mm)", "S(mm)", "M_O(mm)", "M", "Md(mm)", "Ml(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
VulkolonPimi		N	Baskı Elemanları	M16	Ø100x100	21	74	40	10	32	22	17	8	16	M16	64	69	3	PRN_MO_M16	TKSVKP032M1601	Y3560001937	VulkolonPimi	ElastomerSpringPin	PernoPerMolle	Rev03	01/01/2020
VulkolonPimi		N	Baskı Elemanları	M20	Ø125x100	27	100	55	15	38	28	24	10	20	M20	80	85	3	PRN_MO_M20	TKSVKP038M2002	Y3560001938	VulkolonPimi	ElastomerSpringPin	PernoPerMolle	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA052KalipTasimaPernosu; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA052KalipTasimaPernosu" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "A(mm)", "B(mm)", "K(mm)", "L(mm)", "O(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
KalipTasimaPernosu		N	Genel Kalıp Elemanları	2000kg	Ø29x178,5	38	29	6	150	178,5	3	SOL_KG2000	TKSKTP02917801	Y3560001939	KalipTasimaPernosu	LiftingPin	PernoDiSollevamento	Rev03	01/01/2020
KalipTasimaPernosu		N	Genel Kalıp Elemanları	3200kg	Ø33x200,5	43	33	6	170	200,5	3	SOL_KG3200	TKSKTP03320002	Y3560001940	KalipTasimaPernosu	LiftingPin	PernoDiSollevamento	Rev03	01/01/2020
KalipTasimaPernosu		N	Genel Kalıp Elemanları	5000kg	Ø43x233	53	43	8	195	233	3	SOL_KG5000	TKSKTP04323303	Y3560001941	KalipTasimaPernosu	LiftingPin	PernoDiSollevamento	Rev03	01/01/2020
KalipTasimaPernosu		N	Genel Kalıp Elemanları	8000kg	Ø53x282	65	53	10	235	282	3	SOL_KG8000	TKSKTP05328204	Y3560001942	KalipTasimaPernosu	LiftingPin	PernoDiSollevamento	Rev03	01/01/2020
KalipTasimaPernosu		N	Genel Kalıp Elemanları	12000kg	Ø63x352,5	78	63	12	295	352,5	3	SOL_KG12000	TKSKTP06335205	Y3560001943	KalipTasimaPernosu	LiftingPin	PernoDiSollevamento	Rev03	01/01/2020
KalipTasimaPernosu		N	Genel Kalıp Elemanları	30000kg	Ø78x421,5	95	78	14	355	421,5	3	YOK	TKSKTP07842106	Y3560001944	KalipTasimaPernosu	LiftingPin	PernoDiSollevamento	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA053KalipTasimaPernoBorusu; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA053KalipTasimaPernoBorusu" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "PC(mm)", "D2(mm)", "D1(mm)", "T(mm)", "A1(mm)", "A2(mm)", "B(mm)", "L(mm)", "A2_aktifligi", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
KalipTasimaPernoBorusu		X	Genel Kalıp Elemanları	2000kg	Ø38x140	29	30	38	4	18	18	40	140	False	3	YOK	TKSPBR38014001	Y3560001945	KalipTasimaPernoBorusu	CastingDieLiftPins	StampoPerniDiSollevamento	Rev03	01/01/2020
KalipTasimaPernoBorusu		X	Genel Kalıp Elemanları	3200kg	Ø44,5x160	33	34,5	44,5	5	23	23	50	160	False	3	YOK	TKSPBR44516002	Y3560001946	KalipTasimaPernoBorusu	CastingDieLiftPins	StampoPerniDiSollevamento	Rev03	01/01/2020
KalipTasimaPernoBorusu		X	Genel Kalıp Elemanları	5000kg	Ø54x180	43	45	54	4,5	23	23	50	180	False	3	YOK	TKSPBR54018003	Y3560001947	KalipTasimaPernoBorusu	CastingDieLiftPins	StampoPerniDiSollevamento	Rev03	01/01/2020
KalipTasimaPernoBorusu		X	Genel Kalıp Elemanları	8000kg	Ø63,5x220	53	54,5	63,5	4,5	28	28	60	220	False	3	YOK	TKSPBR63522004	Y3560001948	KalipTasimaPernoBorusu	CastingDieLiftPins	StampoPerniDiSollevamento	Rev03	01/01/2020
KalipTasimaPernoBorusu		X	Genel Kalıp Elemanları	12000kg	Ø73x280	63	65	73	4	38	38	80	280	False	3	YOK	TKSPBR73028005	Y3560001949	KalipTasimaPernoBorusu	CastingDieLiftPins	StampoPerniDiSollevamento	Rev03	01/01/2020
KalipTasimaPernoBorusu		X	Genel Kalıp Elemanları	30000kg	Ø89x340	78	80	89	4,5	32	64	100	340	True	3	YOK	TKSPBR89034006	Y3560001950	KalipTasimaPernoBorusu	CastingDieLiftPins	StampoPerniDiSollevamento	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA054AskiEmniyetPimi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA054AskiEmniyetPimi" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "L(mm)", "L1(mm)", "L2(mm)", "L3(mm)", "D1(mm)", "D2(mm)", "D3(mm)", "A1(mm)", "A(mm)", "K(mm)", "M(mm)", "N(mm)", "R(mm)", "S(mm)", "U(mm)", "V(mm)", "Z(mm)", "Pmin(mm)", "Q(mm)", "Wmin(mm)", "X(mm)", "Kmin(mm)", "BOY(mm)", "K1(mm)", "K2(mm)", "K3(mm)", "Ap(mm)", "K4(mm)", "TL(mm)", "TA(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
AskiEmniyetPimi		N	Genel Kalıp Elemanları	40x172	Ø40x172	172	88	39	0	40	39	50	44	27	80	65	45	50	22	18	50	70	80	70	85	100	120	39	30	46	20	30,5	4	65	45	3	PRN_040172	TKSAEP04017201	Y3560001951	AskiEmniyetPimi	PadRetainerPin	PernoDiArresto	Rev03	01/01/2020
AskiEmniyetPimi		N	Genel Kalıp Elemanları	50x206	Ø50x206	206	108	43	0	50	49	63	49	32	90	50	50	63	27	18	60	80	100	80	95	120	130	49	50	49	35	35,5	7	70	50	3	PRN_050206	TKSAEP05020602	Y3560001952	AskiEmniyetPimi	PadRetainerPin	PernoDiArresto	Rev03	01/01/2020
																																												
																																												
																																												
																																												
																																												
																																												
																																												
																																												
																																												
																																												
																																												
																																												
																																												
																																												
																																												
\.


--
-- Data for Name: ISEDA055AsEmVulkolon; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA055AsEmVulkolon" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "D(mm)", "L(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
AsEmVulkolon		N	Genel Kalıp Elemanları	D40	Ø50x70	50	70	1	AMM_05070	TKSAEV05007001	Y3560001954	AsEmVulkolon	ShockAbsorber	Ammortizzatore	Rev03	01/01/2020
AsEmVulkolon		N	Genel Kalıp Elemanları	D50	Ø63x80	63	80	1	AMM_06380	TKSAEV06308002	Y3560001955	AsEmVulkolon	ShockAbsorber	Ammortizzatore	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA056VidaliGommeMapa; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA056VidaliGommeMapa" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "M", "D(mm)", "L(mm)", "A(mm)", "E(mm)", "F(mm)", "P(mm)", "R(mm)", "C1(mm)", "C2(mm)", "Dk(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
VidaliGommeMapa		X	Genel Kalıp Elemanları	M16	Ø46x55	M16	46	56	14	32	42	30	2	2	1,5	110	3	YOK	TKSVGM01605601	YOK	VidaliGommeMapa	CastInThreadedInserts	FusioneInInsertiFilettati	Rev03	01/01/2020
VidaliGommeMapa		X	Genel Kalıp Elemanları	M20	Ø61x60	M20	61	65	15	38	50	36	2	2	2	130	3	YOK	TKSVGM02006502	YOK	VidaliGommeMapa	CastInThreadedInserts	FusioneInInsertiFilettati	Rev03	01/01/2020
VidaliGommeMapa		X	Genel Kalıp Elemanları	M24	Ø78x70	M24	78	76	16	45	60	50	2	2	2	150	3	YOK	TKSVGM02407603	YOK	VidaliGommeMapa	CastInThreadedInserts	FusioneInInsertiFilettati	Rev03	01/01/2020
VidaliGommeMapa		X	Genel Kalıp Elemanları	M30	Ø95x85	M30	95	90	20	56	71	60	5	3	2,5	180	3	YOK	TKSVGM03009004	YOK	VidaliGommeMapa	CastInThreadedInserts	FusioneInInsertiFilettati	Rev03	01/01/2020
VidaliGommeMapa		X	Genel Kalıp Elemanları	M36	Ø100x100	M36	100	105	22	66	83	68	5	3	2,5	220	3	YOK	TKSVGM03610505	YOK	VidaliGommeMapa	CastInThreadedInserts	FusioneInInsertiFilettati	Rev03	01/01/2020
VidaliGommeMapa		X	Genel Kalıp Elemanları	M42	Ø105x110	M42	105	120	25	77	95	76	5	3	3	250	3	YOK	TKSVGM04212006	YOK	VidaliGommeMapa	CastInThreadedInserts	FusioneInInsertiFilettati	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA058; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA058" ("ParcaAdi", "Delme Elemanlari", "Tip", "D", "E", "F", "G", "Ds(mm)", "Ca(mm)", "Da(mm)", "Ea(mm)", "Fa(mm)", "Ga(mm)", "Ha(mm)", "H2a(mm)", "Ka(mm)", "Ma(mm)", "Ssa(mm)", "UMSa(mm)", "Ctba(mm)", "TBa", "Cb(mm)", "Db(mm)", "Eb(mm)", "Fb(mm)", "Gb(mm)", "Hb(mm)", "H2b(mm)", "Kb(mm)", "Mb(mm)", "Ssb(mm)", "UMSb(mm)", "Ctbb(mm)", "TBb", "Cc(mm)", "Dc(mm)", "Ec(mm)", "Fc(mm)", "Gc(mm)", "Hc(mm)", "H2c(mm)", "Kc(mm)", "Mc(mm)", "Nc(mm)", "Ssc(mm)", "UMSc(mm)", "Ctbc(mm)", "CCT", "TBc", "MOELLERKAPALI_AGIR_YUK", "MOELLERYUVARLAK_AGIR_YUK", "MOELLERFORM_AGIR_YUK", "MOELLERKAPALI_HAFiF_YUK", "MOELLERYUVARLAK_HAFiF_YUK", "MOELLERFORM_HAFiF_YUK", "MOELLERKAPALI_AGIR_YUK_EKONOMiK", "MOELLERYUVARLAK_AGIR_YUK_EKONOMiK", "MOELLERFORM_AGIR_YUK_EKONOMiK", "GSB", "MBT", "SANKYO", "OMCR", "BALLUF", "FESTO", "ISO", "TOFAS", "FIBRO", "MOELLER", "SPECiALSPRiNGS", "PERMA", "IFM", "DAYTON", "NEWSTARK", "Revizyon_Numarasi", "Revizyon_Tarihi", "FIRMA", "TERCIH", "FOTOMOELLERKAPALI_AGIR_YUK", "FOTOMOELLERYUVARLAK_AGIR_YUK", "FOTOMOELLERFORM_AGIR_YUK", "FOTOMOELLERKAPALI_HAFiF_YUK", "FOTOMOELLERYUVARLAK_HAFiF_YUK", "FOTOMOELLERFORM_HAFiF_YUK", "FOTOMOELLERKAPALI_AGIR_YUK_EKONOMiK", "FOTOMOELLERYUVARLAK_AGIR_YUK_EKONOMiK", "FOTOMOELLERFORM_AGIR_YUK_EKONOMiK") FROM stdin;
truestripper		D10-L71					10	47,4	33,9	27	15	26,9	37,74	37,74	45,85	45,35	6,3	6,3	8,5	3/8"	47,4	33,9	27	15	26,9	37,74	37,74	46,5	46	6,3	6,3	8,5	3/8"	40	26,5	27	15	21	37,74	37,74	45,85	45,35	22,5	6,3	6,3	6,5	M6X25	3/8"	YOK	YOK	YOK	MTV10-71/SB	MTX10-71/SD	MTW10-71/SF	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	OZEL	YOK	YOK	YOK	YOK	YOK	Rev01	01012017	MOELLER	1	MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D10-L80					10	47,4	33,9	27	15	26,9	37,74	37,74	45,85	45,35	6,3	6,3	8,5	3/8"	47,4	33,9	27	15	26,9	46,74	37,74	55,5	55	6,3	6,3	8,5	3/8"	40	26,5	27	15	21	37,74	37,74	45,85	45,35	22,5	6,3	6,3	6,5	M6X25	3/8"	MTU10-80/SB	MTT10-80/SD	MTZ10-80/SF	MTV10-80/SB	MTX10-80/SD	MTW10-80/SF	MTL10-80/SB	MTJ10-80/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D10-L90					10	47,4	33,9	27	15	26,9	46,74	37,74	55,85	55,35	6,3	6,3	8,5	3/8"	47,4	33,9	27	15	26,9	54,52	37,74	65,5	65	8,4	6,3	8,5	3/8"	40	26,5	27	15	21	46,74	37,74	55,85	55,35	22,5	6,3	6,3	6,5	M6X25	3/8"	MTU10-90/SB	MTT10-90/SD	MTZ10-90/SF	MTV10-90/SB	MTX10-90/SD	MTW10-90/SF	MTL10-90/SB	MTJ10-90/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D10-L100					10	47,4	33,9	27	15	26,9	54,52	37,74	65,86	65,36	8,4	6,3	8,5	3/8"	47,4	33,9	27	15	26,9	54,52	37,74	46,5	65	8,4	6,3	8,5	3/8"	40	26,5	27	15	21	54,52	37,74	65,86	65,36	22,5	8,4	6,3	6,5	M6X25	3/8"	MTU10-100/SB	MTT10-100/SD	MTZ10-100/SF	YOK	YOK	YOK	MTL10-100/SB	MTJ10-100/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D13-L71					13	54,1	37,5	33,3	20	30	37,74	37,74	46,46	45,35	6,5	6,3	8,5	1/2"	54,1	37,5	32,3	20	30	37,74	37,74	46,5	46	6,5	6,5	8,5	1/2"	46,1	29,4	33,3	20	23,9	37,74	37,4	46,46	45,35	25	6,5	6,5	6,5	M6X25	1/2"	YOK	YOK	YOK	MTV13-71/SB	MTX13-71/SD	MTW13-71/SF	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D13-L80					13	54,1	37,5	33,3	20	30	37,74	37,74	46,46	45,35	6,5	6,3	8,5	1/2"	54,1	37,5	32,3	20	30	46,74	37,74	55,5	55	6,5	6,5	8,5	1/2"	46,1	29,4	33,3	20	23,9	37,74	37,4	46,46	45,35	25	6,5	6,5	6,5	M6X25	1/2"	MTU13-80/SB	MTT13-80/SD	MTZ13-80/SF	MTV13-80/SB	MTX13-80/SD	MTW13-80/SF	MTL13-80/SB	MTJ13-80/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D13-L90					13	54,1	37,5	33,3	20	30	46,74	37,74	56,46	55,35	6,5	6,5	8,5	1/2"	54,1	37,5	32,3	20	30	54,52	37,74	65,5	65	8,5	6,5	8,5	1/2"	46,1	29,4	33,3	20	23,9	46,74	37,74	56,46	55,35	25	6,5	6,5	6,5	M6X25	1/2"	MTU13-90/SB	MTT13-90/SD	MTZ13-90/SF	MTV13-90/SB	MTX13-90/SD	MTW13-90/SF	MTL13-90/SB	MTJ13-90/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D13-L100					13	54,1	37,5	33,3	20	30	54,52	37,74	66,46	65,36	8,5	6,5	8,5	1/2"	54,1	37,5	32,3	20	30	54,52	37,74	65,5	65	8,5	6,5	8,5	1/2"	46,1	29,4	33,3	20	23,9	54,52	37,74	66,46	65,36	25	8,5	6,5	6,5	M6X25	1/2"	MTU13-100/SB	MTT13-100/SD	MTZ13-100/SF	YOK	YOK	YOK	MTL13-100/SB	MTJ13-100/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D16-L71					16	58,7	38,7	40	27	31,8	37,74	37,74	46,85	45,35	7,9	6,5	8,5	5/8"	58,7	38,7	40	27	31,8	37,74	37,74	46,5	46	7,9	7,9	8,5	5/8"	50	30	40	27	24,5	37,74	37,74	46,85	45,35	18,5	7,9	7,9	6,5	M6X25	5/8"	YOK	YOK	YOK	MTV16-71/SB	MTX16-71/SD	MTW16-71/SF	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D16-L80					16	58,7	38,7	40	27	31,8	37,74	37,74	46,85	45,35	7,9	6,5	8,5	5/8"	58,7	38,7	40	27	31,8	46,74	37,74	55,5	55	7,9	7,9	8,5	5/8"	50	30	40	27	24,5	37,74	37,74	46,85	45,35	18,5	7,9	7,9	6,5	M6X25	5/8"	MTU16-80/SB	MTT16-80/SD	MTZ16-80/SF	MTV16-80/SB	MTX16-80/SD	MTW16-80/SF	MTL16-80/SB	MTJ16-80/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D16-L90					16	58,7	38,7	40	27	31,8	46,74	37,74	56,85	55,35	7,9	7,9	8,5	5/8"	58,7	38,7	40	27	31,8	54,52	37,74	65,5	65	9,5	7,9	8,5	5/8"	50	30	40	27	24,5	46,74	37,74	56,85	55,35	18,5	7,9	7,9	6,5	M6X25	5/8"	MTU16-90/SB	MTT16-90/SD	MTZ16-90/SF	MTV16-90/SB	MTX16-90/SD	MTW16-90/SF	MTL16-90/SB	MTJ16-90/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D16-L100					16	58,7	38,7	40	27	31,8	54,52	37,74	67,95	65,36	9,5	7,9	8,5	5/8"	58,7	38,7	40	27	31,8	54,52	37,74	65,5	65	9,5	7,9	8,5	5/8"	50	30	40	27	24,5	54,52	37,74	67,95	65,36	18,5	9,5	7,9	6,5	M6X25	5/8"	MTU16-100/SB	MTT16-100/SD	MTZ16-100/SF	YOK	YOK	YOK	MTL16-100/SB	MTJ16-100/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D20-L71					20	65,4	42,4	46,1	33	33,5	37,74	37,74	46,85	45,35	7,3	7,3	8,5	3/4"	65,4	42,4	46,1	33	33,5	37,74	37,74	46,5	46	7,3	7,3	8,5	3/4"	59	36	46,1	33	29	37,74	37,74	46,85	45,35	18	7,3	7,3	8,5	M8X25	3/4"	YOK	YOK	YOK	MTV20-71/SB	MTX20-71/SD	MTW20-71/SF	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D20-L80					20	65,4	42,4	46,1	33	33,5	37,74	37,74	46,85	45,35	7,3	7,3	8,5	3/4"	65,4	42,4	46,1	33	33,5	46,74	37,74	55,5	55	7,3	7,3	8,5	3/4"	59	36	46,1	33	29	37,74	37,74	46,85	45,35	18	7,3	7,3	8,5	M8X25	3/4"	MTU20-80/SB	MTT20-80/SD	MTZ20-80/SF	MTV20-80/SB	MTX20-80/SD	MTW20-80/SF	MTL20-80/SB	MTJ20-80/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D20-L90					20	65,4	42,4	46,1	33	33,5	46,74	37,74	56,85	55,35	7,3	7,3	8,5	3/4"	65,4	42,4	46,1	33	33,5	54,52	37,74	65,5	65	8,1	7,3	8,5	3/4"	59	36	46,1	33	29	46,74	37,74	56,85	55,35	18	7,3	7,3	8,5	M8X25	3/4"	MTU20-90/SB	MTT20-90/SD	MTZ20-90/SF	MTV20-90/SB	MTX20-90/SD	MTW20-90/SF	MTL20-90/SB	MTJ20-90/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D20-L100					20	65,4	42,4	46,1	33	33,5	54,52	37,74	66,86	65,36	8,1	7,3	8,5	3/4"	65,4	42,4	46,1	33	33,5	54,52	37,74	65,5	65	8,1	7,3	8,5	3/4"	59	36	46,1	33	29	54,52	37,74	66,86	65,36	18	8,1	7,3	8,5	M8X25	3/4"	MTU20-100/SB	MTT20-100/SD	MTZ20-100/SF	YOK	YOK	YOK	MTL20-100/SB	MTJ20-100/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D25-L71					25	74,9	47,1	55,6	42,5	40,6	37,74	37,74	46,85	45,35	8,5	7,3	8,5	24mm	74,9	47,1	55,6	42,5	40,6	37,74	37,74	46,5	46	8,5	7,3	8,5	24mm	68,3	40,5	55,6	42,5	33,5	37,74	37,74	46,85	45,35	23	8,5	8,5	8,5	M8X25	24mm	YOK	YOK	YOK	MTV25-71/SB	MTX25-71/SD	MTW25-71/SF	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D25-L80					25	74,9	47,1	55,6	42,5	40,6	37,74	37,74	46,85	45,35	8,5	7,3	8,5	24mm	74,9	47,1	55,6	42,5	40,6	46,74	37,74	55,5	55	8,5	8,5	8,5	24mm	68,3	40,5	55,6	42,5	33,5	37,74	37,74	46,85	45,35	23	8,5	8,5	8,5	M8X25	24mm	MTU25-80/SB	MTT25-80/SD	MTZ25-80/SF	MTV25-80/SB	MTX25-80/SD	MTW25-80/SF	MTL25-80/SB	MTJ25-80/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D25-L90					25	74,9	47,1	55,6	42,5	40,6	46,74	37,74	56,85	55,35	8,5	8,5	8,5	24mm	74,9	47,1	55,6	42,5	40,6	54,52	37,74	65,5	65	9,3	8,5	8,5	24mm	68,3	40,5	55,6	42,5	33,5	46,74	37,74	56,85	55,35	23	8,5	8,5	8,5	M8X25	24mm	MTU25-90/SB	MTT25-90/SD	MTZ25-90/SF	MTV25-90/SB	MTX25-90/SD	MTW25-90/SF	MTL25-90/SB	MTJ25-90/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D25-L100					25	74,9	47,1	55,6	42,5	40,6	54,52	37,74	66,86	65,36	9,3	8,5	8,5	24mm	74,9	47,1	55,6	42,5	40,6	54,52	37,74	65,5	65	9,3	8,5	8,5	24mm	68,3	40,5	55,6	42,5	33,5	54,52	37,74	66,86	65,36	23	9,3	8,5	8,5	M8X25	24mm	MTU25-100/SB	MTT25-100/SD	MTZ25-100/SF	YOK	YOK	YOK	MTL25-100/SB	MTJ25-100/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D32-L71					32	78,9	47,1	63,5	50,6	40,6	37,74	37,74	46,85	45,35	7,7	7,7	8,5	1-1/4"	78,9	47,1	63,5	50,6	40,6	37,74	37,74	46,5	46	7,7	7,7	8,5	1-1/4"	79,4	47,6	63,5	50,6	40,6	37,74	37,74	46,85	45,35	20	7,7	7,7	8,5	M8X25	1-1/4"	YOK	YOK	YOK	MTV32-71/SB	MTX32-71/SD	MTW32-71/SF	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D32-L80					32	78,9	47,1	63,5	50,6	40,6	37,74	37,74	46,85	45,35	7,7	7,7	8,5	1-1/4"	78,9	47,1	63,5	50,6	40,6	46,74	37,74	55,5	55	7,7	7,7	8,5	1-1/4"	79,4	47,6	63,5	50,6	40,6	37,74	37,74	46,85	45,35	20	7,7	7,7	8,5	M8X25	1-1/4"	MTU32-80/SB	MTT32-80/SD	MTZ32-80/SF	MTV32-80/SB	MTX32-80/SD	MTW32-80/SF	MTL32-80/SB	MTJ32-80/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D32-L90					32	78,9	47,1	63,5	50,6	40,6	46,74	37,74	56,85	55,35	7,7	7,7	8,5	1-1/4"	78,9	47,1	63,5	50,6	40,6	54,52	37,74	65,5	65	7,7	7,7	8,5	1-1/4"	79,4	47,6	63,5	50,6	40,6	46,74	37,74	56,85	55,35	20	7,7	7,7	8,5	M8X25	1-1/4"	MTU32-90/SB	MTT32-90/SD	MTZ32-90/SF	MTV32-90/SB	MTX32-90/SD	MTW32-90/SF	MTL32-90/SB	MTJ32-90/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D32-L100					32	78,9	47,1	63,5	50,6	40,6	54,52	37,74	66,86	65,36	7,7	7,7	8,5	1-1/4"	78,9	47,1	63,5	50,6	40,6	54,52	37,74	65,5	65	7,7	7,7	8,5	1-1/4"	79,4	47,6	63,5	50,6	40,6	54,52	37,74	66,86	65,36	20	7,7	7,7	8,5	M8X25	1-1/4"	MTU32-100/SB	MTT32-100/SD	MTZ32-100/SF	YOK	YOK	YOK	MTL32-100/SB	MTJ32-100/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D40-L80					40	90,8	54,5	72,5	59,7	44	37,74	37,74	46,85	45,35	7,6	7,6	8,5	1-1/2"	78,9	47,1	63,5	50,6	40,6	37,74	37,74	46,5	46	7,7	7,7	8,5	1-1/2"	87,2	51	72,5	59,7	44	37,74		46,85	45,35	20	7,6	7,6	8,5	M8X25	1-1/2"	MTU40-80/SB	MTT40-80/SD	MTZ40-80/SF	YOK	YOK	YOK	MTL40-80/SB	MTJ40-80/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D40-L90					40	90,8	54,5	72,5	59,7	44	46,74	37,74	56,85	55,35	7,6	7,6	8,5	1-1/2"	78,9	47,1	63,5	50,6	40,6	46,74	37,74	55,5	55	7,7	7,7	8,5	1-1/2"	87,2	51	72,5	59,7	44	46,74	37,74	56,85	55,35	20	7,6	7,6	8,5	M8X25	1-1/2"	MTU40-90/SB	MTT40-90/SD	MTZ40-90/SF	YOK	YOK	YOK	MTL40-90/SB	MTJ40-90/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D40-L100					40	90,8	54,5	72,5	59,7	44	54,52	37,74	66,86	65,36	7,6	7,6	8,5	1-1/2"	78,9	47,1	63,5	50,6	40,6	54,52	37,74	65,5	65	7,7	7,7	8,5	1-1/2"	87,2	51	72,5	59,7	44	54,52	37,74	66,86	65,36	20	7,6	7,6	8,5	M8X25	1-1/2"	MTU40-100/SB	MTT40-100/SD	MTZ40-100/SF	YOK	YOK	YOK	MTL40-100/SB	MTJ40-100/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
\.


--
-- Data for Name: ISEDA058CylinderUnionNut; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA058CylinderUnionNut" ("ParcaAdi", "Pnomatik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "M16", "M20", "M27", "D26", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
CylinderUnionNut		N	Pnomatik Grubu Elemanları	M16	M16x1.5	True	False	False	False	3	DU_M16_2A	TKSCPKDU01601	YOK	CylinderUnionNut	CylinderUnionNut	Dado	Rev03	01/01/2020
CylinderUnionNut		N	Pnomatik Grubu Elemanları	M20	M20x1.5	False	True	False	False	3	DU_M20_2B	TKSCPKDU02002	YOK	CylinderUnionNut	CylinderUnionNut	Dado	Rev03	01/01/2020
CylinderUnionNut		N	Pnomatik Grubu Elemanları	M27	M27x2	False	False	True	False	3	DU_M27_2C	TKSCPKDU02703	YOK	CylinderUnionNut	CylinderUnionNut	Dado	Rev03	01/01/2020
CylinderUnionNut		N	Pnomatik Grubu Elemanları	D26	Ø26	False	False	False	True	3	DU_025045	TKSCPKDU02504	YOK	CylinderUnionNut	CylinderUnionNut	Dado	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA059; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA059" ("ParcaAdi", "Delme Elemanlari", "Tip", "D", "E", "F", "G", "Ds(mm)", "Ca(mm)", "Da(mm)", "Ea(mm)", "Fa(mm)", "Ga(mm)", "Ha(mm)", "H2a(mm)", "Ka(mm)", "Ma(mm)", "Ssa(mm)", "UMSa(mm)", "Ctba(mm)", "TBa", "Cb(mm)", "Db(mm)", "Eb(mm)", "Fb(mm)", "Gb(mm)", "Hb(mm)", "H2b(mm)", "Kb(mm)", "Mb(mm)", "Ssb(mm)", "UMSb(mm)", "Ctbb(mm)", "TBb", "Cc(mm)", "Dc(mm)", "Ec(mm)", "Fc(mm)", "Gc(mm)", "Hc(mm)", "H2c(mm)", "Kc(mm)", "Mc(mm)", "Nc(mm)", "Ssc(mm)", "UMSc(mm)", "Ctbc(mm)", "CCT", "TBc", "MOELLERKAPALI_AGIR_YUK", "MOELLERYUVARLAK_AGIR_YUK", "MOELLERFORM_AGIR_YUK", "MOELLERKAPALI_HAFiF_YUK", "MOELLERYUVARLAK_HAFiF_YUK", "MOELLERFORM_HAFiF_YUK", "MOELLERKAPALI_AGIR_YUK_EKONOMiK", "MOELLERYUVARLAK_AGIR_YUK_EKONOMiK", "MOELLERFORM_AGIR_YUK_EKONOMiK", "GSB", "MBT", "SANKYO", "OMCR", "BALLUF", "FESTO", "ISO", "TOFAS", "FIBRO", "MOELLER", "SPECiALSPRiNGS", "PERMA", "IFM", "DAYTON", "NEWSTARK", "Revizyon_Numarasi", "Revizyon_Tarihi", "FIRMA", "TERCIH", "FOTOMOELLERKAPALI_AGIR_YUK", "FOTOMOELLERYUVARLAK_AGIR_YUK", "FOTOMOELLERFORM_AGIR_YUK", "FOTOMOELLERKAPALI_HAFiF_YUK", "FOTOMOELLERYUVARLAK_HAFiF_YUK", "FOTOMOELLERFORM_HAFiF_YUK", "FOTOMOELLERKAPALI_AGIR_YUK_EKONOMiK", "FOTOMOELLERYUVARLAK_AGIR_YUK_EKONOMiK", "FOTOMOELLERFORM_AGIR_YUK_EKONOMiK") FROM stdin;
truestripper		D10-L71					10	47,4	33,9	27	15	26,9	37,74	37,74	45,85	45,35	6,3	6,3	8,5	3/8"	47,4	33,9	27	15	26,9	37,74	37,74	46,5	46	6,3	6,3	8,5	3/8"	40	26,5	27	15	21	37,74	37,74	45,85	45,35	22,5	6,3	6,3	6,5	M6X25	3/8"	YOK	YOK	YOK	MTV10-71/SB	MTX10-71/SD	MTW10-71/SF	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	OZEL	YOK	YOK	YOK	YOK	YOK	Rev01	01012017	MOELLER	1	MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D10-L80					10	47,4	33,9	27	15	26,9	37,74	37,74	45,85	45,35	6,3	6,3	8,5	3/8"	47,4	33,9	27	15	26,9	46,74	37,74	55,5	55	6,3	6,3	8,5	3/8"	40	26,5	27	15	21	37,74	37,74	45,85	45,35	22,5	6,3	6,3	6,5	M6X25	3/8"	MTU10-80/SB	MTT10-80/SD	MTZ10-80/SF	MTV10-80/SB	MTX10-80/SD	MTW10-80/SF	MTL10-80/SB	MTJ10-80/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D10-L90					10	47,4	33,9	27	15	26,9	46,74	37,74	55,85	55,35	6,3	6,3	8,5	3/8"	47,4	33,9	27	15	26,9	54,52	37,74	65,5	65	8,4	6,3	8,5	3/8"	40	26,5	27	15	21	46,74	37,74	55,85	55,35	22,5	6,3	6,3	6,5	M6X25	3/8"	MTU10-90/SB	MTT10-90/SD	MTZ10-90/SF	MTV10-90/SB	MTX10-90/SD	MTW10-90/SF	MTL10-90/SB	MTJ10-90/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D10-L100					10	47,4	33,9	27	15	26,9	54,52	37,74	65,86	65,36	8,4	6,3	8,5	3/8"	47,4	33,9	27	15	26,9	54,52	37,74	46,5	65	8,4	6,3	8,5	3/8"	40	26,5	27	15	21	54,52	37,74	65,86	65,36	22,5	8,4	6,3	6,5	M6X25	3/8"	MTU10-100/SB	MTT10-100/SD	MTZ10-100/SF	YOK	YOK	YOK	MTL10-100/SB	MTJ10-100/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D13-L71					13	54,1	37,5	33,3	20	30	37,74	37,74	46,46	45,35	6,5	6,3	8,5	1/2"	54,1	37,5	32,3	20	30	37,74	37,74	46,5	46	6,5	6,5	8,5	1/2"	46,1	29,4	33,3	20	23,9	37,74	37,4	46,46	45,35	25	6,5	6,5	6,5	M6X25	1/2"	YOK	YOK	YOK	MTV13-71/SB	MTX13-71/SD	MTW13-71/SF	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D13-L80					13	54,1	37,5	33,3	20	30	37,74	37,74	46,46	45,35	6,5	6,3	8,5	1/2"	54,1	37,5	32,3	20	30	46,74	37,74	55,5	55	6,5	6,5	8,5	1/2"	46,1	29,4	33,3	20	23,9	37,74	37,4	46,46	45,35	25	6,5	6,5	6,5	M6X25	1/2"	MTU13-80/SB	MTT13-80/SD	MTZ13-80/SF	MTV13-80/SB	MTX13-80/SD	MTW13-80/SF	MTL13-80/SB	MTJ13-80/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D13-L90					13	54,1	37,5	33,3	20	30	46,74	37,74	56,46	55,35	6,5	6,5	8,5	1/2"	54,1	37,5	32,3	20	30	54,52	37,74	65,5	65	8,5	6,5	8,5	1/2"	46,1	29,4	33,3	20	23,9	46,74	37,74	56,46	55,35	25	6,5	6,5	6,5	M6X25	1/2"	MTU13-90/SB	MTT13-90/SD	MTZ13-90/SF	MTV13-90/SB	MTX13-90/SD	MTW13-90/SF	MTL13-90/SB	MTJ13-90/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D13-L100					13	54,1	37,5	33,3	20	30	54,52	37,74	66,46	65,36	8,5	6,5	8,5	1/2"	54,1	37,5	32,3	20	30	54,52	37,74	65,5	65	8,5	6,5	8,5	1/2"	46,1	29,4	33,3	20	23,9	54,52	37,74	66,46	65,36	25	8,5	6,5	6,5	M6X25	1/2"	MTU13-100/SB	MTT13-100/SD	MTZ13-100/SF	YOK	YOK	YOK	MTL13-100/SB	MTJ13-100/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D16-L71					16	58,7	38,7	40	27	31,8	37,74	37,74	46,85	45,35	7,9	6,5	8,5	5/8"	58,7	38,7	40	27	31,8	37,74	37,74	46,5	46	7,9	7,9	8,5	5/8"	50	30	40	27	24,5	37,74	37,74	46,85	45,35	18,5	7,9	7,9	6,5	M6X25	5/8"	YOK	YOK	YOK	MTV16-71/SB	MTX16-71/SD	MTW16-71/SF	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D16-L80					16	58,7	38,7	40	27	31,8	37,74	37,74	46,85	45,35	7,9	6,5	8,5	5/8"	58,7	38,7	40	27	31,8	46,74	37,74	55,5	55	7,9	7,9	8,5	5/8"	50	30	40	27	24,5	37,74	37,74	46,85	45,35	18,5	7,9	7,9	6,5	M6X25	5/8"	MTU16-80/SB	MTT16-80/SD	MTZ16-80/SF	MTV16-80/SB	MTX16-80/SD	MTW16-80/SF	MTL16-80/SB	MTJ16-80/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D16-L90					16	58,7	38,7	40	27	31,8	46,74	37,74	56,85	55,35	7,9	7,9	8,5	5/8"	58,7	38,7	40	27	31,8	54,52	37,74	65,5	65	9,5	7,9	8,5	5/8"	50	30	40	27	24,5	46,74	37,74	56,85	55,35	18,5	7,9	7,9	6,5	M6X25	5/8"	MTU16-90/SB	MTT16-90/SD	MTZ16-90/SF	MTV16-90/SB	MTX16-90/SD	MTW16-90/SF	MTL16-90/SB	MTJ16-90/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D16-L100					16	58,7	38,7	40	27	31,8	54,52	37,74	67,95	65,36	9,5	7,9	8,5	5/8"	58,7	38,7	40	27	31,8	54,52	37,74	65,5	65	9,5	7,9	8,5	5/8"	50	30	40	27	24,5	54,52	37,74	67,95	65,36	18,5	9,5	7,9	6,5	M6X25	5/8"	MTU16-100/SB	MTT16-100/SD	MTZ16-100/SF	YOK	YOK	YOK	MTL16-100/SB	MTJ16-100/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D20-L71					20	65,4	42,4	46,1	33	33,5	37,74	37,74	46,85	45,35	7,3	7,3	8,5	3/4"	65,4	42,4	46,1	33	33,5	37,74	37,74	46,5	46	7,3	7,3	8,5	3/4"	59	36	46,1	33	29	37,74	37,74	46,85	45,35	18	7,3	7,3	8,5	M8X25	3/4"	YOK	YOK	YOK	MTV20-71/SB	MTX20-71/SD	MTW20-71/SF	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D20-L80					20	65,4	42,4	46,1	33	33,5	37,74	37,74	46,85	45,35	7,3	7,3	8,5	3/4"	65,4	42,4	46,1	33	33,5	46,74	37,74	55,5	55	7,3	7,3	8,5	3/4"	59	36	46,1	33	29	37,74	37,74	46,85	45,35	18	7,3	7,3	8,5	M8X25	3/4"	MTU20-80/SB	MTT20-80/SD	MTZ20-80/SF	MTV20-80/SB	MTX20-80/SD	MTW20-80/SF	MTL20-80/SB	MTJ20-80/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D20-L90					20	65,4	42,4	46,1	33	33,5	46,74	37,74	56,85	55,35	7,3	7,3	8,5	3/4"	65,4	42,4	46,1	33	33,5	54,52	37,74	65,5	65	8,1	7,3	8,5	3/4"	59	36	46,1	33	29	46,74	37,74	56,85	55,35	18	7,3	7,3	8,5	M8X25	3/4"	MTU20-90/SB	MTT20-90/SD	MTZ20-90/SF	MTV20-90/SB	MTX20-90/SD	MTW20-90/SF	MTL20-90/SB	MTJ20-90/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D20-L100					20	65,4	42,4	46,1	33	33,5	54,52	37,74	66,86	65,36	8,1	7,3	8,5	3/4"	65,4	42,4	46,1	33	33,5	54,52	37,74	65,5	65	8,1	7,3	8,5	3/4"	59	36	46,1	33	29	54,52	37,74	66,86	65,36	18	8,1	7,3	8,5	M8X25	3/4"	MTU20-100/SB	MTT20-100/SD	MTZ20-100/SF	YOK	YOK	YOK	MTL20-100/SB	MTJ20-100/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D25-L71					25	74,9	47,1	55,6	42,5	40,6	37,74	37,74	46,85	45,35	8,5	7,3	8,5	24mm	74,9	47,1	55,6	42,5	40,6	37,74	37,74	46,5	46	8,5	7,3	8,5	24mm	68,3	40,5	55,6	42,5	33,5	37,74	37,74	46,85	45,35	23	8,5	8,5	8,5	M8X25	24mm	YOK	YOK	YOK	MTV25-71/SB	MTX25-71/SD	MTW25-71/SF	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D25-L80					25	74,9	47,1	55,6	42,5	40,6	37,74	37,74	46,85	45,35	8,5	7,3	8,5	24mm	74,9	47,1	55,6	42,5	40,6	46,74	37,74	55,5	55	8,5	8,5	8,5	24mm	68,3	40,5	55,6	42,5	33,5	37,74	37,74	46,85	45,35	23	8,5	8,5	8,5	M8X25	24mm	MTU25-80/SB	MTT25-80/SD	MTZ25-80/SF	MTV25-80/SB	MTX25-80/SD	MTW25-80/SF	MTL25-80/SB	MTJ25-80/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D25-L90					25	74,9	47,1	55,6	42,5	40,6	46,74	37,74	56,85	55,35	8,5	8,5	8,5	24mm	74,9	47,1	55,6	42,5	40,6	54,52	37,74	65,5	65	9,3	8,5	8,5	24mm	68,3	40,5	55,6	42,5	33,5	46,74	37,74	56,85	55,35	23	8,5	8,5	8,5	M8X25	24mm	MTU25-90/SB	MTT25-90/SD	MTZ25-90/SF	MTV25-90/SB	MTX25-90/SD	MTW25-90/SF	MTL25-90/SB	MTJ25-90/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D25-L100					25	74,9	47,1	55,6	42,5	40,6	54,52	37,74	66,86	65,36	9,3	8,5	8,5	24mm	74,9	47,1	55,6	42,5	40,6	54,52	37,74	65,5	65	9,3	8,5	8,5	24mm	68,3	40,5	55,6	42,5	33,5	54,52	37,74	66,86	65,36	23	9,3	8,5	8,5	M8X25	24mm	MTU25-100/SB	MTT25-100/SD	MTZ25-100/SF	YOK	YOK	YOK	MTL25-100/SB	MTJ25-100/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D32-L71					32	78,9	47,1	63,5	50,6	40,6	37,74	37,74	46,85	45,35	7,7	7,7	8,5	1-1/4"	78,9	47,1	63,5	50,6	40,6	37,74	37,74	46,5	46	7,7	7,7	8,5	1-1/4"	79,4	47,6	63,5	50,6	40,6	37,74	37,74	46,85	45,35	20	7,7	7,7	8,5	M8X25	1-1/4"	YOK	YOK	YOK	MTV32-71/SB	MTX32-71/SD	MTW32-71/SF	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D32-L80					32	78,9	47,1	63,5	50,6	40,6	37,74	37,74	46,85	45,35	7,7	7,7	8,5	1-1/4"	78,9	47,1	63,5	50,6	40,6	46,74	37,74	55,5	55	7,7	7,7	8,5	1-1/4"	79,4	47,6	63,5	50,6	40,6	37,74	37,74	46,85	45,35	20	7,7	7,7	8,5	M8X25	1-1/4"	MTU32-80/SB	MTT32-80/SD	MTZ32-80/SF	MTV32-80/SB	MTX32-80/SD	MTW32-80/SF	MTL32-80/SB	MTJ32-80/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D32-L90					32	78,9	47,1	63,5	50,6	40,6	46,74	37,74	56,85	55,35	7,7	7,7	8,5	1-1/4"	78,9	47,1	63,5	50,6	40,6	54,52	37,74	65,5	65	7,7	7,7	8,5	1-1/4"	79,4	47,6	63,5	50,6	40,6	46,74	37,74	56,85	55,35	20	7,7	7,7	8,5	M8X25	1-1/4"	MTU32-90/SB	MTT32-90/SD	MTZ32-90/SF	MTV32-90/SB	MTX32-90/SD	MTW32-90/SF	MTL32-90/SB	MTJ32-90/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D32-L100					32	78,9	47,1	63,5	50,6	40,6	54,52	37,74	66,86	65,36	7,7	7,7	8,5	1-1/4"	78,9	47,1	63,5	50,6	40,6	54,52	37,74	65,5	65	7,7	7,7	8,5	1-1/4"	79,4	47,6	63,5	50,6	40,6	54,52	37,74	66,86	65,36	20	7,7	7,7	8,5	M8X25	1-1/4"	MTU32-100/SB	MTT32-100/SD	MTZ32-100/SF	YOK	YOK	YOK	MTL32-100/SB	MTJ32-100/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D40-L80					40	90,8	54,5	72,5	59,7	44	37,74	37,74	46,85	45,35	7,6	7,6	8,5	1-1/2"	78,9	47,1	63,5	50,6	40,6	37,74	37,74	46,5	46	7,7	7,7	8,5	1-1/2"	87,2	51	72,5	59,7	44	37,74		46,85	45,35	20	7,6	7,6	8,5	M8X25	1-1/2"	MTU40-80/SB	MTT40-80/SD	MTZ40-80/SF	YOK	YOK	YOK	MTL40-80/SB	MTJ40-80/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D40-L90					40	90,8	54,5	72,5	59,7	44	46,74	37,74	56,85	55,35	7,6	7,6	8,5	1-1/2"	78,9	47,1	63,5	50,6	40,6	46,74	37,74	55,5	55	7,7	7,7	8,5	1-1/2"	87,2	51	72,5	59,7	44	46,74	37,74	56,85	55,35	20	7,6	7,6	8,5	M8X25	1-1/2"	MTU40-90/SB	MTT40-90/SD	MTZ40-90/SF	YOK	YOK	YOK	MTL40-90/SB	MTJ40-90/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
truestripper		D40-L100					40	90,8	54,5	72,5	59,7	44	54,52	37,74	66,86	65,36	7,6	7,6	8,5	1-1/2"	78,9	47,1	63,5	50,6	40,6	54,52	37,74	65,5	65	7,7	7,7	8,5	1-1/2"	87,2	51	72,5	59,7	44	54,52	37,74	66,86	65,36	20	7,6	7,6	8,5	M8X25	1-1/2"	MTU40-100/SB	MTT40-100/SD	MTZ40-100/SF	YOK	YOK	YOK	MTL40-100/SB	MTJ40-100/SD	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	YOK	Rev01	01012017			MOELLERKAPALI_AGIR_YUK	MOELLERYUVARLAK_AGIR_YUK	MOELLERFORM_AGIR_YUK	MOELLERKAPALI_HAFiF_YUK	MOELLERYUVARLAK_HAFiF_YUK	MOELLERFORM_HAFiF_YUK	MOELLERKAPALI_AGIR_YUK_EKONOMiK	MOELLERYUVARLAK_AGIR_YUK_EKONOMiK	MOELLERFORM_AGIR_YUK_EKONOMiK
\.


--
-- Data for Name: ISEDA059EmniyetAlani; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA059EmniyetAlani" ("ParcaAdi", "Tasarım Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "Kritiklik_No", "STQ_NORMU", "TOFAS", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
EmniyetAlani		X	Tasarım Grubu Elemanları	170x170	-	YOK	YOK	YOK	EmniyetAlani	SafetyZone	SafetyZone	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA060PiastraSicurezza; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA060PiastraSicurezza" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
PiastraSicurezza		N	Genel Kalıp Elemanları	Tek_Tip	35x120x105 (5mmPaylı)	M20	80	85	60	3-M20x60	2	PIA_IMB_30100114	TKSEPL03010001	Y3560001965	PiastraSicurezza	PiastraSicurezza	PiastraSicurezza	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA061ManyetikSensor; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA061ManyetikSensor" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "L1(mm)", "L2(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
ManyetikSensor		N	Genel Kalıp Elemanları	M18_Kisa	29,5	45,5	M6	25	30	20	1-M6x20	2	BES 516-326-G-E5-C-S4	TKSMSS01801201	Y3560001966	ManyetikSensor	Sensor	Sensore	Rev03	01/01/2020
ManyetikSensor		N	Genel Kalıp Elemanları	M18_Uzun	50,5	83	M6	25	30	20	1-M6x20	2	BES 516-326-G-S4-C	TKSMSS01801202	Y3560001967	ManyetikSensor	Sensor	Sensore	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA062IcDenStoper; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA062IcDenStoper" ("ParcaAdi", "Stoplama Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "D1(mm)", "D2(mm)", "D3(mm)", "H1(mm)", "H2(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
IcDenStoper		N	Genel Kalıp Elemanları	D80x30	Ø80x30	80	23	13	30	18	M12	48	53	35	1-M12x35	2	TC_080030	TKSIDS08003001	Y3560001968	KolonIcDenStoper	CompensationBlock	TaselloDiCompensazione	Rev03	01/01/2020
IcDenStoper		N	Genel Kalıp Elemanları	D100x30	Ø100x30	100	23	13	30	18	M12	48	53	35	1-M12x35	2	TC_100030	TKSIDS10003002	Y3560001969	KolonIcDenStoper	CompensationBlock	TaselloDiCompensazione	Rev03	01/01/2020
IcDenStoper		N	Genel Kalıp Elemanları	D120x30	Ø120x30	120	23	13	30	18	M12	48	53	35	1-M12x35	2	TC_120030	TKSIDS12003003	Y3560001970	KolonIcDenStoper	CompensationBlock	TaselloDiCompensazione	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA065istifstoperi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA065istifstoperi" ("ParcaAdi", "Stoplama Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "L(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
istifstoperi		N	Stoplama Elemanları	95	95	M8	32	37	35	2-M8x35	1	YOK	TKSIST60309501	YOK	istifstoperi	SpacingBlock	Distanziale	Rev03	01/01/2020
istifstoperi		N	Stoplama Elemanları	120	120	M8	32	37	35	2-M8x35	1	YOK	TKSIST60312002	YOK	istifstoperi	SpacingBlock	Distanziale	Rev03	01/01/2020
istifstoperi		N	Stoplama Elemanları	155	155	M8	32	37	35	2-M8x35	1	YOK	TKSIST60315503	YOK	istifstoperi	SpacingBlock	Distanziale	Rev03	01/01/2020
istifstoperi		N	Stoplama Elemanları	190	190	M8	32	37	35	2-M8x35	1	YOK	TKSIST60319004	YOK	istifstoperi	SpacingBlock	Distanziale	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA066KamDuzkizak; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA066KamDuzkizak" ("ParcaAdi", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "W(mm)", "L(mm)", "S(mm)", "L1(mm)", "L2(mm)", "B(mm)", "D(mm)", "D1(mm)", "T(mm)", "M", "Md(mm)", "Ml(mm)", "F", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
KamDuzkizak	N	Kam Elemanları	25x110x12	25x110x12	25	110	12	25	60	12,5	15	9	8,5	M8	32	37	A	20	2-M8x20	2	YOK	TKSIBK02511001	Y3560001975	KamDuzkizak	CamSlidePlate	PiastraGuidaAutolubrificante	Rev03	01/01/2020
KamDuzkizak	N	Kam Elemanları	25x120x12	25x120x12	25	120	12	25	70	12,5	15	9	8,5	M8	32	37	A	20	2-M8x20	2	YOK	TKSIBK02512002	Y3560001976	KamDuzkizak	CamSlidePlate	PiastraGuidaAutolubrificante	Rev03	01/01/2020
KamDuzkizak	N	Kam Elemanları	25x110x15	25x110x15	25	110	15	25	60	12,5	18	11	10,5	M10	40	45	A	25	2-M10x25	2	YOK	TKSIBK02511003	Y3560001977	KamDuzkizak	CamSlidePlate	PiastraGuidaAutolubrificante	Rev03	01/01/2020
KamDuzkizak	N	Kam Elemanları	25x120x15	25x120x15	25	120	15	25	70	12,5	18	11	10,5	M10	40	45	A	25	2-M10x25	2	YOK	TKSIBK02512004	Y3560001978	KamDuzkizak	CamSlidePlate	PiastraGuidaAutolubrificante	Rev03	01/01/2020
KamDuzkizak	N	Kam Elemanları	60x125x30	60x125x30	60	125	30	25	75	30	20	13,5	13	M12	48	53	A	35	2-M12x35	2	YOK	TKSIBK06012505	Y3560001979	KamDuzkizak	CamSlidePlate	PiastraGuidaAutolubrificante	Rev03	01/01/2020
KamDuzkizak	N	Kam Elemanları	60x160x30	60x160x30	60	160	30	25	110	30	20	13,5	13	M12	48	53	A	35	2-M12x35	2	YOK	TKSIBK06016006	Y3560001980	KamDuzkizak	CamSlidePlate	PiastraGuidaAutolubrificante	Rev03	01/01/2020
KamDuzkizak	N	Kam Elemanları	60x200x30	60x200x30	60	200	30	25	75	30	20	13,5	13	M12	48	53	B	35	3-M12x35	2	YOK	TKSIBK06020007	Y3560001981	KamDuzkizak	CamSlidePlate	PiastraGuidaAutolubrificante	Rev03	01/01/2020
KamDuzkizak	N	Kam Elemanları	60x125x40	60x125x40	60	125	40	25	75	30	20	13,5	13	M12	48	53	A	45	2-M12x45	2	YOK	TKSIBK06012508	Y3560001982	KamDuzkizak	CamSlidePlate	PiastraGuidaAutolubrificante	Rev03	01/01/2020
KamDuzkizak	N	Kam Elemanları	60x160x40	60x160x40	60	160	40	25	110	30	20	13,5	13	M12	48	53	A	45	2-M12x45	2	YOK	TKSIBK06016009	Y3560001983	KamDuzkizak	CamSlidePlate	PiastraGuidaAutolubrificante	Rev03	01/01/2020
KamDuzkizak	N	Kam Elemanları	60x200x40	60x200x40	60	200	40	25	75	30	20	13,5	13	M12	48	53	B	45	3-M12x45	2	YOK	TKSIBK06020010	Y3560001984	KamDuzkizak	CamSlidePlate	PiastraGuidaAutolubrificante	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA067DisiVKizak; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA067DisiVKizak" ("ParcaAdi", "Kam Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "W(mm)", "L(mm)", "L1(mm)", "L2(mm)", "H(mm)", "H2(mm)", "r(mm)", "A(mm)", "B(mm)", "D(mm)", "D1(mm)", "D2(mm)", "T(mm)", "M", "Teksen(mm)", "Md(mm)", "MI(mm)", "CVT", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
DisiVKizak		K	Kam Elemanları	65x150	65x150x35	65	150	100	45	35	22	7	17	18	13,5	20	12	8	M12	18	48	53	2	25	2-M12x25	2	G_V_150065_F	TKSCVK06515001	Y3560001985	DisiVKizak	UpperVGuide	GuidaVAutolubrificante	Rev03	01/01/2020
DisiVKizak		K	Kam Elemanları	65x200	65x200x35	65	200	150	95	35	22	7	17	18	13,5	20	12	8	M12	18	48	53	2	25	2-M12x25	2	G_V_200065_F	TKSCVK06520002	Y3560001986	DisiVKizak	UpperVGuide	GuidaVAutolubrificante	Rev03	01/01/2020
DisiVKizak		K	Kam Elemanları	65x250	65x250x35	65	250	100	145	35	22	7	17	18	13,5	20	12	8	M12	18	48	53	3	25	3-M12x25	2	G_V_250065_F	TKSCVK06525003	Y3560001987	DisiVKizak	UpperVGuide	GuidaVAutolubrificante	Rev03	01/01/2020
DisiVKizak		K	Kam Elemanları	65x300	65x300x35	65	300	125	195	35	22	7	17	18	13,5	20	12	8	M12	18	48	53	3	25	3-M12x25	2	G_V_300065_F	TKSCVK06530004	Y3560001988	DisiVKizak	UpperVGuide	GuidaVAutolubrificante	Rev03	01/01/2020
DisiVKizak		K	Kam Elemanları	125x150	125x150x60	125	150	100	45	60	34	10	32	28	17,5	26	16	15	M16	28	64	69	2	35	2-M16x35	2	G_V_150125_F	TKSCVK12515005	Y3560001989	DisiVKizak	UpperVGuide	GuidaVAutolubrificante	Rev03	01/01/2020
DisiVKizak		K	Kam Elemanları	125x200	125x200x60	125	200	150	95	60	34	10	32	28	17,5	26	16	15	M16	28	64	69	2	35	2-M16x35	2	G_V_200125_F	TKSCVK12520006	Y3560001990	DisiVKizak	UpperVGuide	GuidaVAutolubrificante	Rev03	01/01/2020
DisiVKizak		K	Kam Elemanları	125x250	125x250x60	125	250	100	145	60	34	10	32	28	17,5	26	16	15	M16	28	64	69	3	35	3-M16x35	2	G_V_250125_F	TKSCVK12525007	Y3560001991	DisiVKizak	UpperVGuide	GuidaVAutolubrificante	Rev03	01/01/2020
DisiVKizak		K	Kam Elemanları	125x300	125x300x60	125	300	125	195	60	34	10	32	28	17,5	26	16	15	M16	28	64	69	3	35	3-M16x35	2	G_V_300125_F	TKSCVK12530008	Y3560001992	DisiVKizak	UpperVGuide	GuidaVAutolubrificante	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA068ErkekVKizak; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA068ErkekVKizak" ("ParcaAdi", "Kam Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "W(mm)", "L(mm)", "L1(mm)", "L2(mm)", "H(mm)", "A(mm)", "D(mm)", "D1(mm)", "D2(mm)", "D3(mm)", "T(mm)", "M", "Md(mm)", "MI(mm)", "CVT", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
ErkekVKizak		K	Kam Elemanları	65x150	65x150x47	65	150	100	45	3	47	20	13.5	12	14	20	M12	48	53	2	35	2-M12x35	2	G_V_150065_M	TKSBVK06515001	Y3560001993	ErkekVKizak	LowerVGuide	GuidaVInAcciaio	Rev03	01/01/2020
ErkekVKizak		K	Kam Elemanları	65x200	65x200x47	65	200	150	95	3	47	20	13.5	12	14	20	M12	48	53	2	35	2-M12x35	2	G_V_200065_M	TKSBVK06520002	Y3560001994	ErkekVKizak	LowerVGuide	GuidaVInAcciaio	Rev03	01/01/2020
ErkekVKizak		K	Kam Elemanları	65x250	65x250x47	65	250	100	145	3	47	20	13.5	12	14	20	M12	48	53	3	35	3-M12x35	2	G_V_250065_M	TKSBVK06525003	Y3560001995	ErkekVKizak	LowerVGuide	GuidaVInAcciaio	Rev03	01/01/2020
ErkekVKizak		K	Kam Elemanları	65x300	65x300x47	65	300	125	195	3	47	20	13.5	12	14	20	M12	48	53	3	35	3-M12x35	2	G_V_300065_M	TKSBVK06530004	Y3560001996	ErkekVKizak	LowerVGuide	GuidaVInAcciaio	Rev03	01/01/2020
ErkekVKizak		K	Kam Elemanları	125x150	125x150x57	125	150	100	45	5	57	26	17.5	16	18	15	M16	64	69	2	50	2-M16x50	2	G_V_150125_M	TKSBVK12515005	Y3560001997	ErkekVKizak	LowerVGuide	GuidaVInAcciaio	Rev03	01/01/2020
ErkekVKizak		K	Kam Elemanları	125x200	125x200x57	125	200	150	95	5	57	26	17.5	16	18	15	M16	64	69	2	50	2-M16x50	2	G_V_200125_M	TKSBVK12520006	Y3560001998	ErkekVKizak	LowerVGuide	GuidaVInAcciaio	Rev03	01/01/2020
ErkekVKizak		K	Kam Elemanları	125x250	125x250x57	125	250	100	145	5	57	26	17.5	16	18	15	M16	64	69	3	50	3-M16x50	2	G_V_250125_M	TKSBVK12525007	Y3560001999	ErkekVKizak	LowerVGuide	GuidaVInAcciaio	Rev03	01/01/2020
ErkekVKizak		K	Kam Elemanları	125x300	125x300x57	125	300	125	195	5	57	26	17.5	16	18	15	M16	64	69	3	50	3-M16x50	2	G_V_300125_M	TKSBVK12530008	Y3560002000	ErkekVKizak	LowerVGuide	GuidaVInAcciaio	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA069DisliAyarPlakasi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA069DisliAyarPlakasi" ("ParcaAdi", "Stoplama Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "W(mm)", "L2(mm)", "A(mm)", "L1(mm)", "L3(mm)", "L4(mm)", "L5(mm)", "L6(mm)", "H(mm)", "M", "Md(mm)", "MI(mm)", "CVT", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
DisliAyarPlakasi		N	Stoplama Elemanları	60x130	60x130x40	60	130	30	90	90	61	72	79	16.04	M10	40	45	2	30	2-M10x30	1	TCRS_13060	TKSDAS06013001	Y3560002009	DisliAyarPlakasi	SpacerPlate	TaselloDiCompensazione	Rev03	01/01/2020
DisliAyarPlakasi		N	Stoplama Elemanları	80x160	80x160x40	80	160	40	120	110	71	82	89	16.16	M10	40	45	2	30	2-M10x30	1	TCRS_16080	TKSDAS08016002	Y3560002010	DisliAyarPlakasi	SpacerPlate	TaselloDiCompensazione	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA070HTipiKamPlaka; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA070HTipiKamPlaka" ("Parca Adı", "Kam Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Alternatif", "Olcu", "W(mm)", "L(mm)", "L1(mm)", "T(mm)", "A(mm)", "B", "M", "Md(mm)", "MI(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "TOFASCELIK", "TOFASBRONZ", "Depo_KoduCELIK", "Depo_KoduBRONZ", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
HTipiKamPlaka		N	Kam Elemanları	100x170x45	20_Derece	100x170x45	100	170	143.37	45	60	20	M12	48	53	40	4-M12x40	2	YOK	OZEL	TKSACK10017001	TKSAGK10017001	YOK	YOK	HTipiKamPlaka	CamDwellWearPlates	Cuneo	Rev03	01/01/2020
HTipiKamPlaka		N	Kam Elemanları	125x170x45	20_Derece	125x170x45	125	170	143.37	45	85	20	M12	48	53	40	4-M12x40	2	YOK	YOK	TKSACK12517002	TKSAGK12517002	YOK	YOK	HTipiKamPlaka	CamDwellWearPlates	Cuneo	Rev03	01/01/2020
HTipiKamPlaka		N	Kam Elemanları	150x170x45	20_Derece	150x170x45	150	170	143.37	45	110	20	M12	48	53	40	4-M12x40	2	YOK	YOK	TKSACK15017003	TKSAGK15017003	YOK	YOK	HTipiKamPlaka	CamDwellWearPlates	Cuneo	Rev03	01/01/2020
HTipiKamPlaka		N	Kam Elemanları	200x170x45	20_Derece	200x170x45	200	170	143.37	45	160	20	M12	48	53	40	4-M12x40	2	YOK	YOK	TKSACK20017004	TKSAGK20017004	YOK	YOK	HTipiKamPlaka	CamDwellWearPlates	Cuneo	Rev03	01/01/2020
HTipiKamPlaka		N	Kam Elemanları	100x150x45	30_Derece	100x150x45	100	150	127.86	45	60	30	M12	48	53	40	4-M12x40	2	YOK	YOK	TKSACK10015005	TKSAGK10015005	YOK	YOK	HTipiKamPlaka	CamDwellWearPlates	Cuneo	Rev03	01/01/2020
HTipiKamPlaka		N	Kam Elemanları	100x170x60	30_Derece	100x170x60	100	170	127.86	60	60	30	M12	48	53	40	4-M12x40	2	YOK	YOK	TKSACK10017006	TKSAGK10017006	YOK	YOK	HTipiKamPlaka	CamDwellWearPlates	Cuneo	Rev03	01/01/2020
HTipiKamPlaka		N	Kam Elemanları	125x150x45	30_Derece	125x150x45	125	150	127.86	45	85	30	M12	48	53	40	4-M12x40	2	YOK	YOK	TKSACK12515007	TKSAGK12515007	YOK	YOK	HTipiKamPlaka	CamDwellWearPlates	Cuneo	Rev03	01/01/2020
HTipiKamPlaka		N	Kam Elemanları	125x170x60	30_Derece	125x170x60	125	170	127.86	60	85	30	M12	48	53	40	4-M12x40	2	YOK	YOK	TKSACK12517008	TKSAGK12517008	YOK	YOK	HTipiKamPlaka	CamDwellWearPlates	Cuneo	Rev03	01/01/2020
HTipiKamPlaka		N	Kam Elemanları	150x150x45	30_Derece	150x150x45	150	150	127.86	45	110	30	M12	48	53	40	4-M12x40	2	YOK	YOK	TKSACK15015009	TKSAGK15015009	YOK	YOK	HTipiKamPlaka	CamDwellWearPlates	Cuneo	Rev03	01/01/2020
HTipiKamPlaka		N	Kam Elemanları	150x170x60	30_Derece	150x170x60	150	170	127.86	60	110	30	M12	48	53	40	4-M12x40	2	YOK	YOK	TKSACK15017010	TKSAGK15017010	YOK	YOK	HTipiKamPlaka	CamDwellWearPlates	Cuneo	Rev03	01/01/2020
HTipiKamPlaka		N	Kam Elemanları	200x150x45	30_Derece	200x150x45	200	150	127.86	45	160	30	M12	48	53	40	4-M12x40	2	YOK	YOK	TKSACK20015011	TKSAGK20015011	YOK	YOK	HTipiKamPlaka	CamDwellWearPlates	Cuneo	Rev03	01/01/2020
HTipiKamPlaka		N	Kam Elemanları	200x170x60	30_Derece	200x170x60	200	170	127.86	60	160	30	M12	48	53	40	4-M12x40	2	YOK	YOK	TKSACK20017012	TKSAGK20017012	YOK	YOK	HTipiKamPlaka	CamDwellWearPlates	Cuneo	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA073AzotSaati; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA073AzotSaati" ("ParcaAdi", "Baskı Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "M", "Md(mm)", "MI(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
AzotSaati		A	Baskı Elemanları	TekTip	80x140x84.5	M8	32	37	45	2-M8x45	1	YOK	TKSATS71602001	Y3560002035	AzotSaati	NitrogenControlPanel	NitrogenControlPanel	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA074ElektrikKutusu; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA074ElektrikKutusu" ("ParcaAdi", "Elektrik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "A(mm)", "B(mm)", "C(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
ElektrikKutusu		E	Elektrik Grubu Elemanları	K5	90x130x170	90	130	170	2	STL52011	TKSELKK5001	YOK	ElektrikKutusu	ElectricalBox	ElectricalBox	Rev03	01/01/2020
ElektrikKutusu		E	Elektrik Grubu Elemanları	K51	81x120x220	81	120	220	2	STL52011	TKSELKK5102	YOK	ElektrikKutusu	ElectricalBox	ElectricalBox	Rev03	01/01/2020
ElektrikKutusu		E	Elektrik Grubu Elemanları	K6	90x160x200	90	160	200	2	STL52011	TKSELKK6003	YOK	ElektrikKutusu	ElectricalBox	ElectricalBox	Rev03	01/01/2020
ElektrikKutusu		E	Elektrik Grubu Elemanları	K61	91x160x260	91	160	260	2	STL52011	TKSELKK6104	YOK	ElektrikKutusu	ElectricalBox	ElectricalBox	Rev03	01/01/2020
ElektrikKutusu		E	Elektrik Grubu Elemanları	K71	111x230x280	111	230	280	2	STL52011	TKSELKK7105	YOK	ElektrikKutusu	ElectricalBox	ElectricalBox	Rev03	01/01/2020
ElektrikKutusu		E	Elektrik Grubu Elemanları	K4	72x82x130	72	82	130	2	STL52011	TKSELKK4006	YOK	ElektrikKutusu	ElectricalBox	ElectricalBox	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA075ElektrikSoketi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA075ElektrikSoketi" ("ParcaAdi", "Elektrik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "M", "Md(mm)", "MI(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
ElektrikSoketi		E	Elektrik Grubu Elemanları	TekTip	M4	20	25	15	4-M4x15	2	YOK	TKSELSG16E01	YOK	ElektrikSoketi	ElectricPlug	ElectricPlug	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA076HavaTanki; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA076HavaTanki" ("ParcaAdi", "Pnomatik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "A(mm)", "B(mm)", "C(mm)", "D(mm)", "F(mm)", "G(mm)", "L1(mm)", "Delikadet", "M", "Md(mm)", "MI(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
HavaTanki		H	Pnomatik Grubu Elemanları	SRA1-3lt	120	75	28	10,5	105	138	323	4	M10	40	45	30	4-M10x30	3	SRA1/3 N4 FORI	TKSHVT00332301	Y3560002039	HavaTanki	CompensationTanks	IlSerbatoio	Rev03	01/01/2020
HavaTanki		H	Pnomatik Grubu Elemanları	SRA1-4lt	120	75	28	10,5	105	138	412	4	M10	40	45	30	4-M10x30	3	SRA1/4 N4 FORI	TKSHVT00441202	Y3560002040	HavaTanki	CompensationTanks	IlSerbatoio	Rev03	01/01/2020
HavaTanki		H	Pnomatik Grubu Elemanları	SRA1-5lt	120	75	28	10,5	105	138	501	4	M10	40	45	30	4-M10x30	3	SRA1/5 N4 FORI	TKSHVT00550103	Y3560002041	HavaTanki	CompensationTanks	IlSerbatoio	Rev03	01/01/2020
HavaTanki		H	Pnomatik Grubu Elemanları	SRA2-3lt	150	90	34	12,5	127	168	227	4	M12	48	53	30	4-M12x30	3	SRA2/3 N4 FORI	TKSHVT00322704	Y3560002042	HavaTanki	CompensationTanks	IlSerbatoio	Rev03	01/01/2020
HavaTanki		H	Pnomatik Grubu Elemanları	SRA2-4lt	150	90	34	12,5	127	168	284	4	M12	48	53	30	4-M12x30	3	SRA2/4 N4 FORI	TKSHVT00428405	Y3560002043	HavaTanki	CompensationTanks	IlSerbatoio	Rev03	01/01/2020
HavaTanki		H	Pnomatik Grubu Elemanları	SRA2-5lt	150	90	34	12,5	127	168	341	4	M12	48	53	30	4-M12x30	3	SRA2/5 N4 FORI	TKSHVT00534106	Y3560002044	HavaTanki	CompensationTanks	IlSerbatoio	Rev03	01/01/2020
HavaTanki		H	Pnomatik Grubu Elemanları	SRA2-6lt	150	90	34	12,5	127	168	398	8	M12	48	53	30	4-M12x30	3	SRA2/6 N8 FORI	TKSHVT00639807	Y3560002045	HavaTanki	CompensationTanks	IlSerbatoio	Rev03	01/01/2020
HavaTanki		H	Pnomatik Grubu Elemanları	SRA3-6lt	200	115	34	12,5	163	218	248	8	M12	48	53	30	4-M12x30	3	SRA3/6 N8 FORI	TKSHVT00624808	Y3560002046	HavaTanki	CompensationTanks	IlSerbatoio	Rev03	01/01/2020
HavaTanki		H	Pnomatik Grubu Elemanları	SRA3-8lt	200	115	34	12,5	163	218	312	8	M12	48	53	30	4-M12x30	3	SRA3/8 N8 FORI	TKSHVT00831209	Y3560002047	HavaTanki	CompensationTanks	IlSerbatoio	Rev03	01/01/2020
HavaTanki		H	Pnomatik Grubu Elemanları	SRA3-10lt	200	115	34	12,5	163	218	376	8	M12	48	53	30	4-M12x30	3	SRA3/10 N8 FORI	TKSHVT01037610	Y3560002048	HavaTanki	CompensationTanks	IlSerbatoio	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA078BasincliHavaHortumu; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA078BasincliHavaHortumu" ("ParcaAdi", "Pnomatik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "FESTO", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
BasincliHavaHortumu		H	Pnomatik Grubu Elemanları	6x1	PUN-6x1-BL	2	YOK	TKSBHHPUN06101	YOK	BasincliHavaHortumu	AirCable	AirCable	Rev03	01/01/2020
BasincliHavaHortumu		H	Pnomatik Grubu Elemanları	12x2	PUN-12x2-BL	2	YOK	TKSBHHPUN12203	YOK	BasincliHavaHortumu	AirCable	AirCable	Rev03	01/01/2020
BasincliHavaHortumu		H	Pnomatik Grubu Elemanları	8x1.25	PUN-8x1.25-BL	2	YOK	TKSBHHPUN08102	YOK	BasincliHavaHortumu	AirCable	AirCable	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA079CabukBaglantiRekoruT; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA079CabukBaglantiRekoruT" ("ParcaAdi", "Pnomatik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "FESTO", "STQ_NORMU", "TOFAS", "Depo_Kodu", "Kritiklik_No", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
CabukBaglantiRekoruT		H	Pnomatik Grubu Elemanları	TekTip	QST-6	YOK	TKSCBRQST601	YOK	1	CabukBaglantiRekoruT	ConnectorsForTubing	ConnectorsForTubing	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA080SensorBaglantisi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA080SensorBaglantisi" ("ParcaAdi", "Elektrik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "DUZ", "ACILI", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
SensorBaglantisi		E	Elektrik Grubu Elemanları	Duz	True	False	1	YOK	TKSSBSS27M1201	YOK	SensorBaglantisi	JumperCables	JumperCables	Rev03	01/01/2020
SensorBaglantisi		E	Elektrik Grubu Elemanları	Acili	False	True	1	YOK	TKSSBSS28M1202	YOK	SensorBaglantisi	JumperCables	JumperCables	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA081EmniyetCenesi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA081EmniyetCenesi" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
EmniyetCenesi		N	Genel Kalıp Elemanları	60x140	60x140x45	2	YOK	TKSEMC06014001	YOK	EmniyetCenesi	 SafetyPlate	PiastraDiSicurezza	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA082SiyiriciMesafeStoperi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA082SiyiriciMesafeStoperi" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
SiyiriciMesafeStoperi		N	Genel Kalıp Elemanları	30x80	30x80x30	3	YOK	TKSSMS03008001	Y3560002058	SiyiriciMesafeStoperi	StopBlockForUpperPad	Distanziale	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA083HavaGirisNozulu; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA083HavaGirisNozulu" ("ParcaAdi", "Pnomatik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
HavaGirisNozulu		H	Pnomatik Grubu Elemanları	1/4	1	YOK	TKSHGNG1406001	Y3560002059	HavaGirisNozulu	AirNozzle	Nozzle	Rev03	01/01/2020
HavaGirisNozulu		H	Pnomatik Grubu Elemanları	3/8	1	YOK	TKSHGNG3806002	Y3560002060	HavaGirisNozulu	AirNozzle	Nozzle	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA084HavaBaglantiBraketi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA084HavaBaglantiBraketi" ("ParcaAdi", "Pnomatik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "Dis", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
HavaBaglantiBraketi		H	Pnomatik Grubu Elemanları	İkiGirisli	45x70x8	G 1/4"	1	YOK	TKSHBB01G1401	Y3560002970	HavaBaglantiBraketi	AirCouplingBracket	SupportoInnestiRapidi	Rev03	01/01/2020
HavaBaglantiBraketi		H	Pnomatik Grubu Elemanları	TekGirisli	45x135x8	G 3/8"	1	YOK	TKSHBB02G3802	Y3560002971	HavaBaglantiBraketi	AirCouplingBracket	SupportoInnestiRapidi	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA085PnomatikKumandaliValf; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA085PnomatikKumandaliValf" ("ParcaAdi", "Pnomatik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "FESTO", "X1(mm)", "Y1(mm)", "X2(mm)", "Y2(mm)", "M", "Md(mm)", "MI(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
PnomatikKumandaliValf		H	Pnomatik Grubu Elemanları	D2C	54x56.5x123.5	151846 J-5/2-D-2-C	12	19	24	19	M6	24	29	1	YOK	TKSPKVJ52D2C01	YOK	PnomatikKumandaliValf	ControlValve	ControlValve	Rev03	01/01/2020
PnomatikKumandaliValf		H	Pnomatik Grubu Elemanları	D3C	65x63.5x145.5	151865 J-5/2-D-3-C	16	24	32	24	M8	32	37	1	YOK	TKSPKVJ52D3C02	YOK	PnomatikKumandaliValf	ControlValve	ControlValve	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA086MekanikKumandaliValf; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA086MekanikKumandaliValf" ("ParcaAdi", "Pnomatik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Kritiklik_No", "Baglanti", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
MekanikKumandaliValf		H	Pnomatik Grubu Elemanları	DuzBaglanti	1	2-M5x30	YOK	TKSMKVG001801	YOK	MekanikKumandaliValf	MechanicalControlValves	MechanicalControlValves	Rev03	01/01/2020
MekanikKumandaliValf		H	Pnomatik Grubu Elemanları	DirsekBaglanti	1	2-M5x30	YOK	TKSMKVG901802	YOK	MekanikKumandaliValf	MechanicalControlValves	MechanicalControlValves	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA087AzotBaglantiRekor; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA087AzotBaglantiRekor" ("ParcaAdi", "Baskı Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "RTCD", "RTCR", "RPTD", "RPTR", "RDRU", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
AzotBaglantiRekor		A	Baskı Elemanları	RTCD	True	False	False	False	False	1	YOK	TKSABRRTCD01	Y3560002070	AzotBaglantiRekor	ConnectionToCylinder	ConnectionToCylinder	Rev03	01/01/2020
AzotBaglantiRekor		A	Baskı Elemanları	RTCR	False	True	False	False	False	1	YOK	TKSABRRTCR02	Y3560002071	AzotBaglantiRekor	ConnectionToCylinder	ConnectionToCylinder	Rev03	01/01/2020
AzotBaglantiRekor		A	Baskı Elemanları	RPTD	False	False	True	False	False	1	YOK	TKSABRRPTD03	Y3560002072	AzotBaglantiRekor	ConnectionToCylinder	ConnectionToCylinder	Rev03	01/01/2020
AzotBaglantiRekor		A	Baskı Elemanları	RPTR	False	False	False	True	False	1	YOK	TKSABRRPTR04	Y3560002073	AzotBaglantiRekor	ConnectionToCylinder	ConnectionToCylinder	Rev03	01/01/2020
AzotBaglantiRekor		A	Baskı Elemanları	RDRU	False	False	False	False	True	1	YOK	TKSABRRDRU05	Y3560002074	AzotBaglantiRekor	ConnectionToCylinder	ConnectionToCylinder	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA088BaglantiPlakasi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA088BaglantiPlakasi" ("ParcaAdi", "Baskı Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
BaglantiPlakasi		A	Baskı Elemanları	3_Lu	20x25x28	M6	32	37	20	YOK	1	YOK	TKSADPG1800301	Y3560002075	BaglantiPlakasi	DistributionBlocks	DistributionBlocks	Rev03	01/01/2020
BaglantiPlakasi		A	Baskı Elemanları	4_Lu	20x40x40	M6	24	29	30	2-M6x30	1	YOK	TKSADPG1800402	Y3560002076	BaglantiPlakasi	DistributionBlocks	DistributionBlocks	Rev03	01/01/2020
BaglantiPlakasi		A	Baskı Elemanları	6_Li	25x40x75	M10	40	45	60	2-M10x60	1	YOK	TKSADPG1800603	Y3560002077	BaglantiPlakasi	DistributionBlocks	DistributionBlocks	Rev03	01/01/2020
BaglantiPlakasi		A	Baskı Elemanları	10_Lu	25x40x150	M6	24	29	30	2-M6x30	1	YOK	TKSADPG1801004	Y3560002078	BaglantiPlakasi	DistributionBlocks	DistributionBlocks	Rev03	01/01/2020
BaglantiPlakasi		A	Baskı Elemanları	12_Li	40x40x140	M10	40	45	60	2-M10x60	1	YOK	TKSADPG1801405	Y3560002079	BaglantiPlakasi	DistributionBlocks	DistributionBlocks	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA089CatalMafsal; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA089CatalMafsal" ("ParcaAdi", "Pnomatik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
CatalMafsal		H	Pnomatik Grubu Elemanları	32_Lik_Piston	26x20x52	-	1	YOK	TKSPCMSG01001	YOK	CatalMafsal	RodEndClevis	CilindroAriaForcella	Rev03	01/01/2020
CatalMafsal		H	Pnomatik Grubu Elemanları	40_Lik_Piston	31.1x24x62	-	1	YOK	TKSPCMSG01202	YOK	CatalMafsal	RodEndClevis	CilindroAriaForcella	Rev03	01/01/2020
CatalMafsal		H	Pnomatik Grubu Elemanları	50-63_Luk_Piston	39.5x32x83	-	1	YOK	TKSPCMSG01603	YOK	CatalMafsal	RodEndClevis	CilindroAriaForcella	Rev03	01/01/2020
CatalMafsal		H	Pnomatik Grubu Elemanları	80-100_Luk_Piston	55x40x105	-	1	YOK	TKSPCMSG02004	YOK	CatalMafsal	RodEndClevis	CilindroAriaForcella	Rev03	01/01/2020
CatalMafsal		H	Pnomatik Grubu Elemanları	125_Lik_Piston	73x55x148	-	1	YOK	TKSPCMSG02705	YOK	CatalMafsal	RodEndClevis	CilindroAriaForcella	Rev03	01/01/2020
CatalMafsal		H	Pnomatik Grubu Elemanları	160-200_Luk_Piston	93x70x188	-	1	YOK	TKSPCMSG03606	YOK	CatalMafsal	RodEndClevis	CilindroAriaForcella	Rev03	01/01/2020
															
															
															
															
															
															
															
															
															
															
															
															
															
															
\.


--
-- Data for Name: ISEDA090EklemYerBaglanti; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA090EklemYerBaglanti" ("ParcaAdi", "Pnomatik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "BR(mm)", "H(mm)", "XX(mm)", "XR(mm)", "BT(mm)", "CK(mm)", "EB(mm)", "EM(mm)", "GL(mm)", "HB(mm)", "OF(mm)", "PH(mm)", "RA(mm)", "TE(mm)", "UL(mm)", "UR(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
EklemYerBaglanti		H	Pnomatik Grubu Elemanları	32_Lik_Piston	10	5	6,5	1,328	8	10	13	25,8	21	5,5	3,0001	32	18	38	51	31	M5	20	25	20	4-M5x20	1	YOK	TKSPEBDS03201	YOK	EklemYerBaglanti	AB7PivotBracket	CilindroAriaControcernira	Rev03	01/01/2020
EklemYerBaglanti		H	Pnomatik Grubu Elemanları	40_Lik_Piston	11	5	6,5	1,66	10	12	13	27,8	24	5,5	5,0001	36	22	41	54	35	M5	20	25	20	4-M5x20	1	YOK	TKSPEBDS04002	YOK	EklemYerBaglanti	AB7PivotBracket	CilindroAriaControcernira	Rev03	01/01/2020
EklemYerBaglanti		H	Pnomatik Grubu Elemanları	50_Lik_Piston	12	5	7,5	1,992	12	12	13	31,8	33	6,6	7,0001	45	30	50	65	45	M6	24	29	25	4-M6x25	1	YOK	TKSPEBDS05003	YOK	EklemYerBaglanti	AB7PivotBracket	CilindroAriaControcernira	Rev03	01/01/2020
EklemYerBaglanti		H	Pnomatik Grubu Elemanları	63_Luk_Piston	14,5	0	8	1,992	12	16	14	40	37	6,6	10,8	50	35	52	67	51	M6	24	29	25	4-M6x25	1	YOK	TKSPEBDS06304	YOK	EklemYerBaglanti	AB7PivotBracket	CilindroAriaControcernira	Rev03	01/01/2020
EklemYerBaglanti		H	Pnomatik Grubu Elemanları	80_Lik_Piston	14,5	0	10	2,324	14	16	19	50	47	9	12,7	63	40	66	86	60	M8	32	37	25	4-M8x25	1	YOK	TKSPEBDS08005	YOK	EklemYerBaglanti	AB7PivotBracket	CilindroAriaControcernira	Rev03	01/01/2020
EklemYerBaglanti		H	Pnomatik Grubu Elemanları	100_Luk_Piston	18,5	0	10	2,49	15	20	19	60	55	9	13,7	71	50	76	96	70	M8	32	37	30	4-M8x30	1	YOK	TKSPEBDS10006	YOK	EklemYerBaglanti	AB7PivotBracket	CilindroAriaControcernira	Rev03	01/01/2020
EklemYerBaglanti		H	Pnomatik Grubu Elemanları	125_Lik_Piston	22	0	15	3,32	20	25	19	70	70	11	18,6	90	60	94	124	90	M10	40	45	40	4-M10x40	1	YOK	TKSPEBDS12507	YOK	EklemYerBaglanti	AB7PivotBracket	CilindroAriaControcernira	Rev03	01/01/2020
EklemYerBaglanti		H	Pnomatik Grubu Elemanları	160_Lik_Piston	31	0	19	4,15	25	30	19	90	97	14	23,6	115	88	118	156	126	M12	48	53	40	4-M12x40	1	YOK	TKSPEBDS16008	YOK	EklemYerBaglanti	AB7PivotBracket	CilindroAriaControcernira	Rev03	01/01/2020
EklemYerBaglanti		H	Pnomatik Grubu Elemanları	200_Luk_Piston	31	0	20	4,98	30	30	25	90	105	18	28,5	135	90	122	162	130	M16	64	69	50	4-M16x50	1	YOK	TKSPEBDS20009	YOK	EklemYerBaglanti	AB7PivotBracket	CilindroAriaControcernira	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA091PnomatikZimbaTutucu; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA091PnomatikZimbaTutucu" ("ParcaAdi", "Delme Elemanlari", "Tip", "Malzeme_Sinifi", "Grup", "DAYTON", "H(mm)", "H2(mm)", "X1(mm)", "X2(mm)", "X3(mm)", "X4_ACI1(mm)", "X4_ACI2(mm)", "3", "2", "BP", "BB", "BS", b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "pimcapi(mm)", "Cbpim(mm)", "xd1(mm)", "yd1(mm)", "xp1(mm)", "yp1(mm)", "xd2(mm)", "yd2(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
PnomatikZimbaTutucu		D10P	Z	Delme Elemanlari	ARAS10	13	23	76	30	59	17,5	17,5	False	True	True	False	False	True	False	False	False	False	False	False	False	False	False	False	False	False	False	False	False	False	M8	32	37	60	2-M8x60	6	18	25	15	41	15	25	15	1	YOK	TKSPZT00101001	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D13P	Z	Delme Elemanlari	ARAS13	13	20	76	30	59	17,5	17,5	False	True	True	False	False	False	True	False	False	False	False	False	False	False	False	False	False	False	False	False	False	False	M10	40	45	60	2-M10x60	6	18	25	15	41	15	25	15	1	YOK	TKSPZT00101302	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D16P	Z	Delme Elemanlari	ARAS16	13	20	76	30	59	17,5	17,5	False	True	True	False	False	False	False	True	False	False	False	False	False	False	False	False	False	False	False	False	False	False	M10	40	45	60	2-M10x60	6	18	25	15	41	15	25	15	1	YOK	TKSPZT00101603	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D20P	Z	Delme Elemanlari	ARAS20	13	20	85	35	71	22,5	22,5	False	True	True	False	False	False	False	False	True	False	False	False	False	False	False	False	False	False	False	False	False	False	M10	40	45	60	2-M10x60	6	18	29	19	45	19	29	19	1	YOK	TKSPZT00102004	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D25P	Z	Delme Elemanlari	ARAS25	13	20	85	35	71	22,5	22,5	False	True	True	False	False	False	False	False	False	True	False	False	False	False	False	False	False	False	False	False	False	False	M10	40	45	60	2-M10x60	6	18	29	19	45	19	29	19	1	YOK	TKSPZT00102505	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D32P	Z	Delme Elemanlari	ARAS32	13	28	107	45	104	32,5	32,5	False	True	True	False	False	False	False	False	False	False	True	False	False	False	False	False	False	False	False	False	False	False	M12	48	53	60	2-M12x60	8	24	38	28	60	28	38	28	1	YOK	TKSPZT00103206	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D40P	Z	Delme Elemanlari	ARAS40	13	28	107	45	104	32,5	32,5	False	True	True	False	False	False	False	False	False	False	False	True	False	False	False	False	False	False	False	False	False	False	M12	48	53	60	2-M12x60	8	24	38	28	60	28	38	28	1	YOK	TKSPZT00104007	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D70S	Z	Delme Elemanlari	SHPUG70	92	-52	115	87,5	90	20	50	False	True	False	False	True	False	False	False	False	False	False	False	True	False	False	False	False	False	False	False	False	False	M12	48	53	40	2-M12x40	10	30	35	36	55	36	35	36	1	YOK	TKSPZT00201008	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D90S	Z	Delme Elemanlari	SHPUG90	100	-60	135	97,5	100	20	50	False	True	False	False	True	False	False	False	False	False	False	False	False	True	False	False	False	False	False	False	False	False	M12	48	53	40	2-M12x40	10	30	45	46	65	46	45	46	1	YOK	TKSPZT00201309	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D120S	Z	Delme Elemanlari	SHPUG120	100	-60	165	132,5	115	22,5	70	False	True	False	False	True	False	False	False	False	False	False	False	False	False	True	False	False	False	False	False	False	False	M12	48	53	40	2-M12x40	10	30	60	61	80	61	60	61	1	YOK	TKSPZT00201610	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D10B	Z	Delme Elemanlari	BRAR_B10	20,6	17,7	64	21	82,5	8	14	False	True	False	True	False	False	False	False	False	False	False	False	False	False	False	True	False	False	False	False	False	False	M8	32	37	60	2-M8x60	6	18	33	15	49	15	33	15	1	YOK	TKSPZT00202011	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D13B	Z	Delme Elemanlari	BRAR_B13	20,6	17,7	64	21	89	10	17,5	False	True	False	True	False	False	False	False	False	False	False	False	False	False	False	False	True	False	False	False	False	False	M8	32	37	60	2-M8x60	6	18	33	15	53	15	33	15	1	YOK	TKSPZT00202512	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D16B	Z	Delme Elemanlari	BRAR_B16	20,6	17,7	64	21	90,5	10	17,5	False	True	False	True	False	False	False	False	False	False	False	False	False	False	False	False	False	True	False	False	False	False	M10	40	45	60	2-M10x60	6	18	37	15	53	15	37	15	1	YOK	TKSPZT00203213	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D20B	Z	Delme Elemanlari	BRAR_B20	20,6	14,7	73	26	98	10	17,5	False	True	False	True	False	False	False	False	False	False	False	False	False	False	False	False	False	False	True	False	False	False	M10	40	45	60	2-M10x60	6	18	41	19	57	19	41	19	1	YOK	TKSPZT00204014	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D25B	Z	Delme Elemanlari	BRAR_B25	20,6	12,7	73	26	105,5	10	17,5	False	True	False	True	False	False	False	False	False	False	False	False	False	False	False	False	False	False	False	True	False	False	M10	40	45	60	2-M10x60	6	18	41	19	57	19	41	19	1	YOK	TKSPZT00307015	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D32B	Z	Delme Elemanlari	BRAR_B32	20,6	12,7	95	36	131	12	21	True	False	False	True	False	False	False	False	False	False	False	False	False	False	False	False	False	False	False	False	True	False	M12	48	53	60	4-M12x60	8	24	50	28	72	28	112	28	1	YOK	TKSPZT00309016	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
PnomatikZimbaTutucu		D40B	Z	Delme Elemanlari	BRAR_B40	20,6	12,7	95	36	131	12	21	True	False	False	True	False	False	False	False	False	False	False	False	False	False	False	False	False	False	False	False	False	True	M12	48	53	60	4-M12x60	8	24	50	28	72	28	112	28	1	YOK	TKSPZT00312017	YOK	PnomatikZimbaTutucu	ChangeRetainers	ChangeRetainers	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA092PozitifReturnluVKizak; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA092PozitifReturnluVKizak" ("ParcaAdi", "Merkezleme Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "G(mm)", "Y(mm)", "L1(mm)", "L2(mm)", "L3(mm)", "L4(mm)", "DY(mm)", "AO(mm)", "OY(mm)", "YO(mm)", "EY(mm)", "CIVATA_BAS_DERINLIGI(mm)", "PIM_BAS_DERINLIGI(mm)", "CIVATA_SAP_CAPI(mm)", "PIM_SAP_CAPI(mm)", "CIVATA_CAP(mm)", "PIM_CAP(mm)", "DISI_CIVATA_BAS_DERINLIGI(mm)", "DISI_PIM_BAS_DERINLIGI(mm)", "CIVATADELIK2", "CIVATADELIK3", "CIVATA_DELIK", "DELIK_UZUNLUK(mm)", "H27(mm)", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
PozitifReturnluVKizak		N	Merkezleme Elemanları	65x150	65x150x65	65	65	150	125	45	45	35	5	24	3	44	24	24	13	12	20	16	16	9	True	False	M12	30	16	48	53	40	4-M12x40	3	YOK	TKSPRV06515001	Y3560002198	PozitifReturnluVKizak	VDriver	GuidaAV	Rev03	01/01/2020
PozitifReturnluVKizak		N	Merkezleme Elemanları	65x200	65x200x65	65	65	200	175	95	95	35	5	24	3	44	24	24	13	12	20	16	16	9	True	False	M12	30	16	48	53	40	4-M12x40	3	YOK	TKSPRV06520001	Y3560002199	PozitifReturnluVKizak	VDriver	GuidaAV	Rev03	01/01/2020
PozitifReturnluVKizak		N	Merkezleme Elemanları	65x250	65x250x65	65	65	250	225	145	125	35	5	24	3	44	24	24	13	12	20	16	16	9	False	True	M12	30	16	48	53	40	6-M12x40	3	YOK	TKSPRV06525001	Y3560002200	PozitifReturnluVKizak	VDriver	GuidaAV	Rev03	01/01/2020
PozitifReturnluVKizak		N	Merkezleme Elemanları	65x300	65x300x65	65	65	300	275	195	150	35	5	24	3	44	24	24	13	12	20	16	16	9	False	True	M12	30	16	48	53	40	6-M12x40	3	YOK	TKSPRV06530001	Y3560002201	PozitifReturnluVKizak	VDriver	GuidaAV	Rev03	01/01/2020
PozitifReturnluVKizak		N	Merkezleme Elemanları	125x150	125x150x85	125	85	150	125	45	45	60	25	34	7	52	37	22	17	16	26	18	9	10	True	False	M16	40	9	64	69	40	4-M16x40	3	YOK	TKSPRV12515002	Y3560002202	PozitifReturnluVKizak	VDriver	GuidaAV	Rev03	01/01/2020
PozitifReturnluVKizak		N	Merkezleme Elemanları	125x200	125x200x85	125	85	200	175	95	95	60	25	34	7	52	37	22	17	16	26	18	9	10	True	False	M16	40	9	64	69	40	4-M16x40	3	YOK	TKSPRV12520002	Y3560002203	PozitifReturnluVKizak	VDriver	GuidaAV	Rev03	01/01/2020
PozitifReturnluVKizak		N	Merkezleme Elemanları	125x250	125x250x85	125	85	250	225	145	125	60	25	34	7	52	37	22	17	16	26	18	9	10	False	True	M16	40	9	64	69	40	6-M16x40	3	YOK	TKSPRV12525002	Y3560002204	PozitifReturnluVKizak	VDriver	GuidaAV	Rev03	01/01/2020
PozitifReturnluVKizak		N	Merkezleme Elemanları	125x300	125x300x85	125	85	300	275	195	150	60	25	34	7	52	37	22	17	16	26	18	9	10	False	True	M16	40	9	64	69	40	6-M16x40	3	YOK	TKSPRV12530002	Y3560002205	PozitifReturnluVKizak	VDriver	GuidaAV	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA093KamDuzCelikKizak; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA093KamDuzCelikKizak" ("ParcaAdi", "Kam Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "A(mm)", "B(mm)", "b2(mm)", "H(mm)", "C(mm)", "CD2", "CD3", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
KamDuzCelikKizak		N	Merkezleme Elemanları	59x125	59x125x20	59	125	29	20	100	True	False	M12	48	53	35	2-M12x35	3	YOK	TKSKCK05912501	Y3560002208	KamDuzCelikKizak	CamSlidePlate	PiastraGuidaCamme	Rev03	01/01/2020
KamDuzCelikKizak		N	Merkezleme Elemanları	59x160	59x160x20	59	160	29	20	135	True	False	M12	48	53	35	2-M12x35	3	YOK	TKSKCK05916002	Y3560002209	KamDuzCelikKizak	CamSlidePlate	PiastraGuidaCamme	Rev03	01/01/2020
KamDuzCelikKizak		N	Merkezleme Elemanları	59x200	59x200x20	59	200	29	20	175	False	True	M12	48	53	35	2-M12x35	3	YOK	TKSKCK05920003	Y3560002210	KamDuzCelikKizak	CamSlidePlate	PiastraGuidaCamme	Rev03	01/01/2020
KamDuzCelikKizak		N	Merkezleme Elemanları	59x250	59x250x20	59	250	29	20	225	False	True	M12	48	53	35	2-M12x35	3	YOK	TKSKCK05925004	Y3560002211	KamDuzCelikKizak	CamSlidePlate	PiastraGuidaCamme	Rev03	01/01/2020
KamDuzCelikKizak		N	Merkezleme Elemanları	59x320	59x320x20	59	320	29	20	295	False	True	M12	48	53	35	2-M12x35	3	YOK	TKSKCK05932005	Y3560002212	KamDuzCelikKizak	CamSlidePlate	PiastraGuidaCamme	Rev03	01/01/2020
																										
																										
																										
\.


--
-- Data for Name: ISEDA094PnomatikTutucu; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA094PnomatikTutucu" ("ParcaAdi", "Pnomatik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "F(mm)", "B(mm)", "E(mm)", "R(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
PnomatikTutucu		C	Pnomatik Grubu Elemanları	19x39	55	80	19	39	M12	48	53	35	2-M12x35	2	YOK	TKSPNT019039	Y3560002213	PnomatikTutucu	ForkPawl	ForcellaNottolino	Rev03	01/01/2020
PnomatikTutucu		C	Pnomatik Grubu Elemanları	24x49	55	80	24	49	M12	48	53	35	2-M12x35	2	YOK	TKSPNT024049	Y3560002214	PnomatikTutucu	ForkPawl	ForcellaNottolino	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA095CabukBaglantiSoketi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA095CabukBaglantiSoketi" ("ParcaAdi", "Elektrik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
CabukBaglantiSoketi		E	Elektrik Grubu Elemanları	TekTip	1	YOK	TKSCBS00410A01	YOK	CabukBaglantiSoketi	SensorCouplingAssembly	SensorCouplingAssembly	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA096LotZimbasi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA096LotZimbasi" ("ParcaAdi", "Markalama Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
LotZimbasi		Z	Markalama Elemanları	TekTip	34.1x36x42	M6	24	29	40	2-M6x40	1	YOK	TKSLTZ00403601	YOK	LotZimbasi	TredemarkStamps	TredemarkStamps	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA097AvareMakara; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA097AvareMakara" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
AvareMakara		N	Genel Kalıp Elemanları	Avare_Makara_Celik	34.1x36x42	M8	32	37	65	2-M8x65	3	YOK	TKSAMC04808001	Y3560002217	AvareMakara	RollerStockLifter	RullinoSollevamentoNastro	Rev03	01/01/2020
AvareMakara		N	Genel Kalıp Elemanları	Avare_Makara_Plastik	34.1x36x42	M8	32	37	65	2-M8x65	3	YOK	TKSAMP04808002	Y3560002218	AvareMakara	RollerStockLifter	RullinoSollevamentoNastro	Rev03	01/01/2020
AvareMakara		N	Genel Kalıp Elemanları	Avare_Makara_Vulkolon	34.1x36x42	M8	32	37	65	2-M8x65	3	YOK	TKSAMV04808003	Y3560002219	AvareMakara	RollerStockLifter	RullinoSollevamentoNastro	Rev03	01/01/2020
AvareMakara		N	Genel Kalıp Elemanları	Avare_Makara_Fircali	34.1x36x42	M8	32	37	65	2-M8x65	3	YOK	TKSAMF04808004	Y3560002220	AvareMakara	RollerStockLifter	RullinoSollevamentoNastro	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA098MerkezlemeMakara; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA098MerkezlemeMakara" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
MerkezlemeMakara		N	Genel Kalıp Elemanları	Hareketli_55X150	M12	48	53	65	4-M12x60	3	GUN_M_55150	TKSHMM05515001	Y3560002221	MerkezlemeMakara	CoilGuideRoller	GuidaNastroMobile	Rev03	01/01/2020
MerkezlemeMakara		N	Genel Kalıp Elemanları	Hareketli_73X157	M12	48	53	65	4-M12x60	3	GUN_M_73157	TKSHMM07315702	Y3560002222	MerkezlemeMakara	CoilGuideRoller	GuidaNastroMobile	Rev03	01/01/2020
MerkezlemeMakara		N	Genel Kalıp Elemanları	Sabit_55X141	M12	48	53	40	3-M12x40	3	GUN_F_55141	TKSSMM05514103	Y3560002223	MerkezlemeMakara	CoilGuideRoller	GuidaNastroFisso	Rev03	01/01/2020
MerkezlemeMakara		N	Genel Kalıp Elemanları	Sabit_73X159	M12	48	53	40	3-M12x40	3	GUN_F_73159	TKSSMM07315904	Y3560002224	MerkezlemeMakara	CoilGuideRoller	GuidaNastroFisso	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA099MekanikMikroSwitch; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA099MekanikMikroSwitch" ("ParcaAdi", "Elektrik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
MekanikMikroSwitch		E	Elektrik Grubu Elemanları	KisaKollu	M5	20	25	45	2-M5x45	1	YOK	TKSMMSKK01901	YOK	MekanikMikroSwitch	MicroSwitch	MicroSwitch	Rev03	01/01/2020
MekanikMikroSwitch		E	Elektrik Grubu Elemanları	UzunKollu	M5	20	25	45	2-M5x45	1	YOK	TKSMMSUK01902	YOK	MekanikMikroSwitch	MicroSwitch	MicroSwitch	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA100BasincSensor; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA100BasincSensor" ("ParcaAdi", "Baskı Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
BasincSensor		A	Baskı Elemanları	Tek Tip	2	YOK	TKSABSBSPM1201	YOK	BasincSensor	PressureMonitoring	PressureMonitoring	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA101YaglamaUnitesi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA101YaglamaUnitesi" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
YaglamaUnitesi		N	Genel Kalıp Elemanları	BATARYALI	1	YOK	TKSYAGLC6R1401	YOK	YaglamaUnitesi	LubricationUnit	LubricationUnit	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA102YaglamaUnitesiUzatmasi; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA102YaglamaUnitesiUzatmasi" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "L(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
YaglamaUnitesiUzatmasi		N	Genel Kalıp Elemanları	40	10	2	YOK	TKSYAU040G1401	YOK	YaglamaUnitesiUzatmasi	UnitConnector	UnitConnector	Rev03	01/01/2020
YaglamaUnitesiUzatmasi		N	Genel Kalıp Elemanları	55	25	2	YOK	TKSYAU055G1402	YOK	YaglamaUnitesiUzatmasi	UnitConnector	UnitConnector	Rev03	01/01/2020
YaglamaUnitesiUzatmasi		N	Genel Kalıp Elemanları	85	55	2	YOK	TKSYAU085G1403	YOK	YaglamaUnitesiUzatmasi	UnitConnector	UnitConnector	Rev03	01/01/2020
YaglamaUnitesiUzatmasi		N	Genel Kalıp Elemanları	125	95	2	YOK	TKSYAU125G1404	YOK	YaglamaUnitesiUzatmasi	UnitConnector	UnitConnector	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA103YaglamaBaglantiAparati; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA103YaglamaBaglantiAparati" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
YaglamaBaglantiAparati		N	Genel Kalıp Elemanları	Tip1	M10	40	45	25	2-M10x25	2	YOK	TKSYBA088G1401	YOK	YaglamaBaglantiAparati	UnitConnector2	UnitConnector2	Rev03	01/01/2020
YaglamaBaglantiAparati		N	Genel Kalıp Elemanları	Tip2	M10	40	45	25	2-M10x25	2	YOK	TKSYBA130G1402	YOK	YaglamaBaglantiAparati	UnitConnector2	UnitConnector2	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA104KamKapaklari2; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA104KamKapaklari2" ("ParcaAdi", "Kam Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "W(mm)", "L(mm)", "SP(mm)", "A(mm)", "B(mm)", "C(mm)", "D(mm)", "E(mm)", "F(mm)", "G(mm)", "N(mm)", "3_DELIK", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "3", "2", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
KamKapaklari2		N	Kam Elemanları	170x160	180x170x45	170	160	35	40	45	80	30	80	25	25	65	false	M16	64	69	55	False	True	4-M16x55	2	LA_170160_C	TKSKAK17016001	Y3560002235	KamKapaklari2	UpperCamGibPlate	PiastraGuidaInAcciaio	Rev03	01/01/2020
KamKapaklari2		N	Kam Elemanları	170x200	180x210x45	170	200	35	40	45	80	30	100	25	25	65	false	M16	64	69	55	False	True	4-M16x55	2	LA_170200_C	TKSKAK17020002	Y3560002236	KamKapaklari2	UpperCamGibPlate	PiastraGuidaInAcciaio	Rev03	01/01/2020
KamKapaklari2		N	Kam Elemanları	170x250	180x260x45	170	250	35	40	45	80	30	125	25	25	65	true	M16	64	69	55	True	False	4-M16x55	2	LA_170250_C	TKSKAK17025003	Y3560002237	KamKapaklari2	UpperCamGibPlate	PiastraGuidaInAcciaio	Rev03	01/01/2020
KamKapaklari2		N	Kam Elemanları	170x320	180x330x45	170	320	35	40	45	80	30	160	25	25	65	true	M16	64	69	55	True	False	4-M16x55	2	LA_170320_C	TKSKAK17032004	Y3560002238	KamKapaklari2	UpperCamGibPlate	PiastraGuidaInAcciaio	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA105KamEmniyetUstKizak; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA105KamEmniyetUstKizak" ("ParcaAdi", "Kam Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "W(mm)", "Sp(mm)", "L(mm)", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
KamEmniyetUstKizak		N	Kam Elemanları	180x180	185x185x35	180	30	180	M16	64	69	55	4-M16x55	2	YOK	TKSKEK18018001	YOK	KamEmniyetUstKizak	CamSlideCoverPlate	PiastraPlate	Rev03	01/01/2020
KamEmniyetUstKizak		N	Kam Elemanları	180x200	185x205x35	180	30	200	M16	64	69	55	4-M16x55	2	YOK	TKSKEK18020002	YOK	KamEmniyetUstKizak	CamSlideCoverPlate	PiastraPlate	Rev03	01/01/2020
KamEmniyetUstKizak		N	Kam Elemanları	180x220	185x225x35	180	30	220	M16	64	69	55	4-M16x55	2	YOK	TKSKEK18022003	YOK	KamEmniyetUstKizak	CamSlideCoverPlate	PiastraPlate	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA106TitresimliKonveyor; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA106TitresimliKonveyor" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Not1", "Hurda_Tavasi_Agirlik", "Olcu_Kod\1", "Olcu_Kod\2", "Olcu_Kod\3", "Olcu_Kod\4", "Olcu_Kod\5", "Olcu_Kod\6", "M", "Md(mm)", "Ml(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
TitresimliKonveyor		N	Genel Kalıp Elemanları	01	5Kg	5Kg_Tip01	True	False	False	False	False	False	M16	64	69	55	4-M16x55	1	YOK	TKSTKV00508301	YOK	TitresimliKonveyor	VibrantEjectors	VibrantEjectors	Rev03	01/01/2020
TitresimliKonveyor		N	Genel Kalıp Elemanları	02	10Kg	10Kg_Tip01	False	True	False	False	False	False	M16	64	69	55	4-M16x55	1	YOK	TKSTKV01010502	YOK	TitresimliKonveyor	VibrantEjectors	VibrantEjectors	Rev03	01/01/2020
TitresimliKonveyor		N	Genel Kalıp Elemanları	03	25Kg	25Kg_Tip01	False	False	False	True	False	False	M16	64	69	55	4-M16x55	1	YOK	TKSTKV02512503	YOK	TitresimliKonveyor	VibrantEjectors	VibrantEjectors	Rev03	01/01/2020
TitresimliKonveyor		N	Genel Kalıp Elemanları	04	50Kg	50Kg_Tip01	False	False	False	False	True	False	M16	64	69	55	4-M16x55	1	YOK	TKSTKV05014004	YOK	TitresimliKonveyor	VibrantEjectors	VibrantEjectors	Rev03	01/01/2020
TitresimliKonveyor		N	Genel Kalıp Elemanları	05	10Kg*	10Kg*_Tip02	False	False	True	False	False	False	M16	64	69	55	4-M16x55	1	YOK	TKSTKV01005805	YOK	TitresimliKonveyor	VibrantEjectors	VibrantEjectors	Rev03	01/01/2020
TitresimliKonveyor		N	Genel Kalıp Elemanları	06	50Kg*	50Kg*_Tip02	False	False	False	False	False	True	M16	64	69	55	4-M16x55	1	YOK	TKSTKV05007906	YOK	TitresimliKonveyor	VibrantEjectors	VibrantEjectors	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA107Civata; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA107Civata" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu_", "Lboy", "M", "L(mm)", "d(mm)", "dk(mm)", "k(mm)", "Gmin(mm)", "Malzeme", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M5	10	M5	10	0	8,5	5	12	 / DIN 912-12.9	3	YOK	1-M5x10	Y3170004528	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M5	16	M5	16	0	8,5	5	12	 / DIN 912-12.9	3	YOK	1-M5x16	Y3170004529	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M5	25	M5	25	0	8,5	5	12	 / DIN 912-12.9	3	YOK	1-M5x25	Y3170004530	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M5	50	M5	50	0	8,5	5	12	 / DIN 912-12.9	3	YOK	1-M5x50	Y3170004535	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M5	60	M5	60	0	8,5	5	12	 / DIN 912-12.9	3	YOK	1-M5x60	Y3170004536	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M6	10	M6	10	0	10	6	12	 / DIN 912-12.9	3	YOK	1-M6x10	Y3170004546	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M6	16	M6	16	0	10	6	12	 / DIN 912-12.9	3	YOK	1-M6x16	Y3170004547	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M6	20	M6	20	0	10	6	12	 / DIN 912-12.9	3	YOK	1-M6x20	Y3170004548	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M6	25	M6	25	0	10	6	12	 / DIN 912-12.9	3	YOK	1-M6x25	Y3170004549	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M6	30	M6	30	0	10	6	12	 / DIN 912-12.9	3	YOK	1-M6x30	Y3170004550	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M6	35	M6	35	0	10	6	12	 / DIN 912-12.9	3	YOK	1-M6x35	Y3170004551	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M6	40	M6	40	0	10	6	12	 / DIN 912-12.9	3	YOK	1-M6x40	Y3170004552	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M6	50	M6	50	0	10	6	12	 / DIN 912-12.9	3	YOK	1-M6x50	Y3170004554	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M6	60	M6	60	0	10	6	12	 / DIN 912-12.9	3	YOK	1-M6x60	Y3170004556	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M6	70	M6	70	0	10	6	12	 / DIN 912-12.9	3	YOK	1-M6x70	Y3170004557	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M8	16	M8	16	0	13	8	16	 / DIN 912-12.9	3	YOK	1-M8x16	Y3170004564	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M8	20	M8	20	0	13	8	16	 / DIN 912-12.9	3	YOK	1-M8x20	Y3170004565	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M8	25	M8	25	0	13	8	16	 / DIN 912-12.9	3	YOK	1-M8x25	Y3170004566	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M8	30	M8	30	0	13	8	16	 / DIN 912-12.9	3	YOK	1-M8x30	Y3170004567	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M8	35	M8	35	0	13	8	16	 / DIN 912-12.9	3	YOK	1-M8x35	Y3170004568	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M8	40	M8	40	0	13	8	16	 / DIN 912-12.9	3	YOK	1-M8x40	Y3170004569	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M8	45	M8	45	0	13	8	16	 / DIN 912-12.9	3	YOK	1-M8x45	Y3170004570	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M8	50	M8	50	0	13	8	16	 / DIN 912-12.9	3	YOK	1-M8x50	Y3170004571	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M8	55	M8	55	0	13	8	16	 / DIN 912-12.9	3	YOK	1-M8x55	Y3170004572	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M8	60	M8	60	0	13	8	16	 / DIN 912-12.9	3	YOK	1-M8x60	Y3170004573	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M8	70	M8	70	0	13	8	16	 / DIN 912-12.9	3	YOK	1-M8x70	Y3170004574	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M8	80	M8	80	0	13	8	16	 / DIN 912-12.9	3	YOK	1-M8x80	Y3170004575	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M8	90	M8	90	0	13	8	16	 / DIN 912-12.9	3	YOK	1-M8x90	Y3170004576	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M8	100	M8	100	0	13	8	16	 / DIN 912-12.9	3	YOK	1-M8x100	Y3170004577	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M10	20	M10	20	0	16	10	20	 / DIN 912-12.9	3	YOK	1-M10x20	Y3170004578	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M10	25	M10	25	0	16	10	20	 / DIN 912-12.9	3	YOK	1-M10x25	Y3170004579	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M10	30	M10	30	0	16	10	20	 / DIN 912-12.9	3	YOK	1-M10x30	Y3170004580	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M10	35	M10	35	0	16	10	20	 / DIN 912-12.9	3	YOK	1-M10x35	Y3170004581	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M10	40	M10	40	0	16	10	20	 / DIN 912-12.9	3	YOK	1-M10x40	Y3170004582	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M10	45	M10	45	0	16	10	20	 / DIN 912-12.9	3	YOK	1-M10x45	Y3170004583	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M10	50	M10	50	0	16	10	20	 / DIN 912-12.9	3	YOK	1-M10x50	Y3170004584	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M10	60	M10	60	0	16	10	20	 / DIN 912-12.9	3	YOK	1-M10x60	Y3170004585	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M10	70	M10	70	0	16	10	20	 / DIN 912-12.9	3	YOK	1-M10x70	Y3170004586	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M10	80	M10	80	0	16	10	20	 / DIN 912-12.9	3	YOK	1-M10x80	Y3170004587	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M10	90	M10	90	0	16	10	20	 / DIN 912-12.9	3	YOK	1-M10x90	Y3170004588	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M10	100	M10	100	0	16	10	20	 / DIN 912-12.9	3	YOK	1-M10x100	Y3170004589	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M10	120	M10	120	0	16	10	20	 / DIN 912-12.9	3	YOK	1-M10x120	Y3170004590	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	25	M12	25	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x25	Y3170004592	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	30	M12	30	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x30	Y3170004593	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	35	M12	35	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x35	Y3170004594	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	40	M12	40	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x40	Y3170004595	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	45	M12	45	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x45	Y3170004596	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	50	M12	50	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x50	Y3170004597	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	55	M12	55	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x55	Y3170004598	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	60	M12	60	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x60	Y3170004620	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	70	M12	70	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x70	Y3170004621	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	80	M12	80	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x80	Y3170004622	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	90	M12	90	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x90	Y3170004623	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	100	M12	100	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x100	Y3170004625	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	110	M12	110	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x110	Y3170004602	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	120	M12	120	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x120	Y3170004625	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	130	M12	130	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x130	Y3170004626	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	150	M12	150	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x150	Y3170004627	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M12	160	M12	160	0	18	12	24	 / DIN 912-12.9	3	YOK	1-M12x160	Y3170004628	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	30	M16	30	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x30	Y3170004629	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	35	M16	35	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x35	Y3170004604	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	40	M16	40	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x40	Y3170004630	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	45	M16	45	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x45	Y3170004631	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	50	M16	50	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x50	Y3170004599	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	55	M16	55	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x55	Y3170004632	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	60	M16	60	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x60	Y3170004633	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	65	M16	65	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x65	Y3170004678	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	70	M16	70	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x70	Y3170004634	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	80	M16	80	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x80	Y3170004600	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	90	M16	90	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x90	Y3170004635	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	100	M16	100	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x100	Y3170004636	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	110	M16	110	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x110	Y3170004637	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	120	M16	120	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x120	Y3170004638	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	130	M16	130	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x130	Y3170004668	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	140	M16	140	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x140	Y3170004639	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	150	M16	150	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x150	Y3170004640	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	160	M16	160	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x160	Y3170004641	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	170	M16	170	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x170	Y3170004674	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	180	M16	180	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x180	Y3170004642	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	190	M16	190	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x190	Y3170004643	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	260	M16	260	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x260	Y3170004682	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M16	300	M16	300	0	24	16	32	 / DIN 912-12.9	3	YOK	1-M16x300	Y3170004644	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	50	M20	50	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x50	Y3170004645	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	60	M20	60	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x60	Y3170004646	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	70	M20	70	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x70	Y3170004647	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	80	M20	80	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x80	Y3170004648	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	90	M20	90	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x90	Y3170004649	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	100	M20	100	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x100	Y3170004650	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	120	M20	120	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x120	Y3170004651	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	130	M20	130	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x130	Y3170004652	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	140	M20	140	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x140	Y3170004653	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	150	M20	150	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x150	Y3170004654	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	160	M20	160	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x160	Y3170004655	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	170	M20	170	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x170	Y3170004656	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	180	M20	180	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x180	Y3170004657	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	190	M20	190	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x190	Y3170004658	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	200	M20	200	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x200	Y3170004659	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	220	M20	220	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x220	Y3170004660	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M20	300	M20	300	0	30	20	40	 / DIN 912-12.9	3	YOK	1-M20x300	Y3170004673	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M24	70	M24	70	0	36	24	48	 / DIN 912-12.9	3	YOK	1-M24x70	Y3170004661	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M24	80	M24	80	0	36	24	48	 / DIN 912-12.9	3	YOK	1-M24x80	Y3170004669	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M24	90	M24	90	0	36	24	48	 / DIN 912-12.9	3	YOK	1-M24x90	Y3170004670	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M24	100	M24	100	0	36	24	48	 / DIN 912-12.9	3	YOK	1-M24x100	Y3170004662	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M24	110	M24	110	0	36	24	48	 / DIN 912-12.9	3	YOK	1-M24x110	Y3170004663	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M24	120	M24	120	0	36	24	48	 / DIN 912-12.9	3	YOK	1-M24x120	Y3170004664	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M24	150	M24	150	0	36	24	48	 / DIN 912-12.9	3	YOK	1-M24x150	Y3170004667	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M24	180	M24	180	0	36	24	48	 / DIN 912-12.9	3	YOK	1-M24x180	Y3170004676	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M24	200	M24	200	0	36	24	48	 / DIN 912-12.9	3	YOK	1-M24x200	Y3170004665	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M24	260	M24	260	0	36	24	48	 / DIN 912-12.9	3	YOK	1-M24x260	Y3170004666	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M30	120	M30	120	0	45	30	60	 / DIN 912-12.9	3	YOK	1-M30x120	Y3170000778	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M30	130	M30	130	0	45	30	60	 / DIN 912-12.9	3	YOK	1-M30x130	Y3170000780	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M30	150	M30	150	0	45	30	60	 / DIN 912-12.9	3	YOK	1-M30x150	Y3170000781	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M30	180	M30	180	0	45	30	60	 / DIN 912-12.9	3	YOK	1-M30x180	Y3170000779	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M30	220	M30	220	0	45	30	60	 / DIN 912-12.9	3	YOK	1-M30x220	Y3170004675	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	01_Imbus_Civata	M30	260	M30	260	0	45	30	60	 / DIN 912-12.9	3	YOK	1-M30x260	Y3170004672	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	02_HavsaBasli_Civata	M4	16	M4	16	4	8	2,3	60	 / DIN 7991-12.9	3	YOK	1-M4x16	Y3170008352	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	02_HavsaBasli_Civata	M4	20	M4	20	4	8		60	 / DIN 7991-12.9	3	YOK	1-M4x20	Y3170008350	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	02_HavsaBasli_Civata	M5	16	M5	16	5	10		60	 / DIN 7991-12.9	3	YOK	1-M5x16	Y3170008353	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	02_HavsaBasli_Civata	M6	10	M6	10	6	12		60	 / DIN 7991-12.9	3	YOK	1-M6x10	Y3170008355	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	02_HavsaBasli_Civata	M6	16	M6	16	6	12		60	 / DIN 7991-12.9	3	YOK	1-M6x16	Y3170008354	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	02_HavsaBasli_Civata	M8	20	M8	20	8	16		60	 / DIN 7991-12.9	3	YOK	1-M8x20	Y3170008357	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	02_HavsaBasli_Civata	M8	25	M8	25	8	16		60	 / DIN 7991-12.9	3	YOK	1-M8x25	Y3170008358	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	02_HavsaBasli_Civata	M8	30	M8	30	8	16		60	 / DIN 7991-12.9	3	YOK	1-M8x30	Y3170008359	Civata	Screw	Screw	Rev03	01/01/2020
Civata		N	Genel Kalıp Elemanları	02_HavsaBasli_Civata	M10	40	M10	40	10	20		60	 / DIN 7991-12.9	3	YOK	1-M10x40	Y3170008157	Civata	Screw	Screw	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA108LiftingPinFIAT; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA108LiftingPinFIAT" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "A(mm)", "B(mm)", "C(mm)", "D(mm)", "E(mm)", "F(mm)", "G(mm)", "H(mm)", "K(mm)", "L(mm)", "M(mm)", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
\.


--
-- Data for Name: ISEDA109Guidepinpad; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA109Guidepinpad" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "KURS(mm)", "A(mm)", "B(mm)", "C(mm)", "D(mm)", "E(mm)", "F(mm)", "G(mm)", "H(mm)", "K(mm)", "L(mm)", "M(mm)", "N(mm)", "P(mm)", "R(mm)", "S(mm)", "T(mm)", "X(mm)", "V(mm)", "Y(mm)", "Z(mm)", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
\.


--
-- Data for Name: ISEDA110BotMarkerFIAT; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA110BotMarkerFIAT" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "A(mm)", "B(mm)", "C(mm)", "D(mm)", "E(mm)", "F(mm)", "G(mm)", "H(mm)", "J(mm)", "K(mm)", "L(mm)", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
\.


--
-- Data for Name: ISEDA111LotPunchRetainerFIAT; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA111LotPunchRetainerFIAT" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "A(mm)", "B(mm)", "C", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
\.


--
-- Data for Name: ISEDA118SprialHortum2; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA118SprialHortum2" ("ParcaAdi", "Pnomatik Grubu Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "M", "Md(mm)", "MI(mm)", "Cb(mm)", "Baglanti", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT") FROM stdin;
SpiralHortum2		H	Pnomatik Grubu Elemanları	TekTip	Ø52	M5	20	25	25	-	3	YOK	TKSTCU121X601	YOK	SpiralHortum2	SprialCable2	SprialCable2
\.


--
-- Data for Name: ISEDA119SafetyPlateFIAT; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA119SafetyPlateFIAT" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
 SafetyPlateFIAT		N	Genel Kalıp Elemanları	60x250	250x90x60	2	YOK	TKSSFP06025002	YOK	 SafetyPlate	 SafetyPlate	PiastraDiSicurezza	Rev03	01/01/2020
\.


--
-- Data for Name: ISEDA120LProfil; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."ISEDA120LProfil" ("ParcaAdi", "Genel Kalıp Elemanları", "Malzeme_Sinifi", "Grup", "Tip", "Olcu", "Kritiklik_No", "STQ_NORMU", "TOFAS", "Depo_Kodu", "TR", "ENG", "IT", "Revizyon_Numarasi", "Revizyon_Tarihi") FROM stdin;
Lprofil		P	Genel Kalıp Elemanları	TekTip	50x5x225	2	YOK	TKSLPH00522501	YOK	LProfil	LProfil	LProfil	Rev03	01/01/2020
\.


--
-- Data for Name: KAM; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."KAM" ("FIRMA", "Sipariş Kodu", "Alın Eni W", "Açı θ", "Kurs S", "Alın Boyu H", "Çalışma kuvveti / 1 mil Vuruş kN", "Çalışma kuvveti / 0,3 mil Vuruş kN", "Max En W1", "Kapalı Yüksekli H1", "Max uzunluk L", "Tel yay geri dönüş kuvveti N", "Gazlı yay geri dönüş kuvveti N", "Gazlı yay geri dönüş kuvveti (Power type -V) N", "Kam slider geri dönüş kuvveti kN", "Kam slider geri dönüş kuvveti (Power type -V) kN", "Opsiyon", "Maliyet", "Foto", "F20", "F21") FROM stdin;
SANKYO	SUCD52-00	52.0	0.0	19.3	60.0	14,7	29,4	52	125	175	980			1,5	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-05	52.0	5.0	21.3	60.0	14,7	29,4	52	125	175	980			1,5	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-10	52.0	10.0	23.3	60.0	14,7	29,4	52	125	175	980			1,5	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-15	52.0	15.0	25.4	60.0	14,7	29,4	52	125	175	980			1,5	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-20	52.0	20.0	27.6	60.0	14,7	29,4	52	125	175	980			1,5	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-25	52.0	25.0	30.0	60.0	14,7	29,4	52	125	175	980			1,5	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-30	52.0	30.0	32.6	60.0	14,7	29,4	52	125	175	980			1,5	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-35	52.0	35.0	35.4	60.0	14,7	29,4	52	125	175	980			1,5	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-40	52.0	40.0	38.6	60.0	14,7	29,4	52	125	175	980			1,5	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-45	52.0	45.0	42.3	60.0	14,7	29,4	52	125	179	980			1,5	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-50	52.0	50.0	46.7	60.0	14,7	29,4	52	125	184	980			1,5	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-55	52.0	55.0	52.3	60.0	14,7	29,4	52	125	185	980			1,7	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-60	52.0	60.0	60.0	60.0	14,7	29,4	52	125	184	980			2	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-65	52.0	65.0	47.3	60.0	14,7	29,4	52	125	220	981			2,3	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-70	52.0	70.0	58.5	60.0	14,7	29,4	52	125	215	981			2,8	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-75	52.0	75.0	46.3	60.0	14,7	29,4	52	150	205	981,2			3,8	0	SC	004	SUCD.jpg	0	0
SANKYO	SUCD52-80	52.0	80.0	57.5	60.0	14,7	29,4	52	150	205	981,2			5,6	0	SC	004	SUCD.jpg	0	0
SANKYO	SLSD52-00	52.0	0.0	30.2	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-05	52.0	5.0	31.9	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-10	52.0	10.0	35.0	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-15	52.0	15.0	38.2	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-20	52.0	20.0	41.5	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-25	52.0	25.0	45.0	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-30	52.0	30.0	48.8	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-35	52.0	35.0	53.1	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-40	52.0	40.0	57.9	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-45	52.0	45.0	54.9	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-50	52.0	50.0	60.7	60.0	14,7	29,4	52	135	192	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-00-WC	65.0	0.0	30.2	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-05-WC	65.0	5.0	31.9	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-10-WC	65.0	10.0	35.0	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-15-WC	65.0	15.0	38.2	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-20-WC	65.0	20.0	41.5	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-25-WC	65.0	25.0	45.0	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-30-WC	65.0	30.0	48.8	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-35-WC	65.0	35.0	53.1	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-40-WC	65.0	40.0	57.9	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-45-WC	65.0	45.0	54.9	60.0	14,7	29,4	52	135	185	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SLSD52-50-WC	65.0	50.0	60.7	60.0	14,7	29,4	52	135	192	901,6			1,4	0	SC / WC	004	SLSD.jpg	0	0
SANKYO	SACD52-00	52.0	0.0	30.2	75.0	29,4	58,8	52	160	196,9	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-05	52.0	5.0	33.4	75.0	29,4	58,8	52	160	200,8	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-10	52.0	10.0	36.6	75.0	29,4	58,8	52	160	207,7	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-15	52.0	15.0	39.9	75.0	29,4	58,8	52	160	211,6	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-20	52.0	20.0	43.3	75.0	29,4	58,8	52	160	213,1	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-25	52.0	25.0	47.0	75.0	29,4	58,8	52	160	214,5	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-30	52.0	30.0	51.0	75.0	29,4	58,8	52	160	216	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-35	52.0	35.0	55.4	75.0	29,4	58,8	52	160	216,5	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-40	52.0	40.0	60.4	75.0	29,4	58,8	52	160	212,6	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-45	52.0	45.0	66.2	75.0	29,4	58,8	52	160	213,7	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-50	52.0	50.0	73.1	75.0	29,4	58,8	52	160	205	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-55	52.0	55.0	64.5	75.0	29,4	58,8	52	160	215	3110,8			5,4	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-60	52.0	60.0	54.0	75.0	29,4	58,8	52	160	200	3110,8			6,2	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-00-WC80	80.0	0.0	30.2	75.0	29,4	58,8	52	160	196,9	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-05-WC80	80.0	5.0	33.4	75.0	29,4	58,8	52	160	200,8	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-10-WC80	80.0	10.0	36.6	75.0	29,4	58,8	52	160	207,7	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-15-WC80	80.0	15.0	39.9	75.0	29,4	58,8	52	160	211,6	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-20-WC80	80.0	20.0	43.3	75.0	29,4	58,8	52	160	213,1	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-25-WC80	80.0	25.0	47.0	75.0	29,4	58,8	52	160	214,5	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-30-WC80	80.0	30.0	51.0	75.0	29,4	58,8	52	160	216	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-35-WC80	80.0	35.0	55.4	75.0	29,4	58,8	52	160	216,5	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-40-WC80	80.0	40.0	60.4	75.0	29,4	58,8	52	160	212,6	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-45-WC80	80.0	45.0	66.2	75.0	29,4	58,8	52	160	213,7	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-50-WC80	80.0	50.0	73.1	75.0	29,4	58,8	52	160	205	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-55-WC80	80.0	55.0	64.5	75.0	29,4	58,8	52	160	215	3110,8			5,4	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-60-WC80	80.0	60.0	54.0	75.0	29,4	58,8	52	160	200	3110,8			6,2	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-00-WC120	120.0	0.0	30.2	75.0	29,4	58,8	52	160	196,9	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-05-WC120	120.0	5.0	33.4	75.0	29,4	58,8	52	160	200,8	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-10-WC120	120.0	10.0	36.6	75.0	29,4	58,8	52	160	207,7	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-15-WC120	120.0	15.0	39.9	75.0	29,4	58,8	52	160	211,6	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-20-WC120	120.0	20.0	43.3	75.0	29,4	58,8	52	160	213,1	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-25-WC120	120.0	25.0	47.0	75.0	29,4	58,8	52	160	214,5	3110,8			4,9	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-30-WC120	120.0	30.0	51.0	75.0	29,4	58,8	52	160	216	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-35-WC120	120.0	35.0	55.4	75.0	29,4	58,8	52	160	216,5	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-40-WC120	120.0	40.0	60.4	75.0	29,4	58,8	52	160	212,6	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-45-WC120	120.0	45.0	66.2	75.0	29,4	58,8	52	160	213,7	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-50-WC120	120.0	50.0	73.1	75.0	29,4	58,8	52	160	205	3110,8			4,8	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-55-WC120	120.0	55.0	64.5	75.0	29,4	58,8	52	160	215	3110,8			5,4	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SACD52-60-WC120	120.0	60.0	54.0	75.0	29,4	58,8	52	160	200	3110,8			6,2	0	SC / WC80 / WC120 / N12	006	SACD.jpg	0	0
SANKYO	SULNC65-00	65.0	0.0	30.2	80.0	14,7	29,4	65	240	335	2115			3,4	0	SC / N12	014	SULNC.jpg	0	0
SANKYO	SULNC65-05	65.0	5.0	31.9	80.0	14,7	29,4	65	240	338,62	2115			3,4	0	SC / N12	014	SULNC.jpg	0	0
SANKYO	SULNC65-10	65.0	10.0	35.0	80.0	14,7	29,4	65	240	341,65	2115			3,4	0	SC / N12	014	SULNC.jpg	0	0
SANKYO	SULNC65-15	65.0	15.0	31.4	80.0	14,7	29,4	65	240	339,01	2115			3,4	0	SC / N12	014	SULNC.jpg	0	0
SANKYO	SULNC65-20	65.0	20.0	32.3	80.0	14,7	29,4	65	240	335,66	2115			3,3	0	SC / N12	014	SULNC.jpg	0	0
SANKYO	SULNC65-25	65.0	25.0	35.0	80.0	14,7	29,4	65	240	331,55	2115			3,3	0	SC / N12	014	SULNC.jpg	0	0
SANKYO	HUCTF65-00	65.0	0.0	22.5	90.0	68,7	137,3	65	230	275	5588,5			9,4	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-05	65.0	5.0	22.6	90.0	68,7	137,3	65	230	275	5588,5			9,4	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-10	65.0	10.0	27.2	90.0	68,7	137,3	65	230	275	5588,5			9,4	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-15	65.0	15.0	27.8	90.0	68,7	137,3	65	230	275	5588,5			9,4	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-20	65.0	20.0	32.3	90.0	68,7	137,3	65	230	275	5588,5			9,4	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-25	65.0	25.0	33.4	90.0	68,7	137,3	65	230	275	5588,5			9,3	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-30	65.0	30.0	38.0	90.0	68,7	137,3	65	230	290	5588,5			9,3	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-35	65.0	35.0	40.2	90.0	68,7	137,3	65	230	290	5588,5			9,3	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-40	65.0	40.0	45.0	90.0	68,7	137,3	65	230	290	5588,5			9,3	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-45	65.0	45.0	48.7	90.0	68,7	137,3	65	230	290	5588,5			9,3	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-50	65.0	50.0	54.5	90.0	68,7	137,3	65	230	290	5588,5			9,3	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-55	65.0	55.0	61.0	90.0	68,7	137,3	65	230	290	5588,5			10,4	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-60	65.0	60.0	70.0	90.0	68,7	137,3	65	230	300	5588,5			12	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-65	65.0	65.0	68.5	90.0	68,7	137,3	65	230	335	5936,3			14	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-70	65.0	70.0	67.2	90.0	68,7	137,3	65	230	335	5862,7			17,1	0		012	HUCTF.jpg	0	0
SANKYO	HUCTF65-75	65.0	75.0	69.5	90.0	68,7	137,3	65	230		5257,8			20,2	0		012	HUCTF.jpg	0	0
SANKYO	UCMSC50-00	50.0	0.0	30.2	75.0	19,6	39,2	50	200	257	980			1,6	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-05	50.0	5.0	30.5	75.0	19,6	39,2	50	200	250	980			1,6	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-10	50.0	10.0	30.3	75.0	19,6	39,2	50	200	240	980			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-15	50.0	15.0	30.5	75.0	19,6	39,2	50	200	240	980			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-20	50.0	20.0	30.4	75.0	19,6	39,2	50	200	240	980			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-25	50.0	25.0	30.0	75.0	19,6	39,2	50	200	240	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-30	50.0	30.0	32.6	75.0	19,6	39,2	50	200	240	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-35	50.0	35.0	35.4	75.0	19,6	39,2	50	200	240	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-40	50.0	40.0	38.6	75.0	19,6	39,2	50	200	240	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-45	50.0	45.0	42.3	75.0	19,6	39,2	50	200	240	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-50	50.0	50.0	46.7	75.0	19,6	39,2	50	200	240	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-55	50.0	55.0	52.1	65.0	19,6	39,2	50	200	240	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-60	50.0	60.0	59.1	65.0	19,6	39,2	50	200	255	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-65	50.0	65.0	58.3	75.0	19,6	39,2	50	200	272	982,8			1,7	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-70	50.0	70.0	57.6	75.0	19,6	39,2	50	200	278	982,8			1,9	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-00-WC	65.0	0.0	30.2	75.0	19,6	39,2	50	200	257	980			1,6	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-05-WC	65.0	5.0	30.5	75.0	19,6	39,2	50	200	250	980			1,6	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-10-WC	65.0	10.0	30.3	75.0	19,6	39,2	50	200	240	980			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-15-WC	65.0	15.0	30.5	75.0	19,6	39,2	50	200	240	980			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-20-WC	65.0	20.0	30.4	75.0	19,6	39,2	50	200	240	980			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-25-WC	65.0	25.0	30.0	75.0	19,6	39,2	50	200	240	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-30-WC	65.0	30.0	32.6	75.0	19,6	39,2	50	200	240	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-35-WC	65.0	35.0	35.4	75.0	19,6	39,2	50	200	240	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-40-WC	65.0	40.0	38.6	75.0	19,6	39,2	50	200	240	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-45-WC	65.0	45.0	42.3	75.0	19,6	39,2	50	200	240	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-50-WC	65.0	50.0	46.7	75.0	19,6	39,2	50	200	240	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-55-WC	65.0	55.0	52.1	65.0	19,6	39,2	50	200	240	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-60-WC	65.0	60.0	59.1	65.0	19,6	39,2	50	200	255	982,8			1,5	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-65-WC	65.0	65.0	58.3	75.0	19,6	39,2	50	200	272	982,8			1,7	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC50-70-WC	65.0	70.0	57.6	75.0	19,6	39,2	50	200	278	982,8			1,9	0	SC / WC / K / N12	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-00	65.0	0.0	15.0	65.0	19,6	39,2	65	180	190	1187,2			1,7	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-05	65.0	5.0	15.1	65.0	19,6	39,2	65	180	185	1187,2			1,7	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-10	65.0	10.0	15.2	65.0	19,6	39,2	65	180	185	1221,1			1,7	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-15	65.0	15.0	15.5	65.0	19,6	39,2	65	180	180	1221,1			1,7	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-20	65.0	20.0	16.5	65.0	19,6	39,2	65	180	176,5	1221,1			1,7	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-25	65.0	25.0	17.1	65.0	19,6	39,2	65	180	172,9	1221,1			1,9	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-30	65.0	30.0	18.5	65.0	19,6	39,2	65	180	177,8	1221,1			1,7	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-35	65.0	35.0	19.6	65.0	19,6	39,2	65	180	173,3	1221,1			1,9	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-40	65.0	40.0	21.5	65.0	19,6	39,2	65	180	170,8	1221,1			1,7	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-45	65.0	45.0	23.3	65.0	19,6	39,2	65	180	170	1221,1			1,9	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-50	65.0	50.0	26.5	65.0	19,6	39,2	65	190	175	1221,1			1,7	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-55	65.0	55.0	29.7	65.0	19,6	39,2	65	190	180	1221,1			1,9	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-60	65.0	60.0	35.0	65.0	19,6	39,2	65	210	190	1221,1			1,7	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-65	65.0	65.0	41.4	65.0	19,6	39,2	65	210	195	1221,1			1,9	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC65-70	65.0	70.0	51.1	65.0	19,6	39,2	65	210	202	1221,1			2,1	0	SC / K	005	UCMSC.jpg	0	0
SANKYO	UCMSC80-00	80.0	0.0	32.1	86.0	39,2	78,4	80	270	270	1626			2,6	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-05	80.0	5.0	38.4	86.0	39,2	78,4	80	270	272,9	1626			2,3	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-10	80.0	10.0	38.9	86.0	39,2	78,4	80	270	279,9	1626			2,6	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-15	80.0	15.0	39.7	86.0	39,2	78,4	80	270	285,9	1626			2,9	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-20	80.0	20.0	46.1	86.0	39,2	78,4	80	270	285,9	1626			2,6	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-25	80.0	25.0	47.8	86.0	39,2	78,4	80	270	289,8	1626			2,9	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-30	80.0	30.0	54.3	86.0	39,2	78,4	80	270	282,6	1626			2,5	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-35	80.0	35.0	57.4	86.0	39,2	78,4	80	270	284,3	1626			2,9	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-40	80.0	40.0	64.3	86.0	39,2	78,4	80	270	274,8	1626			2,5	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-45	80.0	45.0	69.6	86.0	39,2	78,4	80	270	274,2	1626			2,8	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-50	80.0	50.0	77.8	86.0	39,2	78,4	80	270	270	1626			2,5	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-55	80.0	55.0	87.2	86.0	39,2	78,4	80	270	270	1626			2,8	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-60	80.0	60.0	98.5	86.0	39,2	78,4	80	270	270	1626			2,5	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-65	80.0	65.0	81.6	86.0	39,2	78,4	80	270	275	1462,5			2,5	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-70	80.0	70.0	86.4	86.0	39,2	78,4	80	270	280	1624			3,2	0	SC / WC100 / WC120 / K / N16	008	UCMSC.jpg	0	0
SANKYO	UCMSC80-00-WC100	100.0	0.0	32.1	105.0	39,2	78,4	80	270	270	1626			2,6	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-05-WC100	100.0	5.0	38.4	105.0	39,2	78,4	80	270	272,9	1626			2,3	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-10-WC100	100.0	10.0	38.9	105.0	39,2	78,4	80	270	279,9	1626			2,6	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-15-WC100	100.0	15.0	39.7	105.0	39,2	78,4	80	270	285,9	1626			2,9	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-20-WC100	100.0	20.0	46.1	105.0	39,2	78,4	80	270	285,9	1626			2,6	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-25-WC100	100.0	25.0	47.8	105.0	39,2	78,4	80	270	289,8	1626			2,9	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-30-WC100	100.0	30.0	54.3	105.0	39,2	78,4	80	270	282,6	1626			2,5	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-35-WC100	100.0	35.0	57.4	105.0	39,2	78,4	80	270	284,3	1626			2,9	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-40-WC100	100.0	40.0	64.3	105.0	39,2	78,4	80	270	274,8	1626			2,5	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-45-WC100	100.0	45.0	69.6	105.0	39,2	78,4	80	270	274,2	1626			2,8	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-50-WC100	100.0	50.0	77.8	105.0	39,2	78,4	80	270	270	1626			2,5	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-55-WC100	100.0	55.0	87.2	105.0	39,2	78,4	80	270	270	1626			2,8	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-60-WC100	100.0	60.0	98.5	105.0	39,2	78,4	80	270	270	1626			2,5	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-65-WC100	100.0	65.0	81.6	105.0	39,2	78,4	80	270	275	1462,5			2,5	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-70-WC100	100.0	70.0	86.4	105.0	39,2	78,4	80	270	280	1624			3,2	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-00-WC120	120.0	0.0	32.1	105.0	39,2	78,4	80	270	270	1626			2,6	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-05-WC120	120.0	5.0	38.4	105.0	39,2	78,4	80	270	272,9	1626			2,3	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-10-WC120	120.0	10.0	38.9	105.0	39,2	78,4	80	270	279,9	1626			2,6	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-15-WC120	120.0	15.0	39.7	105.0	39,2	78,4	80	270	285,9	1626			2,9	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-20-WC120	120.0	20.0	46.1	105.0	39,2	78,4	80	270	285,9	1626			2,6	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-25-WC120	120.0	25.0	47.8	105.0	39,2	78,4	80	270	289,8	1626			2,9	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-30-WC120	120.0	30.0	54.3	105.0	39,2	78,4	80	270	282,6	1626			2,5	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-35-WC120	120.0	35.0	57.4	105.0	39,2	78,4	80	270	284,3	1626			2,9	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-40-WC120	120.0	40.0	64.3	105.0	39,2	78,4	80	270	274,8	1626			2,5	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-45-WC120	120.0	45.0	69.6	105.0	39,2	78,4	80	270	274,2	1626			2,8	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-50-WC120	120.0	50.0	77.8	105.0	39,2	78,4	80	270	270	1626			2,5	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-55-WC120	120.0	55.0	87.2	105.0	39,2	78,4	80	270	270	1626			2,8	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-60-WC120	120.0	60.0	98.5	105.0	39,2	78,4	80	270	270	1626			2,5	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-65-WC120	120.0	65.0	81.6	105.0	39,2	78,4	80	270	275	1462,5			2,5	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC80-70-WC120	120.0	70.0	86.4	105.0	39,2	78,4	80	270	280	1624			3,2	0	SC / WC100 / WC120 / K / N16	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-00	150.0	0.0	32.1	85.0	88,2	132,3	150	270	280	4605,2			7,3	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-05	150.0	5.0	32.3	85.0	88,2	132,3	150	270	288,3	4605,2			8,2	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-10	150.0	10.0	38.9	85.0	88,2	132,3	150	270	285,5	4605,2			7,3	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-15	150.0	15.0	39.7	85.0	88,2	132,3	150	270	291,8	4605,2			8,1	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-20	150.0	20.0	46.1	85.0	88,2	132,3	150	270	287	4605,2			7,2	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-25	150.0	25.0	47.8	85.0	88,2	132,3	150	270	291	4605,2			8,1	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-30	150.0	30.0	54.3	85.0	88,2	132,3	150	270	283,9	4605,2			7,2	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-35	150.0	35.0	57.4	85.0	88,2	132,3	150	270	285,7	4605,2			8,1	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-40	150.0	40.0	64.3	85.0	88,2	132,3	150	270	280	4605,2			7,2	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-45	150.0	45.0	69.6	85.0	88,2	132,3	150	270	280	4605,2			8	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-50	150.0	50.0	77.8	85.0	88,2	132,3	150	270	280	4605,2			7,1	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-55	150.0	55.0	87.2	85.0	88,2	132,3	150	270	280	4605,2			8	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-60	150.0	60.0	98.5	85.0	88,2	132,3	150	270	280	4605,2			7,1	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-65	150.0	65.0	93.2	85.0	88,2	132,3	150	270	280	4605,2			8	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSC150-70	150.0	70.0	86.4	85.0	88,2	132,3	150	270	285	4605,2			9,1	0	K / TK / N16 / S	014	UCMSC.jpg	0	0
SANKYO	UCMSF80-00	80.0	0.0	32.1	86.0	59,4	109,8	80	270	270	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-05	80.0	5.0	38.4	86.0	59,4	109,8	80	270	272,9	3250			4,6	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-10	80.0	10.0	38.9	86.0	59,4	109,8	80	270	279,9	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-15	80.0	15.0	39.7	86.0	59,4	109,8	80	270	285,9	3250			5,7	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-20	80.0	20.0	46.1	86.0	59,4	109,8	80	270	285,9	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-25	80.0	25.0	47.8	86.0	59,4	109,8	80	270	289,8	3250			5,7	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-30	80.0	30.0	54.3	86.0	59,4	109,8	80	270	282,6	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-35	80.0	35.0	57.4	86.0	59,4	109,8	80	270	284,3	3250			5,7	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-40	80.0	40.0	64.3	86.0	59,4	109,8	80	270	274,8	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-45	80.0	45.0	69.6	86.0	59,4	109,8	80	270	274,2	3250			5,7	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-50	80.0	50.0	77.8	86.0	59,4	109,8	80	270	270	3250			5	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-55	80.0	55.0	87.2	86.0	59,4	109,8	80	270	270	3250			5,6	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-60	80.0	60.0	98.5	86.0	59,4	109,8	80	270	270	3250			5	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-65	80.0	65.0	81.6	86.0	59,4	109,8	80	270	275	3250			5,6	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-70	80.0	70.0	86.4	86.0	59,4	109,8	80	270	280	3250			6,5	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-00-WC100	100.0	0.0	32.1	86.0	59,4	109,8	80	270	270	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-05-WC100	100.0	5.0	38.4	86.0	59,4	109,8	80	270	272,9	3250			4,6	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-10-WC100	100.0	10.0	38.9	86.0	59,4	109,8	80	270	279,9	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-15-WC100	100.0	15.0	39.7	86.0	59,4	109,8	80	270	285,9	3250			5,7	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-20-WC100	100.0	20.0	46.1	86.0	59,4	109,8	80	270	285,9	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCNBK100-50	100.0	50.0	46.7	140.0	44,1	88,2	160	280	272	2809,6			2,8	0	K / KA	011	UCNBK.jpg	0	0
SANKYO	UCMSF80-25-WC100	100.0	25.0	47.8	86.0	59,4	109,8	80	270	289,8	3250			5,7	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-30-WC100	100.0	30.0	54.3	86.0	59,4	109,8	80	270	282,6	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-35-WC100	100.0	35.0	57.4	86.0	59,4	109,8	80	270	284,3	3250			5,7	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-40-WC100	100.0	40.0	64.3	86.0	59,4	109,8	80	270	274,8	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-45-WC100	100.0	45.0	69.6	86.0	59,4	109,8	80	270	274,2	3250			5,7	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-50-WC100	100.0	50.0	77.8	86.0	59,4	109,8	80	270	270	3250			5	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-55-WC100	100.0	55.0	87.2	86.0	59,4	109,8	80	270	270	3250			5,6	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-60-WC100	100.0	60.0	98.5	86.0	59,4	109,8	80	270	270	3250			5	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-65-WC100	100.0	65.0	81.6	86.0	59,4	109,8	80	270	275	3250			5,6	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-70-WC100	100.0	70.0	86.4	86.0	59,4	109,8	80	270	280	3250			6,5	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-00-WC120	120.0	0.0	32.1	86.0	59,4	109,8	80	270	270	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-05-WC120	120.0	5.0	38.4	86.0	59,4	109,8	80	270	272,9	3250			4,6	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-10-WC120	120.0	10.0	38.9	86.0	59,4	109,8	80	270	279,9	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-15-WC120	120.0	15.0	39.7	86.0	59,4	109,8	80	270	285,9	3250			5,7	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-20-WC120	120.0	20.0	46.1	86.0	59,4	109,8	80	270	285,9	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-25-WC120	120.0	25.0	47.8	86.0	59,4	109,8	80	270	289,8	3250			5,7	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-30-WC120	120.0	30.0	54.3	86.0	59,4	109,8	80	270	282,6	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-35-WC120	120.0	35.0	57.4	86.0	59,4	109,8	80	270	284,3	3250			5,7	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-40-WC120	120.0	40.0	64.3	86.0	59,4	109,8	80	270	274,8	3250			5,1	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-45-WC120	120.0	45.0	69.6	86.0	59,4	109,8	80	270	274,2	3250			5,7	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-50-WC120	120.0	50.0	77.8	86.0	59,4	109,8	80	270	270	3250			5	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-55-WC120	120.0	55.0	87.2	86.0	59,4	109,8	80	270	270	3250			5,6	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-60-WC120	120.0	60.0	98.5	86.0	59,4	109,8	80	270	270	3250			5	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-65-WC120	120.0	65.0	81.6	86.0	59,4	109,8	80	270	275	3250			5,6	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF80-70-WC120	120.0	70.0	86.4	86.0	59,4	109,8	80	270	280	3250			6,5	0	SC / WC100 / WC120 / K / N16	010	UCMSF.jpg	0	0
SANKYO	UCMSF150-00	150.0	0.0	32.1	85.0	123,5	185,2	150	270	280	9569,4			15	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	UCMSF150-05	150.0	5.0	32.3	85.0	123,5	185,2	150	270	288,3	9569,4			16,8	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	UCMSF150-10	150.0	10.0	38.9	85.0	123,5	185,2	150	270	285,5	9569,4			14,9	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	UCMSF150-15	150.0	15.0	39.7	85.0	123,5	185,2	150	270	291,8	9569,4			16,7	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	UCMSF150-20	150.0	20.0	46.1	85.0	123,5	185,2	150	270	287	9569,4			14,9	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	UCMSF150-25	150.0	25.0	47.8	85.0	123,5	185,2	150	270	291	9569,4			16,7	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	UCMSF150-30	150.0	30.0	54.3	85.0	123,5	185,2	150	270	283,9	9569,4			14,9	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	UCMSF150-35	150.0	35.0	57.4	85.0	123,5	185,2	150	270	285,7	9569,4			16,7	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	UCMSF150-40	150.0	40.0	64.3	85.0	123,5	185,2	150	270	280	9569,4			14,8	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	UCMSF150-45	150.0	45.0	69.6	85.0	123,5	185,2	150	270	280	9569,4			16,6	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	UCMSF150-50	150.0	50.0	77.8	85.0	123,5	185,2	150	270	280	9569,4			14,8	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	UCMSF150-55	150.0	55.0	87.2	85.0	123,5	185,2	150	270	280	9569,4			16,6	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	UCMSF150-60	150.0	60.0	98.5	85.0	123,5	185,2	150	270	280	9569,4			14,8	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	UCMSF150-65	150.0	65.0	93.2	85.0	123,5	185,2	150	270	280	9569,4			16,6	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	UCMSF150-70	150.0	70.0	86.4	85.0	123,5	185,2	150	270	285	9569,4			19	0	K / TK / N16 / S	017	UCMSF.jpg	0	0
SANKYO	SOUK65-00	65.0	0.0	26.9	80.0	19,6	39,2	115	210	209,9	1066,5			1,6	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	SOUK65-05	65.0	5.0	27.0	90.0	19,6	39,2	115	210	217	1137,6			1,8	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	SOUK65-10	65.0	10.0	31.6	80.0	19,6	39,2	115	210	220,8	1137,6			1,6	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	SOUK65-15	65.0	15.0	32.2	90.0	19,6	39,2	115	210	227,8	1137,6			1,8	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	SOUK65-20	65.0	20.0	33.8	80.0	19,6	39,2	115	210	222,1	1137,6			1,6	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	SOUK65-25	65.0	25.0	35.0	90.0	19,6	39,2	115	210	228,7	1137,6			1,7	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	SOUK65-30	65.0	30.0	33.5	80.0	23,5	47	115	210	217,6	1137,6			1,5	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	SOUK65-35	65.0	35.0	35.4	90.0	23,5	47	115	210	223,8	1137,6			1,6	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	SOUK65-40	65.0	40.0	42.9	80.0	23,5	47	115	210	212,7	1137,6			1,4	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	SOUK65-45	65.0	45.0	46.5	90.0	23,5	47	115	210	218,1	1137,6			1,4	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	SOUK65-50	65.0	50.0	54.5	90.0	29,4	58,8	115	210	214	1137,6			1,3	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	UCNBK100-60	100.0	60.0	60.0	140.0	44,1	88,2	160	280	272	2809,6			2,9	0	K / KA	011	UCNBK.jpg	0	0
SANKYO	SOUK65-55	65.0	55.0	43.6	100.0	29,4	58,8	115	210	214	1039,5			1,1	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	SOUK65-60	65.0	60.0	50.0	100.0	29,4	58,8	115	210	214	1039,5			1,2	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	SOUK65-65	65.0	65.0	47.3	110.0	29,4	58,8	115	210	214	891			0,7	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	SOUK65-70	65.0	70.0	58.5	110.0	29,4	58,8	115	210	214	891			0,8	0	K / HK10,12,13 / DK10,12,13 / HDK10,12,13	006	SOUK.jpg	0	0
SANKYO	SOUK100-00	100.0	0.0	28.3	100.0	44,1	88,2	160	280	273	2817			4,1	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK100-05	100.0	5.0	28.4	140.0	44,1	88,2	160	280	273	3074,4			4,9	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK100-10	100.0	10.0	33.3	100.0	44,1	88,2	160	280	273	3074,4			4,4	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK100-15	100.0	15.0	33.9	140.0	44,1	88,2	160	280	287,3	3074,4			4,9	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK100-20	100.0	20.0	30.9	100.0	44,1	88,2	160	280	274	2978,4			4,3	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK100-25	100.0	25.0	32.0	140.0	44,1	88,2	160	280	287,3	2978,4			4,5	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK100-30	100.0	30.0	33.5	120.0	44,1	88,2	160	280	273	2978,4			3,9	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK100-35	100.0	35.0	35.4	140.0	44,1	88,2	160	280	285,3	2803,2			3,8	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK100-40	100.0	40.0	39.0	120.0	44,1	88,2	160	280	273	2803,2			3,2	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK100-45	100.0	45.0	42.3	140.0	44,1	88,2	160	280	280,4	2803,2			3,3	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK100-50	100.0	50.0	46.7	140.0	49	98	160	280	272	2803,2			3	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK100-55	100.0	55.0	52.3	140.0	49	98	160	280	272	2803,2			2,9	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK100-60	100.0	60.0	60.0	140.0	49	98	160	280	272	2803,2			3,2	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK100-65	100.0	65.0	47.3	140.0	49	98	160	280	272	2740			3,5	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK100-70	100.0	70.0	58.5	140.0	49	98	160	280	272	2740			4,2	0	K / HK12,13 / DK12,13 / HDK12,13	009	SOUK.jpg	0	0
SANKYO	SOUK200-00	200.0	0.0	28.3	100.0	98,1	196,2	260	280	273	5634			8,2	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	SOUK200-05	200.0	5.0	28.4	130.0	98,1	196,2	260	280	273	6148,8			9,8	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	SOUK200-10	200.0	10.0	33.3	100.0	98,1	196,2	260	280	273	6148,8			8,8	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	SOUK200-15	200.0	15.0	33.9	130.0	98,1	196,2	260	280	287,3	6148,8			9,8	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	SOUK200-20	200.0	20.0	30.9	100.0	98,1	196,2	260	280	274	5956,8			8,5	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	SOUK200-25	200.0	25.0	32.0	130.0	98,1	196,2	260	280	287,3	5956,8			9	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	SOUK200-30	200.0	30.0	33.5	120.0	98,1	196,2	260	280	273	5606,4			7,2	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	SOUK200-35	200.0	35.0	35.4	140.0	98,1	196,2	260	280	285,3	5606,4			7,4	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	SOUK200-40	200.0	40.0	39.0	120.0	98,1	196,2	260	280	273	5606,4			6,3	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	SOUK200-45	200.0	45.0	42.3	140.0	98,1	196,2	260	280	280,4	5606,4			6,4	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	SOUK200-50	200.0	50.0	46.7	140.0	117,7	235,4	260	280	272	5606,4			5,9	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	SOUK200-55	200.0	55.0	52.3	140.0	117,7	235,4	260	280	272	5606,4			5,6	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	SOUK200-60	200.0	60.0	60.0	140.0	117,7	235,4	260	280	272	5606,4			6,2	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	SOUK200-65	200.0	65.0	47.3	140.0	117,7	235,4	260	280	272	5480			6,6	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	SOUK200-70	200.0	70.0	58.5	140.0	117,7	235,4	260	280	272	5480			7,7	0	K / HK12,13,16 / DK12,13,16 / HDK12,13,16	013	SOUK.jpg	0	0
SANKYO	UCNBK65-00	65.0	0.0	26.9	80.0	19,6	39,2	115	210	209,9	1068,3			1,6	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK65-05	65.0	5.0	27.0	90.0	19,6	39,2	115	210	217	1139,9			1,8	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK65-10	65.0	10.0	31.6	80.0	19,6	39,2	115	210	220,8	1139,9			1,6	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK65-15	65.0	15.0	32.2	90.0	19,6	39,2	115	210	227,8	1139,9			1,8	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK65-20	65.0	20.0	33.8	80.0	19,6	39,2	115	210	222,1	1139,9			1,6	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK65-25	65.0	25.0	35.0	90.0	19,6	39,2	115	210	228,7	1139,9			1,7	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK65-30	65.0	30.0	33.5	80.0	19,6	39,2	115	210	217,6	1139,9			1,5	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK65-35	65.0	35.0	35.4	90.0	19,6	39,2	115	210	223,8	1139,9			1,6	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK65-40	65.0	40.0	42.9	80.0	19,6	39,2	115	210	212,7	1139,9			1,3	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK65-45	65.0	45.0	46.5	90.0	19,6	39,2	115	210	218,1	1139,9			1,4	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK65-50	65.0	50.0	54.5	90.0	19,6	39,2	115	210	214	1139,9			1,3	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK65-55	65.0	55.0	43.6	100.0	19,6	39,2	115	210	214	1036,9			1,1	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK65-60	65.0	60.0	50.0	100.0	19,6	39,2	115	210	214	1036,9			1,2	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK65-65	65.0	65.0	47.3	110.0	19,6	39,2	115	210	214	888,8			0,7	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK65-70	65.0	70.0	58.5	110.0	19,6	39,2	115	210	214	888,8			0,7	0	K	008	UCNBK.jpg	0	0
SANKYO	UCNBK100-00	100.0	0.0	28.3	100.0	44,1	88,2	160	280	273	2817			4,1	0	K / KA	011	UCNBK.jpg	0	0
SANKYO	UCNBK100-10	100.0	10.0	33.3	100.0	44,1	88,2	160	280	273	2817			4,1	0	K / KA	011	UCNBK.jpg	0	0
SANKYO	UCNBK100-20	100.0	20.0	30.9	100.0	44,1	88,2	160	280	274	2562			3,7	0	K / KA	011	UCNBK.jpg	0	0
SANKYO	UCNBK100-30	100.0	30.0	33.5	120.0	44,1	88,2	160	280	273	2809,6			3,6	0	K / KA	011	UCNBK.jpg	0	0
SANKYO	UCNBK100-40	100.0	40.0	39.0	120.0	44,1	88,2	160	280	273	2809,6			3,1	0	K / KA	011	UCNBK.jpg	0	0
SANKYO	UCNBK100-70	100.0	70.0	58.5	140.0	44,1	88,2	160	280	272	2740			3,5	0	K / KA	011	UCNBK.jpg	0	0
SANKYO	UCNBK200-00	200.0	0.0	28.3	100.0	93,1	186,2	260	280	273	5634			8,2	0	K / KA	016	UCNBK.jpg	0	0
SANKYO	UCNBK200-10	200.0	10.0	33.3	100.0	93,1	186,2	260	280	273	5634			8,1	0	K / KA	016	UCNBK.jpg	0	0
SANKYO	UCNBK200-20	200.0	20.0	30.9	100.0	93,1	186,2	260	280	274	5124			7,4	0	K / KA	016	UCNBK.jpg	0	0
SANKYO	UCNBK200-30	200.0	30.0	33.5	120.0	93,1	186,2	260	280	273	5619,2			7,2	0	K / KA	016	UCNBK.jpg	0	0
SANKYO	UCNBK200-40	200.0	40.0	39.0	120.0	93,1	186,2	260	280	273	5619,2			6,3	0	K / KA	016	UCNBK.jpg	0	0
SANKYO	UCNBK200-50	200.0	50.0	46.7	140.0	93,1	186,2	260	280	272	5619,2			5,8	0	K / KA	016	UCNBK.jpg	0	0
SANKYO	UCNBK200-60	200.0	60.0	60.0	140.0	93,1	186,2	260	280	272	5619,2			6	0	K / KA	016	UCNBK.jpg	0	0
SANKYO	UCNBK200-70	200.0	70.0	58.5	140.0	93,1	186,2	260	280	272	5480			7,3	0	K / KA	016	UCNBK.jpg	0	0
SANKYO	SUWB200-00	200.0	0.0	38.6	180.0	117,6	235,2	200	350	340	4903,2			8	0	K / FK / N / S	023	SUWB.jpg	0	0
SANKYO	SUWB200-05	200.0	5.0	42.6	180.0	117,6	235,2	200	350	340	4903,2			8	0	K / FK / N / S	023	SUWB.jpg	0	0
SANKYO	SUWB200-10	200.0	10.0	46.7	180.0	117,6	235,2	200	350	340	4903,2			7,9	0	K / FK / N / S	023	SUWB.jpg	0	0
SANKYO	SUWB200-15	200.0	15.0	50.9	180.0	117,6	235,2	200	350	340	4903,2			7,9	0	K / FK / N / S	023	SUWB.jpg	0	0
SANKYO	SUWB200-20	200.0	20.0	55.3	180.0	117,6	235,2	200	350	340,8	4903,2			7,8	0	K / FK / N / S	023	SUWB.jpg	0	0
SANKYO	SUWB200-25	200.0	25.0	60.0	180.0	117,6	235,2	200	350		4903,2			0	0	K / FK / N / S	024	SUWB.jpg	0	0
SANKYO	SUWB200-30	200.0	30.0	65.1	180.0	117,6	235,2	200	350	347,8	4903,2			7,7	0	K / FK / N / S	023	SUWB.jpg	0	0
SANKYO	SUWB200-35	200.0	35.0	70.8	180.0	117,6	235,2	200	350		4903,2			0	0	K / FK / N / S	024	SUWB.jpg	0	0
SANKYO	SUWB200-40	200.0	40.0	77.1	180.0	117,6	235,2	200	350	351,2	4903,2			7,6	0	K / FK / N / S	023	SUWB.jpg	0	0
SANKYO	SUWB200-45	200.0	45.0	84.5	180.0	117,6	235,2	200	350		4903,2			0	0	K / FK / N / S	024	SUWB.jpg	0	0
SANKYO	SUWB200-50	200.0	50.0	93.3	180.0	117,6	235,2	200	350	354,8	4903,2			7,5	0	K / FK / N / S	023	SUWB.jpg	0	0
SANKYO	SUWB200-55	200.0	55.0	93.3	180.0	117,6	235,2	200	350		4903,2			0	0	K / FK / N / S	024	SUWB.jpg	0	0
SANKYO	SUWB200-60	200.0	60.0	120.0	180.0	117,6	235,2	200	350	385	4903,2			9,7	0	K / FK / N / S	023	SUWB.jpg	0	0
SANKYO	SUWB300-00	300.0	0.0	38.6	180.0	196	392	300	350	340	9806,4			15,8	0	K / FK / N / S	027	SUWB.jpg	0	0
SANKYO	SUWB300-05	300.0	5.0	42.6	180.0	196	392	300	350	340	9806,4			15,8	0	K / FK / N / S	027	SUWB.jpg	0	0
SANKYO	SUWB300-10	300.0	10.0	46.7	180.0	196	392	300	350	340	9806,4			15,7	0	K / FK / N / S	027	SUWB.jpg	0	0
SANKYO	SUWB300-15	300.0	15.0	50.9	180.0	196	392	300	350	340	9806,4			15,6	0	K / FK / N / S	027	SUWB.jpg	0	0
SANKYO	SUWB300-20	300.0	20.0	55.3	180.0	196	392	300	350	340,8	9806,4			15,6	0	K / FK / N / S	027	SUWB.jpg	0	0
SANKYO	SUWB300-25	300.0	25.0	60.0	180.0	196	392	300	350		9806,4			0	0	K / FK / N / S	029	SUWB.jpg	0	0
SANKYO	SUWB300-30	300.0	30.0	65.1	180.0	196	392	300	350	347,8	9806,4			15,4	0	K / FK / N / S	027	SUWB.jpg	0	0
SANKYO	SUWB300-35	300.0	35.0	70.8	180.0	196	392	300	350		9806,4			0	0	K / FK / N / S	029	SUWB.jpg	0	0
SANKYO	SUWB300-40	300.0	40.0	77.1	180.0	196	392	300	350	351,2	9806,4			15,3	0	K / FK / N / S	027	SUWB.jpg	0	0
SANKYO	SUWB300-45	300.0	45.0	84.5	180.0	196	392	300	350		9806,4			0	0	K / FK / N / S	029	SUWB.jpg	0	0
SANKYO	SUWB300-50	300.0	50.0	93.3	180.0	196	392	300	350	354,8	9806,4			15,1	0	K / FK / N / S	027	SUWB.jpg	0	0
SANKYO	SUWB300-55	300.0	55.0	93.3	180.0	196	392	300	350		9806,4			0	0	K / FK / N / S	029	SUWB.jpg	0	0
SANKYO	SUWB300-60	300.0	60.0	120.0	180.0	196	392	300	350	385	9806,4			19,4	0	K / FK / N / S	027	SUWB.jpg	0	0
SANKYO	SUWB400-00	400.0	0.0	38.6	180.0	245	490	400	350	340	9806,4			16	0	K / FK / N / S	032	SUWB.jpg	0	0
SANKYO	SUWB400-05	400.0	5.0	42.6	180.0	245	490	400	350	340	9806,4			16	0	K / FK / N / S	032	SUWB.jpg	0	0
SANKYO	SUWB400-10	400.0	10.0	46.7	180.0	245	490	400	350	340	9806,4			15,9	0	K / FK / N / S	032	SUWB.jpg	0	0
SANKYO	SUWB400-15	400.0	15.0	50.9	180.0	245	490	400	350	340	9806,4			15,8	0	K / FK / N / S	032	SUWB.jpg	0	0
SANKYO	SUWB400-20	400.0	20.0	55.3	180.0	245	490	400	350	340,8	9806,4			15,7	0	K / FK / N / S	032	SUWB.jpg	0	0
SANKYO	SUWB400-25	400.0	25.0	60.0	180.0	245	490	400	350		9806,4			0	0	K / FK / N / S	035	SUWB.jpg	0	0
SANKYO	SUWB400-30	400.0	30.0	65.1	180.0	245	490	400	350	347,8	9806,4			15,5	0	K / FK / N / S	032	SUWB.jpg	0	0
SANKYO	SUWB400-35	400.0	35.0	70.8	180.0	245	490	400	350		9806,4			0	0	K / FK / N / S	035	SUWB.jpg	0	0
SANKYO	SUWB400-40	400.0	40.0	77.1	180.0	245	490	400	350	351,2	9806,4			15,3	0	K / FK / N / S	032	SUWB.jpg	0	0
SANKYO	SUWB400-45	400.0	45.0	84.5	180.0	245	490	400	350		9806,4			0	0	K / FK / N / S	035	SUWB.jpg	0	0
SANKYO	SUWB400-50	400.0	50.0	93.3	180.0	245	490	400	350	354,8	9806,4			15,1	0	K / FK / N / S	032	SUWB.jpg	0	0
SANKYO	SUWB400-55	400.0	55.0	93.3	180.0	245	490	400	350		9806,4			0	0	K / FK / N / S	035	SUWB.jpg	0	0
SANKYO	SUWB400-60	400.0	60.0	120.0	180.0	245	490	400	350	385	9806,4			19,3	0	K / FK / N / S	032	SUWB.jpg	0	0
SANKYO	SUWB500-00	500.0	0.0	38.6	180.0	313,6	627,2	500	350	340	14709,6			23,9	0	K / FK / N / S	040	SUWB.jpg	0	0
SANKYO	SUWB500-05	500.0	5.0	42.6	180.0	313,6	627,2	500	350	340	14709,6			23,8	0	K / FK / N / S	040	SUWB.jpg	0	0
SANKYO	SUWB500-10	500.0	10.0	46.7	180.0	313,6	627,2	500	350	340	14709,6			23,6	0	K / FK / N / S	040	SUWB.jpg	0	0
SANKYO	SUWB500-15	500.0	15.0	50.9	180.0	313,6	627,2	500	350	340	14709,6			23,5	0	K / FK / N / S	040	SUWB.jpg	0	0
SANKYO	SUWB500-20	500.0	20.0	55.3	180.0	313,6	627,2	500	350	340,8	14709,6			23,4	0	K / FK / N / S	040	SUWB.jpg	0	0
SANKYO	SUWB500-25	500.0	25.0	60.0	180.0	313,6	627,2	500	350		14709,6			0	0	K / FK / N / S	043	SUWB.jpg	0	0
SANKYO	SUWB500-30	500.0	30.0	65.1	180.0	313,6	627,2	500	350	347,8	14709,6			23,2	0	K / FK / N / S	040	SUWB.jpg	0	0
SANKYO	SUWB500-35	500.0	35.0	70.8	180.0	313,6	627,2	500	350		14709,6			0	0	K / FK / N / S	043	SUWB.jpg	0	0
SANKYO	SUWB500-40	500.0	40.0	77.1	180.0	313,6	627,2	500	350	351,2	14709,6			22,9	0	K / FK / N / S	040	SUWB.jpg	0	0
SANKYO	SUWB500-45	500.0	45.0	84.5	180.0	313,6	627,2	500	350		14709,6			0	0	K / FK / N / S	043	SUWB.jpg	0	0
SANKYO	SUWB500-50	500.0	50.0	93.3	180.0	313,6	627,2	500	350	354,8	14709,6			22,6	0	K / FK / N / S	040	SUWB.jpg	0	0
SANKYO	SUWB500-55	500.0	55.0	93.3	180.0	313,6	627,2	500	350		14709,6			0	0	K / FK / N / S	043	SUWB.jpg	0	0
SANKYO	SUWB500-60	500.0	60.0	120.0	180.0	313,6	627,2	500	350	385	14709,6			29,1	0	K / FK / N / S	040	SUWB.jpg	0	0
SANKYO	SUWB600-00	600.0	0.0	38.6	180.0	392	784	600	350	340	19612,8			31,8	0	K / FK / N / S	043	SUWB.jpg	0	0
SANKYO	SUWB600-05	600.0	5.0	42.6	180.0	392	784	600	350	340	19612,8			31,6	0	K / FK / N / S	043	SUWB.jpg	0	0
SANKYO	SUWB600-10	600.0	10.0	46.7	180.0	392	784	600	350	340	19612,8			31,5	0	K / FK / N / S	043	SUWB.jpg	0	0
SANKYO	SUWB600-15	600.0	15.0	50.9	180.0	392	784	600	350	340	19612,8			31,3	0	K / FK / N / S	043	SUWB.jpg	0	0
SANKYO	SUWB600-20	600.0	20.0	55.3	180.0	392	784	600	350	340,8	19612,8			31,2	0	K / FK / N / S	043	SUWB.jpg	0	0
SANKYO	SUWB600-25	600.0	25.0	60.0	180.0	392	784	600	350		19612,8			0	0	K / FK / N / S	046	SUWB.jpg	0	0
SANKYO	SUWB600-30	600.0	30.0	65.1	180.0	392	784	600	350	347,8	19612,8			30,9	0	K / FK / N / S	043	SUWB.jpg	0	0
SANKYO	SUWB600-35	600.0	35.0	70.8	180.0	392	784	600	350		19612,8			0	0	K / FK / N / S	046	SUWB.jpg	0	0
SANKYO	SUWB600-40	600.0	40.0	77.1	180.0	392	784	600	350	351,2	19612,8			30,5	0	K / FK / N / S	043	SUWB.jpg	0	0
SANKYO	SUWB600-45	600.0	45.0	84.5	180.0	392	784	600	350		19612,8			0	0	K / FK / N / S	046	SUWB.jpg	0	0
SANKYO	SUWB600-50	600.0	50.0	93.3	180.0	392	784	600	350	354,8	19612,8			30,2	0	K / FK / N / S	043	SUWB.jpg	0	0
SANKYO	SUWB600-55	600.0	55.0	93.3	180.0	392	784	600	350		19612,8			0	0	K / FK / N / S	046	SUWB.jpg	0	0
SANKYO	SUWB600-60	600.0	60.0	120.0	180.0	392	784	600	350	385	19612,8			38,8	0	K / FK / N / S	043	SUWB.jpg	0	0
SANKYO	UCMSG50-00	50.0	0.0	15.0	65.0	29,4	58,8	50	180	225	1097,6			1,8	0	K / N13 / KA	008	UCMSG.jpg	0	0
SANKYO	UCMSG50-05	50.0	5.0	15.6	65.0	29,4	58,8	50	180	220	1167,4			1,9	0	K / N13 / KA	008	UCMSG.jpg	0	0
SANKYO	UCMSG50-10	50.0	10.0	15.6	65.0	29,4	58,8	50	180	210	1167,4			1,9	0	K / N13 / KA	008	UCMSG.jpg	0	0
SANKYO	UCMSG50-15	50.0	15.0	17.0	65.0	29,4	58,8	50	180	210	1167,4			1,9	0	K / N13 / KA	008	UCMSG.jpg	0	0
SANKYO	UCMSG50-20	50.0	20.0	18.4	65.0	29,4	58,8	50	180	210	1167,4			1,9	0	K / N13 / KA	008	UCMSG.jpg	0	0
SANKYO	UCMSG50-25	50.0	25.0	18.0	65.0	29,4	58,8	50	180	210	1167,4			1,8	0	K / N13 / KA	008	UCMSG.jpg	0	0
SANKYO	UCMSG50-30	50.0	30.0	17.4	65.0	29,4	58,8	50	180	210	1104,6			1,7	0	K / N13 / KA	008	UCMSG.jpg	0	0
SANKYO	UCMSG50-35	50.0	35.0	18.9	65.0	29,4	58,8	50	180	210	1104,6			1,7	0	K / N13 / KA	008	UCMSG.jpg	0	0
SANKYO	UCMSG50-40	50.0	40.0	20.6	55.0	29,4	58,8	50	180	210	1104,6			1,7	0	K / N13 / KA	008	UCMSG.jpg	0	0
SANKYO	UCMSG50-45	50.0	45.0	22.5	55.0	29,4	58,8	50	180	210	1104,6			1,7	0	K / N13 / KA	008	UCMSG.jpg	0	0
SANKYO	UCMSG50-50	50.0	50.0	23.3	55.0	29,4	58,8	50	180	210	1104,6			1,7	0	K / N13 / KA	008	UCMSG.jpg	0	0
SANKYO	UCMSG50-55	50.0	55.0	26.1	55.0	29,4	58,8	50	180	225	1104,6			1,7	0	K / N13 / KA	008	UCMSG.jpg	0	0
SANKYO	UCMSG50-60	50.0	60.0	31.5	55.0	29,4	58,8	50	180	235	1104,6			1,7	0	K / N13 / KA	008	UCMSG.jpg	0	0
SANKYO	UCMSG50-65	50.0	65.0	36.6	55.0	29,4	58,8	50	180	245	1104,6			1,7	0	K / N13 / KA	008	UCMSG.jpg	0	0
SANKYO	UCMSG65-00	65.0	0.0	15.0	56.0	29,4	58,8	65	175	190	834,9			1,4	0	K	008	UCMSG.jpg	0	0
SANKYO	UCMSG65-05	65.0	5.0	15.6	56.0	29,4	58,8	65	175	185	834,9			1,4	0	K	008	UCMSG.jpg	0	0
SANKYO	UCMSG65-10	65.0	10.0	15.6	56.0	29,4	58,8	65	175	182,5	828,8			1,3	0	K	008	UCMSG.jpg	0	0
SANKYO	UCMSG65-15	65.0	15.0	17.0	56.0	29,4	58,8	65	175	175	828,8			1,3	0	K	008	UCMSG.jpg	0	0
SANKYO	UCMSG65-20	65.0	20.0	18.4	56.0	29,4	58,8	65	175	172,4	828,8			1,3	0	K	008	UCMSG.jpg	0	0
SANKYO	UCMSG65-30	65.0	30.0	19.5	56.0	29,4	58,8	65	175	171,8	809,6			1,3	0	K	008	UCMSG.jpg	0	0
SANKYO	UCMSG65-40	65.0	40.0	23.1	56.0	29,4	58,8	65	175	170	809,6			1,3	0	K	008	UCMSG.jpg	0	0
SANKYO	UCMSG65-50	65.0	50.0	24.9	56.0	29,4	58,8	65	175	170	809,6			1,2	0	K	008	UCMSG.jpg	0	0
SANKYO	UCMSG65-60	65.0	60.0	32.0	56.0	29,4	58,8	65	175	185	809,6			1,6	0	K	008	UCMSG.jpg	0	0
SANKYO	UCMSG80-00	80.0	0.0	30.2	90.0	49	98	80	270	305	1842,4			2,9	0	K / N12 / KA	010	UCMSG.jpg	0	0
SANKYO	UCMSG80-05	80.0	5.0	30.5	90.0	49	98	80	270	295	1872			3	0	K / N12 / KA	010	UCMSG.jpg	0	0
SANKYO	UCMSG80-10	80.0	10.0	31.1	90.0	49	98	80	270	280	1872			3	0	K / N12 / KA	010	UCMSG.jpg	0	0
SANKYO	UCMSG80-15	80.0	15.0	33.9	90.0	49	98	80	270	277,6	1872			3	0	K / N12 / KA	010	UCMSG.jpg	0	0
SANKYO	UCMSG80-20	80.0	20.0	32.3	90.0	49	98	80	270	273,3	1914			3	0	K / N12 / KA	010	UCMSG.jpg	0	0
SANKYO	UCMSG80-25	80.0	25.0	35.0	90.0	49	98	80	270	270	1914			3	0	K / N12 / KA	010	UCMSG.jpg	0	0
SANKYO	UCMSG80-30	80.0	30.0	34.7	90.0	49	98	80	270	270	1914			3	0	K / N12 / KA	010	UCMSG.jpg	0	0
SANKYO	UCMSG80-35	80.0	35.0	37.7	90.0	49	98	80	270	270	1914			3	0	K / N12 / KA	010	UCMSG.jpg	0	0
SANKYO	UCMSG80-40	80.0	40.0	39.9	90.0	49	98	80	270	270	1914			3	0	K / N12 / KA	010	UCMSG.jpg	0	0
SANKYO	UCMSG80-45	80.0	45.0	43.7	90.0	49	98	80	270	270	1914			3	0	K / N12 / KA	010	UCMSG.jpg	0	0
SANKYO	UCMSG80-50	80.0	50.0	46.7	90.0	49	98	80	270	270	1914			3	0	K / N12 / KA	010	UCMSG.jpg	0	0
SANKYO	UCMSG80-55	80.0	55.0	53.8	90.0	49	98	80	270	270	1914			2,9	0	K / N12 / KA	010	UCMSG.jpg	0	0
SANKYO	UCMSG80-60	80.0	60.0	61.1	90.0	49	98	80	270	290	1914			2,9	0	K / N12 / KA	010	UCMSG.jpg	0	0
SANKYO	UCMSG80-65	80.0	65.0	70.9	90.0	49	98	80	270	300	1914			2,9	0	K / N12 / KA	010	UCMSG.jpg	0	0
SANKYO	UCMSG150-00	150.0	0.0	28.6	120.0	147	294	240	355	325	7022,4			12,7	0	K / N13 / KA	022	UCMSG.jpg	0	0
SANKYO	UCMSG150-05	150.0	5.0	32.2	120.0	147	294	240	355	325	7022,4			12,6	0	K / N13 / KA	022	UCMSG.jpg	0	0
SANKYO	UCMSG150-10	150.0	10.0	35.9	120.0	147	294	240	355	325	7022,4			12,6	0	K / N13 / KA	022	UCMSG.jpg	0	0
SANKYO	UCMSG150-15	150.0	15.0	39.6	120.0	147	294	240	355	325	7022,4			12,6	0	K / N13 / KA	022	UCMSG.jpg	0	0
SANKYO	UCMSG150-20	150.0	20.0	43.5	120.0	147	294	240	355	326,3	7022,4			12,5	0	K / N13 / KA	022	UCMSG.jpg	0	0
SANKYO	UCMSG150-25	150.0	25.0	47.7	120.0	147	294	240	355	329	7022,4			12,5	0	K / N13 / KA	022	UCMSG.jpg	0	0
SANKYO	UCMSG150-30	150.0	30.0	52.3	120.0	147	294	240	355	326	7022,4			12,4	0	K / N13 / KA	022	UCMSG.jpg	0	0
SANKYO	UCMSG150-35	150.0	35.0	57.3	120.0	147	294	240	355	340	7022,4			12,4	0	K / N13 / KA	022	UCMSG.jpg	0	0
SANKYO	UCMSG150-40	150.0	40.0	63.0	120.0	147	294	240	355	360	7022,4			12,3	0	K / N13 / KA	022	UCMSG.jpg	0	0
SANKYO	UCMSG150-45	150.0	45.0	69.6	120.0	147	294	240	355	375	7022,4			12,2	0	K / N13 / KA	022	UCMSG.jpg	0	0
SANKYO	UCMSG150-50	150.0	50.0	77.4	120.0	147	294	240	355	395	7022,4			12,2	0	K / N13 / KA	022	UCMSG.jpg	0	0
SANKYO	UCMSG150-55	150.0	55.0	87.1	120.0	147	294	240	355	415	7022,4			12,1	0	K / N13 / KA	022	UCMSG.jpg	0	0
SANKYO	UCMSG150-60	150.0	60.0	99.6	120.0	147	294	240	355	430	7022,4			12,1	0	K / N13 / KA	022	UCMSG.jpg	0	0
SANKYO	UCMSG150-65	150.0	65.0	116.5	120.0	147	294	240	355	445	7022,4			12	0	K / N13 / KA	022	UCMSG.jpg	0	0
SANKYO	UCMSG200-00	200.0	0.0	28.6	120.0	147	294	270	365	325	7022,4			12,8	0	K / N13 / KA	027	UCMSG.jpg	0	0
SANKYO	UCMSG200-05	200.0	5.0	32.2	120.0	147	294	270	365	325	7022,4			12,7	0	K / N13 / KA	027	UCMSG.jpg	0	0
SANKYO	UCMSG200-10	200.0	10.0	35.9	120.0	147	294	270	365	325	7022,4			12,7	0	K / N13 / KA	027	UCMSG.jpg	0	0
SANKYO	UCMSG200-15	200.0	15.0	39.6	120.0	147	294	270	365	325	7022,4			12,6	0	K / N13 / KA	027	UCMSG.jpg	0	0
SANKYO	UCMSG200-20	200.0	20.0	43.5	120.0	147	294	270	365	326,3	7022,4			12,6	0	K / N13 / KA	027	UCMSG.jpg	0	0
SANKYO	UCMSG200-25	200.0	25.0	47.7	120.0	147	294	270	365	329	7022,4			12,5	0	K / N13 / KA	027	UCMSG.jpg	0	0
SANKYO	UCMSG200-30	200.0	30.0	52.3	120.0	147	294	270	365	326	7022,4			12,4	0	K / N13 / KA	027	UCMSG.jpg	0	0
SANKYO	UCMSG200-35	200.0	35.0	57.3	120.0	147	294	270	365	340	7022,4			12,4	0	K / N13 / KA	027	UCMSG.jpg	0	0
SANKYO	UCMSG200-40	200.0	40.0	63.0	120.0	147	294	270	365	360	7022,4			12,3	0	K / N13 / KA	027	UCMSG.jpg	0	0
SANKYO	UCMSG200-45	200.0	45.0	69.6	120.0	147	294	270	365	375	7022,4			12,3	0	K / N13 / KA	027	UCMSG.jpg	0	0
SANKYO	UCMSG200-50	200.0	50.0	77.4	120.0	147	294	270	365	395	7022,4			12,2	0	K / N13 / KA	027	UCMSG.jpg	0	0
SANKYO	UCMSG200-55	200.0	55.0	87.1	120.0	147	294	270	365	415	7022,4			12,1	0	K / N13 / KA	027	UCMSG.jpg	0	0
SANKYO	UCMSG200-60	200.0	60.0	99.6	120.0	147	294	270	365	430	7022,4			12,1	0	K / N13 / KA	027	UCMSG.jpg	0	0
SANKYO	UCMSG200-65	200.0	65.0	116.5	120.0	147	294	270	365	445	7022,4			12	0	K / N13 / KA	027	UCMSG.jpg	0	0
SANKYO	UCMSG300-00	300.0	0.0	28.6	160.0	294	588	340	355	325	14044,8			25,3	0	K / KA	042	UCMSG.jpg	0	0
SANKYO	UCMSG300-05	300.0	5.0	32.2	160.0	294	588	340	355	325	14044,8			25,2	0	K / KA	042	UCMSG.jpg	0	0
SANKYO	UCMSG300-10	300.0	10.0	35.9	160.0	294	588	340	355	325	14044,8			25,1	0	K / KA	042	UCMSG.jpg	0	0
SANKYO	UCMSG300-15	300.0	15.0	39.6	160.0	294	588	340	355	325	14044,8			25,1	0	K / KA	042	UCMSG.jpg	0	0
SANKYO	UCMSG300-20	300.0	20.0	43.5	160.0	294	588	340	355	326,3	14044,8			25	0	K / KA	042	UCMSG.jpg	0	0
SANKYO	UCMSG300-25	300.0	25.0	47.7	160.0	294	588	340	355	329	14044,8			24,9	0	K / KA	042	UCMSG.jpg	0	0
SANKYO	UCMSG300-30	300.0	30.0	52.3	160.0	294	588	340	355	326	14044,8			24,8	0	K / KA	042	UCMSG.jpg	0	0
SANKYO	UCMSG300-35	300.0	35.0	57.3	160.0	294	588	340	355	340	14044,8			24,7	0	K / KA	042	UCMSG.jpg	0	0
SANKYO	UCMSG300-40	300.0	40.0	63.0	160.0	294	588	340	355	360	14044,8			24,6	0	K / KA	042	UCMSG.jpg	0	0
SANKYO	UCMSG300-45	300.0	45.0	69.6	160.0	294	588	340	355	375	14044,8			24,5	0	K / KA	042	UCMSG.jpg	0	0
SANKYO	UCMSG300-50	300.0	50.0	77.4	160.0	294	588	340	355	395	14044,8			24,4	0	K / KA	042	UCMSG.jpg	0	0
SANKYO	UCMSG300-55	300.0	55.0	87.1	160.0	294	588	340	355	415	14044,8			24,3	0	K / KA	042	UCMSG.jpg	0	0
SANKYO	UCMSG300-60	300.0	60.0	99.6	160.0	294	588	340	355	430	14044,8			24,2	0	K / KA	042	UCMSG.jpg	0	0
SANKYO	UCMSG300-65	300.0	65.0	116.5	160.0	294	588	340	355	445	14044,8			24,1	0	K / KA	042	UCMSG.jpg	0	0
SANKYO	UCMSL500-00-(SPRING)	500.0	0.0	38.6	180.0	313,6		500	385	370		19600		31,9	0	GS / GD / GK / NGS / NGD / NGK / NF	060	UCMSL.jpg	0	0
SANKYO	UCMSL500-10-(SPRING)	500.0	10.0	46.7	180.0	313,6		500	385	370		19600		31,7	0	GS / GD / GK / NGS / NGD / NGK / NF	060	UCMSL.jpg	0	0
SANKYO	UCMSL500-20-(SPRING)	500.0	20.0	55.3	180.0	313,6		500	385	370		19600		31,4	0	GS / GD / GK / NGS / NGD / NGK / NF	060	UCMSL.jpg	0	0
SANKYO	UCMSL500-30-(SPRING)	500.0	30.0	65.1	180.0	313,6		500	385	370		19600		28,1	0	GS / GD / GK / NGS / NGD / NGK / NF	060	UCMSL.jpg	0	0
SANKYO	UCMSL500-40-(SPRING)	500.0	40.0	77.1	180.0	313,6		500	385	400		19600		24,5	0	GS / GD / GK / NGS / NGD / NGK / NF	060	UCMSL.jpg	0	0
SANKYO	UCMSL500-50-(SPRING)	500.0	50.0	93.3	180.0	313,6		500	385	430		19600		20,9	0	GS / GD / GK / NGS / NGD / NGK / NF	060	UCMSL.jpg	0	0
SANKYO	UCMSL500-60-(SPRING)	500.0	60.0	120.0	180.0	313,6		500	385	438,8		19600		22,7	0	GS / GD / GK / NGS / NGD / NGK / NF	060	UCMSL.jpg	0	0
SANKYO	UCMSL600-00-(SPRING)	600.0	0.0	38.6	180.0	313,6		600	385	370		19600		32	0	GS / GD / GK / NGS / NGD / NGK / NF	070	UCMSL.jpg	0	0
SANKYO	UCMSL600-10-(SPRING)	600.0	10.0	46.7	180.0	313,6		600	385	370		19600		31,7	0	GS / GD / GK / NGS / NGD / NGK / NF	070	UCMSL.jpg	0	0
SANKYO	UCMSL600-20-(SPRING)	600.0	20.0	55.3	180.0	313,6		600	385	370		19600		31,4	0	GS / GD / GK / NGS / NGD / NGK / NF	070	UCMSL.jpg	0	0
SANKYO	UCMSL600-30-(SPRING)	600.0	30.0	65.1	180.0	313,6		600	385	370		19600		27,9	0	GS / GD / GK / NGS / NGD / NGK / NF	070	UCMSL.jpg	0	0
SANKYO	UCMSL600-40-(SPRING)	600.0	40.0	77.1	180.0	313,6		600	385	400		19600		24,1	0	GS / GD / GK / NGS / NGD / NGK / NF	070	UCMSL.jpg	0	0
SANKYO	UCMSL600-50-(SPRING)	600.0	50.0	93.3	180.0	313,6		600	385	430		19600		20,3	0	GS / GD / GK / NGS / NGD / NGK / NF	070	UCMSL.jpg	0	0
SANKYO	UCMSL600-60-(SPRING)	600.0	60.0	120.0	180.0	313,6		600	385	438,8		19600		21,6	0	GS / GD / GK / NGS / NGD / NGK / NF	070	UCMSL.jpg	0	0
SANKYO	UCMSL700-00-(SPRING)	700.0	0.0	38.6	180.0	470,4		700	385	370		29400		47,8	0	GS / GD / GK / NGS / NGD / NGK / NF	084	UCMSL.jpg	0	0
SANKYO	UCMSL700-10-(SPRING)	700.0	10.0	46.7	180.0	470,4		700	385	370		29400		47,4	0	GS / GD / GK / NGS / NGD / NGK / NF	084	UCMSL.jpg	0	0
SANKYO	UCMSL700-20-(SPRING)	700.0	20.0	55.3	180.0	470,4		700	385	370		29400		47,1	0	GS / GD / GK / NGS / NGD / NGK / NF	084	UCMSL.jpg	0	0
SANKYO	UCMSL700-30-(SPRING)	700.0	30.0	65.1	180.0	470,4		700	385	370		29400		42,3	0	GS / GD / GK / NGS / NGD / NGK / NF	084	UCMSL.jpg	0	0
SANKYO	UCMSL700-40-(SPRING)	700.0	40.0	77.1	180.0	470,4		700	385	400		29400		37,2	0	GS / GD / GK / NGS / NGD / NGK / NF	084	UCMSL.jpg	0	0
SANKYO	UCMSL700-50-(SPRING)	700.0	50.0	93.3	180.0	470,4		700	385	430		29400		32	0	GS / GD / GK / NGS / NGD / NGK / NF	084	UCMSL.jpg	0	0
SANKYO	UCMSL700-60-(SPRING)	700.0	60.0	120.0	180.0	470,4		700	385	438,8		29400		32,8	0	GS / GD / GK / NGS / NGD / NGK / NF	084	UCMSL.jpg	0	0
SANKYO	UCMSL800-00-(SPRING)	800.0	0.0	38.6	180.0	470,4		800	385	370		29400		47,8	0	GS / GD / GK / NGS / NGD / NGK / NF	094	UCMSL.jpg	0	0
SANKYO	UCMSL800-10-(SPRING)	800.0	10.0	46.7	180.0	470,4		800	385	370		29400		47,5	0	GS / GD / GK / NGS / NGD / NGK / NF	094	UCMSL.jpg	0	0
SANKYO	UCMSL800-20-(SPRING)	800.0	20.0	55.3	180.0	470,4		800	385	370		29400		47,1	0	GS / GD / GK / NGS / NGD / NGK / NF	094	UCMSL.jpg	0	0
SANKYO	UCMSL800-30-(SPRING)	800.0	30.0	65.1	180.0	470,4		800	385	370		29400		42,2	0	GS / GD / GK / NGS / NGD / NGK / NF	094	UCMSL.jpg	0	0
SANKYO	UCMSL800-40-(SPRING)	800.0	40.0	77.1	180.0	470,4		800	385	400		29400		36,8	0	GS / GD / GK / NGS / NGD / NGK / NF	094	UCMSL.jpg	0	0
SANKYO	UCMSL800-50-(SPRING)	800.0	50.0	93.3	180.0	470,4		800	385	430		29400		31,4	0	GS / GD / GK / NGS / NGD / NGK / NF	094	UCMSL.jpg	0	0
SANKYO	UCMSL800-60-(SPRING)	800.0	60.0	120.0	180.0	470,4		800	385	438,8		29400		31,5	0	GS / GD / GK / NGS / NGD / NGK / NF	094	UCMSL.jpg	0	0
SANKYO	UCMSL900-00-(SPRING)	900.0	0.0	38.6	180.0	627,2		900	385	370		39200		63,8	0	GS / GD / GK / NGS / NGD / NGK / NF	108	UCMSL.jpg	0	0
SANKYO	UCMSL900-10-(SPRING)	900.0	10.0	46.7	180.0	627,2		900	385	370		39200		63,4	0	GS / GD / GK / NGS / NGD / NGK / NF	108	UCMSL.jpg	0	0
SANKYO	UCMSL900-20-(SPRING)	900.0	20.0	55.3	180.0	627,2		900	385	370		39200		62,9	0	GS / GD / GK / NGS / NGD / NGK / NF	108	UCMSL.jpg	0	0
SANKYO	UCMSL900-30-(SPRING)	900.0	30.0	65.1	180.0	627,2		900	385	370		39200		56,7	0	GS / GD / GK / NGS / NGD / NGK / NF	108	UCMSL.jpg	0	0
SANKYO	UCMSL900-40-(SPRING)	900.0	40.0	77.1	180.0	627,2		900	385	400		39200		49,9	0	GS / GD / GK / NGS / NGD / NGK / NF	108	UCMSL.jpg	0	0
SANKYO	UCMSL900-50-(SPRING)	900.0	50.0	93.3	180.0	627,2		900	385	430		39200		43,1	0	GS / GD / GK / NGS / NGD / NGK / NF	108	UCMSL.jpg	0	0
SANKYO	UCMSL900-60-(SPRING)	900.0	60.0	120.0	180.0	627,2		900	385	438,8		39200		44,7	0	GS / GD / GK / NGS / NGD / NGK / NF	108	UCMSL.jpg	0	0
SANKYO	UCMSL1000-00-(SPRING)	1000.0	0.0	38.6	180.0	627,2		1000	385	370		39200		63,9	0	GS / GD / GK / NGS / NGD / NGK / NF	119	UCMSL.jpg	0	0
SANKYO	UCMSL1000-10-(SPRING)	1000.0	10.0	46.7	180.0	627,2		1000	385	370		39200		63,4	0	GS / GD / GK / NGS / NGD / NGK / NF	119	UCMSL.jpg	0	0
SANKYO	UCMSL1000-20-(SPRING)	1000.0	20.0	55.3	180.0	627,2		1000	385	370		39200		62,9	0	GS / GD / GK / NGS / NGD / NGK / NF	119	UCMSL.jpg	0	0
SANKYO	UCMSL1000-30-(SPRING)	1000.0	30.0	65.1	180.0	627,2		1000	385	370		39200		56,5	0	GS / GD / GK / NGS / NGD / NGK / NF	119	UCMSL.jpg	0	0
SANKYO	UCMSL1000-40-(SPRING)	1000.0	40.0	77.1	180.0	627,2		1000	385	400		39200		49,5	0	GS / GD / GK / NGS / NGD / NGK / NF	119	UCMSL.jpg	0	0
SANKYO	UCMSL1000-50-(SPRING)	1000.0	50.0	93.3	180.0	627,2		1000	385	430		39200		42,5	0	GS / GD / GK / NGS / NGD / NGK / NF	119	UCMSL.jpg	0	0
SANKYO	UCMSL1000-60-(SPRING)	1000.0	60.0	120.0	180.0	627,2		1000	385	438,8		39200		43,1	0	GS / GD / GK / NGS / NGD / NGK / NF	119	UCMSL.jpg	0	0
SANKYO	UCMSNR70-00-(SPRING)	70.0	0.0	19.3	75.0	98,1		70	225	252		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	009	UCMSNR.jpg	0	0
SANKYO	UCMSNR70-05-(SPRING)	70.0	5.0	21.3	75.0	98,1		70	225	242		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	009	UCMSNR.jpg	0	0
SANKYO	UCMSNR70-10-(SPRING)	70.0	10.0	23.3	75.0	98,1		70	225	240		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	009	UCMSNR.jpg	0	0
SANKYO	UCMSNR70-15-(SPRING)	70.0	15.0	25.4	75.0	98,1		70	225	240		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	009	UCMSNR.jpg	0	0
SANKYO	UCMSNR70-20-(SPRING)	70.0	20.0	27.6	75.0	98,1		70	225	240		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	009	UCMSNR.jpg	0	0
SANKYO	UCMSNR70-25-(SPRING)	70.0	25.0	30.0	75.0	98,1		70	225	240		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	009	UCMSNR.jpg	0	0
SANKYO	UCMSNR70-30-(SPRING)	70.0	30.0	32.6	75.0	98,1		70	225	240		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	009	UCMSNR.jpg	0	0
SANKYO	UCMSNR70-35-(SPRING)	70.0	35.0	35.4	75.0	98,1		70	225	240		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	009	UCMSNR.jpg	0	0
SANKYO	UCMSNR70-40-(SPRING)	70.0	40.0	38.6	75.0	98,1		70	225	240		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	009	UCMSNR.jpg	0	0
SANKYO	UCMSNR70-45-(SPRING)	70.0	45.0	42.3	75.0	98,1		70	225	242		2350		3,6	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	009	UCMSNR.jpg	0	0
SANKYO	UCMSNR70-50-(SPRING)	70.0	50.0	46.7	75.0	98,1		70	225	261		2350		3,6	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	009	UCMSNR.jpg	0	0
SANKYO	UCMSNR70-55-(SPRING)	70.0	55.0	52.3	75.0	98,1		70	225	263		2350		4,1	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	009	UCMSNR.jpg	0	0
SANKYO	UCMSNR70-60-(SPRING)	70.0	60.0	60.0	75.0	98,1		70	225	275		2350		4,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	009	UCMSNR.jpg	0	0
SANKYO	UCMSNR80-00-(SPRING)	80.0	0.0	32.1	75.0	264,7		80	275	305		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	010	UCMSNR.jpg	0	0
SANKYO	UCMSNR80-05-(SPRING)	80.0	5.0	35.5	75.0	264,7		80	275	295		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	010	UCMSNR.jpg	0	0
SANKYO	UCMSNR80-10-(SPRING)	80.0	10.0	38.9	75.0	264,7		80	275	280		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	010	UCMSNR.jpg	0	0
SANKYO	UCMSNR80-15-(SPRING)	80.0	15.0	42.4	75.0	264,7		80	275	280,5		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	010	UCMSNR.jpg	0	0
SANKYO	UCMSNR80-20-(SPRING)	80.0	20.0	46.1	75.0	264,7		80	275	276,2		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	010	UCMSNR.jpg	0	0
SANKYO	UCMSNR80-25-(SPRING)	80.0	25.0	50.0	75.0	264,7		80	275	271,5		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	010	UCMSNR.jpg	0	0
SANKYO	UCMSNR80-30-(SPRING)	80.0	30.0	54.3	75.0	264,7		80	275	270		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	010	UCMSNR.jpg	0	0
SANKYO	UCMSNR80-35-(SPRING)	80.0	35.0	59.0	75.0	264,7		80	275	270		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	010	UCMSNR.jpg	0	0
SANKYO	UCMSNR80-40-(SPRING)	80.0	40.0	64.3	75.0	264,7		80	275	270		2350		3,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	010	UCMSNR.jpg	0	0
SANKYO	UCMSNR80-45-(SPRING)	80.0	45.0	70.4	75.0	264,7		80	275	270		2350		3,6	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	010	UCMSNR.jpg	0	0
SANKYO	UCMSNR80-50-(SPRING)	80.0	50.0	77.8	75.0	264,7		80	275	270		2350		3,6	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	010	UCMSNR.jpg	0	0
SANKYO	UCMSNR80-55-(SPRING)	80.0	55.0	87.2	75.0	264,7		80	275	270		2350		4,1	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	010	UCMSNR.jpg	0	0
SANKYO	UCMSNR80-60-(SPRING)	80.0	60.0	100.0	75.0	264,7		80	275	270		2350		4,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF	010	UCMSNR.jpg	0	0
SANKYO	UCMSNR165-00-(SPRING)	165.0	0.0	32.1	120.0	294,2		165	300	340		3430		5,6	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	020	UCMSNR.jpg	0	0
SANKYO	UCMSNR165-05-(SPRING)	165.0	5.0	35.5	120.0	294,2		165	300	340		3430		5,6	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	020	UCMSNR.jpg	0	0
SANKYO	UCMSNR165-10-(SPRING)	165.0	10.0	38.9	120.0	294,2		165	300	340		3430		5,5	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	020	UCMSNR.jpg	0	0
SANKYO	UCMSNR165-15-(SPRING)	165.0	15.0	42.4	120.0	294,2		165	300	340		3430		5,5	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	020	UCMSNR.jpg	0	0
SANKYO	UCMSNR165-20-(SPRING)	165.0	20.0	46.1	120.0	294,2		165	300	340		3430		5,5	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	020	UCMSNR.jpg	0	0
SANKYO	UCMSNR165-25-(SPRING)	165.0	25.0	50.0	120.0	294,2		165	300	340		3430		5,4	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	020	UCMSNR.jpg	0	0
SANKYO	UCMSNR165-30-(SPRING)	165.0	30.0	54.3	120.0	294,2		165	300	340		3430		5,4	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	020	UCMSNR.jpg	0	0
SANKYO	UCMSNR165-35-(SPRING)	165.0	35.0	59.0	120.0	294,2		165	300	340		3430		5,4	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	020	UCMSNR.jpg	0	0
SANKYO	UCMSNR165-40-(SPRING)	165.0	40.0	64.3	120.0	294,2		165	300	350		3430		5,3	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	020	UCMSNR.jpg	0	0
SANKYO	UCMSNR165-45-(SPRING)	165.0	45.0	70.4	120.0	294,2		165	300	365		3430		5,3	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	020	UCMSNR.jpg	0	0
SANKYO	UCMSNR165-50-(SPRING)	165.0	50.0	77.8	120.0	294,2		165	300	355		3430		5,3	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	020	UCMSNR.jpg	0	0
SANKYO	UCMSNR165-55-(SPRING)	165.0	55.0	87.2	125.0	294,2		165	300	372		3430		5,9	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	020	UCMSNR.jpg	0	0
SANKYO	UCMSNR165-60-(SPRING)	165.0	60.0	100.0	125.0	294,2		165	300	385		3430		6,8	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	020	UCMSNR.jpg	0	0
SANKYO	UCMSNR200-00-(SPRING)	200.0	0.0	32.1	120.0	353		200	300	340		6125		9,9	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	024	UCMSNR.jpg	0	0
SANKYO	UCMSNR200-05-(SPRING)	200.0	5.0	35.5	120.0	353		200	300	340		6125		9,8	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	024	UCMSNR.jpg	0	0
SANKYO	UCMSNR200-10-(SPRING)	200.0	10.0	38.9	120.0	353		200	300	340		6125		9,8	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	024	UCMSNR.jpg	0	0
SANKYO	UCMSNR200-15-(SPRING)	200.0	15.0	42.4	120.0	353		200	300	340		6125		9,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	024	UCMSNR.jpg	0	0
SANKYO	UCMSNR200-20-(SPRING)	200.0	20.0	46.1	120.0	353		200	300	340		6125		9,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	024	UCMSNR.jpg	0	0
SANKYO	UCMSNR200-25-(SPRING)	200.0	25.0	50.0	120.0	353		200	300	340		6125		9,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	024	UCMSNR.jpg	0	0
SANKYO	UCMSNR200-30-(SPRING)	200.0	30.0	54.3	120.0	353		200	300	340		6125		9,6	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	024	UCMSNR.jpg	0	0
SANKYO	UCMSNR200-35-(SPRING)	200.0	35.0	59.0	120.0	353		200	300	340		6125		9,6	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	024	UCMSNR.jpg	0	0
SANKYO	UCMSNR200-40-(SPRING)	200.0	40.0	64.3	120.0	353		200	300	350		6125		9,5	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	024	UCMSNR.jpg	0	0
SANKYO	UCMSNR200-45-(SPRING)	200.0	45.0	70.4	120.0	353		200	300	365		6125		9,5	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	024	UCMSNR.jpg	0	0
SANKYO	UCMSNR200-50-(SPRING)	200.0	50.0	77.8	120.0	353		200	300	355		6125		9,4	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	024	UCMSNR.jpg	0	0
SANKYO	UCMSNR200-55-(SPRING)	200.0	55.0	87.2	120.0	353		200	300	372		6125		10,6	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	024	UCMSNR.jpg	0	0
SANKYO	UCMSNR200-60-(SPRING)	200.0	60.0	100.0	120.0	353		200	300	385		6125		12,1	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	024	UCMSNR.jpg	0	0
SANKYO	UCMSNR300-00-(SPRING)	300.0	0.0	38.6	160.0	451,1		300	375	328		10668		17,1	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	033	UCMSNR.jpg	0	0
SANKYO	UCMSNR300-05-(SPRING)	300.0	5.0	42.6	160.0	451,1		300	375	320		10668		17,1	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	033	UCMSNR.jpg	0	0
SANKYO	UCMSNR300-10-(SPRING)	300.0	10.0	46.7	160.0	451,1		300	375	324,1		10668		17	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	033	UCMSNR.jpg	0	0
SANKYO	UCMSNR300-15-(SPRING)	300.0	15.0	50.9	160.0	451,1		300	375	325,8		10668		17	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	033	UCMSNR.jpg	0	0
SANKYO	UCMSNR300-20-(SPRING)	300.0	20.0	55.3	160.0	451,1		300	375	327,1		10668		16,9	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	033	UCMSNR.jpg	0	0
SANKYO	UCMSNR300-25-(SPRING)	300.0	25.0	60.0	160.0	451,1		300	375	334,7		10668		16,8	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	033	UCMSNR.jpg	0	0
SANKYO	UCMSNR300-30-(SPRING)	300.0	30.0	65.1	160.0	451,1		300	375	327,8		10668		16,8	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	033	UCMSNR.jpg	0	0
SANKYO	UCMSNR300-35-(SPRING)	300.0	35.0	70.8	160.0	451,1		300	375	334,5		10668		16,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	033	UCMSNR.jpg	0	0
SANKYO	UCMSNR300-40-(SPRING)	300.0	40.0	77.1	160.0	451,1		300	375	330,5		10668		16,6	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	033	UCMSNR.jpg	0	0
SANKYO	UCMSNR300-45-(SPRING)	300.0	45.0	84.5	160.0	451,1		300	375	347,8		10668		16,5	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	033	UCMSNR.jpg	0	0
SANKYO	UCMSNR300-50-(SPRING)	300.0	50.0	79.3	160.0	451,1		300	375	355		10668		16,5	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	033	UCMSNR.jpg	0	0
SANKYO	UCMSNR300-55-(SPRING)	300.0	55.0	88.9	160.0	451,1		300	375	405		10668		18,4	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	033	UCMSNR.jpg	0	0
SANKYO	UCMSNR300-60-(SPRING)	300.0	60.0	102.0	160.0	451,1		300	375	405		10668		21,1	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	033	UCMSNR.jpg	0	0
SANKYO	UCMSNR400-00-(SPRING)	400.0	0.0	38.6	160.0	451,1		400	375	328		10668		17,2	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	037	UCMSNR.jpg	0	0
SANKYO	UCMSNR400-05-(SPRING)	400.0	5.0	42.6	160.0	451,1		400	375	320		10668		17,1	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	037	UCMSNR.jpg	0	0
SANKYO	UCMSNR400-10-(SPRING)	400.0	10.0	46.7	160.0	451,1		400	375	324,1		10668		17,1	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	037	UCMSNR.jpg	0	0
SANKYO	UCMSNR400-15-(SPRING)	400.0	15.0	50.9	160.0	451,1		400	375	325,8		10668		17	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	037	UCMSNR.jpg	0	0
SANKYO	UCMSNR400-20-(SPRING)	400.0	20.0	55.3	160.0	451,1		400	375	327,1		10668		16,9	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	037	UCMSNR.jpg	0	0
SANKYO	UCMSNR400-25-(SPRING)	400.0	25.0	60.0	160.0	451,1		400	375	334,7		10668		16,9	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	037	UCMSNR.jpg	0	0
SANKYO	UCMSNR400-30-(SPRING)	400.0	30.0	65.1	160.0	451,1		400	375	327,8		10668		16,8	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	037	UCMSNR.jpg	0	0
SANKYO	UCMSNR400-35-(SPRING)	400.0	35.0	70.8	160.0	451,1		400	375	334,5		10668		16,7	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	037	UCMSNR.jpg	0	0
SANKYO	UCMSNR400-40-(SPRING)	400.0	40.0	77.1	160.0	451,1		400	375	330,5		10668		16,6	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	037	UCMSNR.jpg	0	0
SANKYO	UCMSNR400-45-(SPRING)	400.0	45.0	84.5	160.0	451,1		400	375	347,8		10668		16,5	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	037	UCMSNR.jpg	0	0
SANKYO	UCMSNR400-50-(SPRING)	400.0	50.0	79.3	160.0	451,1		400	375	355		10668		16,4	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	037	UCMSNR.jpg	0	0
SANKYO	UCMSNR400-55-(SPRING)	400.0	55.0	88.9	160.0	451,1		400	375	405		10668		18,4	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	037	UCMSNR.jpg	0	0
SANKYO	UCMSNR400-60-(SPRING)	400.0	60.0	102.0	160.0	451,1		400	375	405		10668		21,1	0	ISO / GS / GD / GK / NGS / NGD / NGK / NISO / NF / N	037	UCMSNR.jpg	0	0
SANKYO	CMSD52-00-55	52.0	0.0	55.0	75.0	19,6	39,2	52	215	235	608			0	0	SC / WC / K	006	CMSD.jpg	0	0
SANKYO	CMSD52-05-55	52.0	5.0	55.0	75.0	19,6	39,2	52	255	310	608			0	0	SC / WC / K	006	CMSD.jpg	0	0
SANKYO	CMSD52-10-55	52.0	10.0	55.0	75.0	19,6	39,2	52	255	310	608			0	0	SC / WC / K	006	CMSD.jpg	0	0
SANKYO	CMSD52-15-55	52.0	15.0	55.0	75.0	19,6	39,2	52	255	310	608			0	0	SC / WC / K	006	CMSD.jpg	0	0
SANKYO	CMSD52-20-55	52.0	20.0	55.0	75.0	19,6	39,2	52	255	310	608			0	0	SC / WC / K	006	CMSD.jpg	0	0
SANKYO	CMSD52-00-55-WC	100.0	0.0	55.0	86.0	19,6	39,2	52	215	235	608			0	0	SC / WC / K	006	CMSD.jpg	0	0
SANKYO	CMSD52-05-55-WC	100.0	5.0	55.0	86.0	19,6	39,2	52	255	310	608			0	0	SC / WC / K	006	CMSD.jpg	0	0
SANKYO	CMSD52-10-55-WC	100.0	10.0	55.0	86.0	19,6	39,2	52	255	310	608			0	0	SC / WC / K	006	CMSD.jpg	0	0
SANKYO	CMSD52-15-55-WC	100.0	15.0	55.0	86.0	19,6	39,2	52	255	310	608			0	0	SC / WC / K	006	CMSD.jpg	0	0
SANKYO	CMSD52-20-55-WC	100.0	20.0	55.0	86.0	19,6	39,2	52	255	310	608			0	0	SC / WC / K	006	CMSD.jpg	0	0
SANKYO	CMSD90-00-55	90.0	0.0	55.0	82.0	38,2	76,4	90	220	236	1217,3			0	0	WC120 / WC150 / K	009	CMSD.jpg	0	0
SANKYO	CMSD90-05-55	90.0	5.0	55.0	82.0	38,2	76,4	90	220	251,4	1217,3			0	0	WC120 / WC150 / K	009	CMSD.jpg	0	0
SANKYO	CMSD90-10-55	90.0	10.0	55.0	82.0	38,2	76,4	90	220	261,7	1217,3			0	0	WC120 / WC150 / K	009	CMSD.jpg	0	0
SANKYO	CMSD90-00-55-WC120	120.0	0.0	55.0	82.0	38,2	76,4	90	220	236	1217,3			0	0	WC120 / WC150 / K	009	CMSD.jpg	0	0
SANKYO	CMSD90-05-55-WC120	120.0	5.0	55.0	82.0	38,2	76,4	90	220	251,4	1217,3			0	0	WC120 / WC150 / K	009	CMSD.jpg	0	0
SANKYO	CMSD90-10-55-WC120	120.0	10.0	55.0	82.0	38,2	76,4	90	220	261,7	1217,3			0	0	WC120 / WC150 / K	009	CMSD.jpg	0	0
SANKYO	CMSD90-00-55-WC150	150.0	0.0	55.0	82.0	38,2	76,4	90	220	236	1217,3			0	0	WC120 / WC150 / K	009	CMSD.jpg	0	0
SANKYO	CMSD90-05-55-WC150	150.0	5.0	55.0	82.0	38,2	76,4	90	220	251,4	1217,3			0	0	WC120 / WC150 / K	009	CMSD.jpg	0	0
SANKYO	CMSD90-10-55-WC150	150.0	10.0	55.0	82.0	38,2	76,4	90	220	261,7	1217,3			0	0	WC120 / WC150 / K	009	CMSD.jpg	0	0
SANKYO	SKC(A)52-00-25	52.0	0.0	25.0	65.0	14,7	29,4	98	140	140	594			0	0		003	SKC.jpg	0	0
SANKYO	SKC(A)52-00-40	52.0	0.0	40.0	65.0	14,7	29,4	98	140	155	604,8			0	0		003	SKC.jpg	0	0
SANKYO	SKC(A)52-00-60	52.0	0.0	60.0	65.0	14,7	29,4	98	140	200	613,2			0	0		003	SKC.jpg	0	0
SANKYO	SKC(A)65-00-40	65.0	0.0	40.0	70.0	19,6	39,2	130	160	167	748,8			0	0		007	SKC.jpg	0	0
SANKYO	SKC(A)65-00-60	65.0	0.0	60.0	70.0	19,6	39,2	130	160	212	759,2			0	0		007	SKC.jpg	0	0
SANKYO	SKC(A)65-05-45	65.0	5.0	45.0	70.0	19,6	39,2	130	160	175,6	743,4			0	0		007	SKC.jpg	0	0
SANKYO	SKC(A)65-05-70	65.0	5.0	70.0	70.0	19,6	39,2	130	170	220,4	974,4			0	0		007	SKC.jpg	0	0
SANKYO	SKC(A)65-10-45	65.0	10.0	45.0	70.0	19,6	39,2	130	160	180	743,4			0	0		007	SKC.jpg	0	0
SANKYO	SKC(A)65-10-70	65.0	10.0	70.0	70.0	19,6	39,2	130	170	224,3	974,4			0	0		007	SKC.jpg	0	0
SANKYO	SKC(A)65-15-45	65.0	15.0	45.0	70.0	19,6	39,2	130	170	183,2	743,4			0	0		007	SKC.jpg	0	0
SANKYO	SKC(A)65-15-70	65.0	15.0	70.0	70.0	19,6	39,2	130	170	226,6	974,4			0	0		007	SKC.jpg	0	0
SANKYO	SKC(A)65-20-45	65.0	20.0	45.0	70.0	19,6	39,2	130	170	185,2	743,4			0	0		007	SKC.jpg	0	0
SANKYO	SKC(A)65-20-70	65.0	20.0	70.0	70.0	19,6	39,2	130	170	227,5	974,4			0	0		007	SKC.jpg	0	0
SANKYO	SKC(A)100-00-40	100.0	0.0	40.0	100.0	29,4	58,8	175	200	218	1132,8			0	0	N12	011	SKC.jpg	0	0
SANKYO	SKC(A)100-00-60	100.0	0.0	60.0	100.0	29,4	58,8	175	200	238	1138,8			0	0	N12	011	SKC.jpg	0	0
SANKYO	SKC(A)100-00-80	100.0	0.0	80.0	100.0	29,4	58,8	175	200	277	1306,4			0	0	N12	011	SKC.jpg	0	0
SANKYO	SKC(A)100-05-45	100.0	5.0	45.0	90.0	39,2	78,4	175	200	199,2	1109,2			0	0	N12	011	SKC.jpg	0	0
SANKYO	SKC(A)100-05-70	100.0	5.0	70.0	90.0	39,2	78,4	175	200	234,1	1149,2			0	0	N12	011	SKC.jpg	0	0
SANKYO	SKC(A)100-10-45	100.0	10.0	45.0	90.0	39,2	78,4	175	200	205,1	1109,2			0	0	N12	011	SKC.jpg	0	0
SANKYO	SKC(A)100-10-70	100.0	10.0	70.0	90.0	39,2	78,4	175	200	239,6	1149,2			0	0	N12	011	SKC.jpg	0	0
SANKYO	SKC(A)100-15-45	100.0	15.0	45.0	90.0	39,2	78,4	175	200	209,7	1109,2			0	0	N12	011	SKC.jpg	0	0
SANKYO	SKC(A)100-15-70	100.0	15.0	70.0	90.0	39,2	78,4	175	200	243,5	1149,2			0	0	N12	011	SKC.jpg	0	0
SANKYO	SKC(A)100-20-45	100.0	20.0	45.0	90.0	39,2	78,4	175	200	212,8	1109,2			0	0	N12	011	SKC.jpg	0	0
SANKYO	SKC(A)100-20-70	100.0	20.0	70.0	90.0	39,2	78,4	175	200	245,7	1149,2			0	0	N12	011	SKC.jpg	0	0
SANKYO	SKC(A)150-00-40	150.0	0.0	40.0	100.0	58,8	88,2	260	220	225	1843,2			0	0		015	SKC.jpg	0	0
SANKYO	SKC(A)150-00-60	150.0	0.0	60.0	100.0	58,8	88,2	260	220	245	1854,2			0	0		015	SKC.jpg	0	0
SANKYO	SKC(A)150-05-45	150.0	5.0	45.0	100.0	64,7	98	260	220	229	1805,4			0	0		015	SKC.jpg	0	0
SANKYO	SKC(A)150-05-70	150.0	5.0	70.0	100.0	64,7	98	260	220	253,9	1848			0	0		015	SKC.jpg	0	0
SANKYO	SKC(A)150-10-45	150.0	10.0	45.0	100.0	64,7	98	260	220	235,6	1805,4			0	0		015	SKC.jpg	0	0
SANKYO	SKC(A)150-10-70	150.0	10.0	70.0	100.0	64,7	98	260	220	260,2	1848			0	0		015	SKC.jpg	0	0
SANKYO	SKC(A)150-15-45	150.0	15.0	45.0	100.0	64,7	98	260	220	240,6	1805,4			0	0		015	SKC.jpg	0	0
SANKYO	SKC(A)150-15-70	150.0	15.0	70.0	100.0	64,7	98	260	230	264,7	1848			0	0		015	SKC.jpg	0	0
SANKYO	SKC(A)150-20-45	150.0	20.0	45.0	100.0	64,7	98	260	220	244	1805,4			0	0		015	SKC.jpg	0	0
SANKYO	SKC(A)150-20-70	150.0	20.0	70.0	100.0	64,7	98	260	230	267,5	1848			0	0		015	SKC.jpg	0	0
SANKYO	SKC(A)200-00-40	200.0	0.0	40.0	110.0	78,4	117,6	310	240	236	2764,8			0	0		017	SKC.jpg	0	0
SANKYO	SKC(A)200-00-60	200.0	0.0	60.0	110.0	78,4	117,6	310	240	256	2781,3			0	0		017	SKC.jpg	0	0
SANKYO	SKC(A)250-00-40	250.0	0.0	40.0	130.0	98	147	360	270	246				0	0		019	SKC.jpg	0	0
SANKYO	SKC(A)250-00-60	250.0	0.0	60.0	130.0	98	147	360	270	266	3657,3			0	0		019	SKC.jpg	0	0
SANKYO	SKC(A)300-00-40	300.0	0.0	40.0	130.0	117,6	176,4	410	270	246	3614,4			0	0		021	SKC.jpg	0	0
SANKYO	SKC(A)300-00-60	300.0	0.0	60.0	130.0	117,6	176,4	410	270	266	3657,3			0	0		021	SKC.jpg	0	0
SANKYO	SKC(A)400-00-60	400.0	0.0	60.0	150.0	137,2	205,8	525	250	356	9349,6			0	0	K	032	SKC.jpg	0	0
SANKYO	SKC(A)500-00-60	500.0	0.0	60.0	150.0	137,2	205,8	625	250	361	9349,6			0	0	K	038	SKC.jpg	0	0
SANKYO	SKC(A)600-00-60	600.0	0.0	60.0	150.0	137,2	205,8	725	250	361	9349,6			0	0	K	045	SKC.jpg	0	0
SANKYO	KGSP50-00	50.0	0.0	60.0	68.0	14,7		50	240	255	591,5			0	0	K / KA / S	009	KGSP.jpg	0	0
SANKYO	KGSP50-05	50.0	5.0	60.0	68.0	14,7		50	240	290	591,5			0	0	K / KA / S	009	KGSP.jpg	0	0
SANKYO	KGSP50-10	50.0	10.0	60.0	68.0	14,7		50	240	290	591,5			0	0	K / KA / S	009	KGSP.jpg	0	0
SANKYO	KGSP50-15	50.0	15.0	60.0	68.0	14,7		50	240	298	591,5			0	0	K / KA / S	009	KGSP.jpg	0	0
SANKYO	KGSP50-20	50.0	20.0	60.0	68.0	14,7		50	240	308,3	591,5			0	0	K / KA / S	009	KGSP.jpg	0	0
SANKYO	KGSP50-25	50.0	25.0	60.0	68.0	14,7		50	240	308,1	591,5			0	0	K / KA / S	009	KGSP.jpg	0	0
SANKYO	KGSP50-30	50.0	30.0	60.0	68.0	14,7		50	240	312,3	591,5			0	0	K / KA / S	009	KGSP.jpg	0	0
SANKYO	KGSP80-00	80.0	0.0	60.0	88.0	35,3		80	265	310	1339,6			0	0	K / KA / N13 / S	011	KGSP.jpg	0	0
SANKYO	KGSP80-05	80.0	5.0	60.0	88.0	35,3		80	265	310	1339,6			0	0	K / KA / N13 / S	011	KGSP.jpg	0	0
SANKYO	KGSP80-10	80.0	10.0	60.0	88.0	35,3		80	265	310	1339,6			0	0	K / KA / N13 / S	011	KGSP.jpg	0	0
SANKYO	KGSP80-15	80.0	15.0	60.0	88.0	35,3		80	265	312,6	1339,6			0	0	K / KA / N13 / S	011	KGSP.jpg	0	0
SANKYO	KGSP80-20	80.0	20.0	60.0	88.0	35,3		80	265	321,5	1339,6			0	0	K / KA / N13 / S	011	KGSP.jpg	0	0
SANKYO	KGSP80-25	80.0	25.0	60.0	88.0	35,3		80	265	329,8	1339,6			0	0	K / KA / N13 / S	011	KGSP.jpg	0	0
SANKYO	KGSP80-30	80.0	30.0	60.0	88.0	35,3		80	265	332,3	1339,6			0	0	K / KA / N13 / S	011	KGSP.jpg	0	0
SANKYO	KGSP150-00	150.0	0.0	60.0	120.0	117,6		290	300	365	3746,8			0	0	K / KA / N / S	030	KGSP.jpg	0	0
SANKYO	KGSP150-05	150.0	5.0	60.0	120.0	117,6		290	300	378,5	3746,8			0	0	K / KA / N / S	030	KGSP.jpg	0	0
SANKYO	KGSP150-10	150.0	10.0	60.0	120.0	117,6		290	310	385	3746,8			0	0	K / KA / N / S	030	KGSP.jpg	0	0
SANKYO	KGSP150-15	150.0	15.0	60.0	120.0	117,6		290	310	394,5	3746,8			0	0	K / KA / N / S	030	KGSP.jpg	0	0
SANKYO	KGSP150-20	150.0	20.0	60.0	120.0	117,6		290	335	397	3746,8			0	0	K / KA / N / S	030	KGSP.jpg	0	0
SANKYO	KGSP150-25	150.0	25.0	60.0	120.0	117,6		290	345	397,2	3746,8			0	0	K / KA / N / S	030	KGSP.jpg	0	0
SANKYO	KGSP150-30	150.0	30.0	60.0	120.0	117,6		290	360	400,4	3746,8			0	0	K / KA / N / S	030	KGSP.jpg	0	0
SANKYO	KGSP200-00	200.0	0.0	60.0	120.0	147		320	300	365	3746,8			0	0	K / KA / N / S	036	KGSP.jpg	0	0
SANKYO	KGSP200-05	200.0	5.0	60.0	120.0	147		320	300	378,5	3746,8			0	0	K / KA / N / S	036	KGSP.jpg	0	0
SANKYO	KGSP200-10	200.0	10.0	60.0	120.0	147		320	310	385	3746,8			0	0	K / KA / N / S	036	KGSP.jpg	0	0
SANKYO	KGSP200-15	200.0	15.0	60.0	120.0	147		320	310	394,5	3746,8			0	0	K / KA / N / S	036	KGSP.jpg	0	0
SANKYO	KGSP200-20	200.0	20.0	60.0	120.0	147		320	335	397	3746,8			0	0	K / KA / N / S	036	KGSP.jpg	0	0
SANKYO	KGSP200-25	200.0	25.0	60.0	120.0	147		320	345	397,2	3746,8			0	0	K / KA / N / S	036	KGSP.jpg	0	0
SANKYO	KGSP200-30	200.0	30.0	60.0	120.0	147		320	360	400,3	3746,8			0	0	K / KA / N / S	036	KGSP.jpg	0	0
SANKYO	KGSP300-00	300.0	0.0	60.0	120.0	294		410	335	420	7493,6			0	0	K / KA / N / S	054	KGSP.jpg	0	0
SANKYO	KGSP300-05	300.0	5.0	60.0	120.0	294		410	335	431,8	7493,6			0	0	K / KA / N / S	054	KGSP.jpg	0	0
SANKYO	KGSP300-10	300.0	10.0	60.0	120.0	294		410	355	442,6	7493,6			0	0	K / KA / N / S	054	KGSP.jpg	0	0
SANKYO	KGSP300-15	300.0	15.0	60.0	120.0	294		410	355	449,6	7493,6			0	0	K / KA / N / S	054	KGSP.jpg	0	0
SANKYO	KGSP300-20	300.0	20.0	60.0	120.0	294		410	375	454,2	7493,6			0	0	K / KA / N / S	054	KGSP.jpg	0	0
SANKYO	KGSP300-25	300.0	25.0	60.0	120.0	294		410	385	461,1	7493,6			0	0	K / KA / N / S	054	KGSP.jpg	0	0
SANKYO	KGSP300-30	300.0	30.0	60.0	120.0	294		410	405	465,5	7493,6			0	0	K / KA / N / S	054	KGSP.jpg	0	0
SANKYO	KCMSL500-00-(SPRING)	500.0	0.0	60.0	180.0	313,6		500	385	350		19600		0	0	GS / GD / GK / NGS / NGD / NGK / NF	063	KCMSL.jpg	0	0
SANKYO	KCMSL500-05-(SPRING)	500.0	5.0	60.0	180.0	313,6		500	385	368,2		19600		0	0	GS / GD / GK / NGS / NGD / NGK / NF	063	KCMSL.jpg	0	0
SANKYO	KCMSL500-10-(SPRING)	500.0	10.0	60.0	180.0	313,6		500	385	384,9		19600		0	0	GS / GD / GK / NGS / NGD / NGK / NF	063	KCMSL.jpg	0	0
SANKYO	KCMSL500-15-(SPRING)	500.0	15.0	60.0	180.0	313,6		500	385	400,2		19600		0	0	GS / GD / GK / NGS / NGD / NGK / NF	063	KCMSL.jpg	0	0
SANKYO	KCMSL500-20-(SPRING)	500.0	20.0	60.0	180.0	313,6		500	385	413,9		19600		0	0	GS / GD / GK / NGS / NGD / NGK / NF	063	KCMSL.jpg	0	0
SANKYO	KCMSL600-00-(SPRING)	600.0	0.0	60.0	180.0	313,6		600	385	350		19600		0	0	GS / GD / GK / NGS / NGD / NGK / NF	073	KCMSL.jpg	0	0
SANKYO	KCMSL600-05-(SPRING)	600.0	5.0	60.0	180.0	313,6		600	385	368,2		19600		0	0	GS / GD / GK / NGS / NGD / NGK / NF	073	KCMSL.jpg	0	0
SANKYO	KCMSL600-10-(SPRING)	600.0	10.0	60.0	180.0	313,6		600	385	384,9		19600		0	0	GS / GD / GK / NGS / NGD / NGK / NF	073	KCMSL.jpg	0	0
SANKYO	KCMSL600-15-(SPRING)	600.0	15.0	60.0	180.0	313,6		600	385	400,2		19600		0	0	GS / GD / GK / NGS / NGD / NGK / NF	073	KCMSL.jpg	0	0
SANKYO	KCMSL600-20-(SPRING)	600.0	20.0	60.0	180.0	313,6		600	385	413,9		19600		0	0	GS / GD / GK / NGS / NGD / NGK / NF	073	KCMSL.jpg	0	0
SANKYO	KCMSL700-00-(SPRING)	700.0	0.0	60.0	180.0	470,4		700	385	350		29400		0	0	GS / GD / GK / NGS / NGD / NGK / NF	088	KCMSL.jpg	0	0
SANKYO	KCMSL700-05-(SPRING)	700.0	5.0	60.0	180.0	470,4		700	385	368,2		29400		0	0	GS / GD / GK / NGS / NGD / NGK / NF	088	KCMSL.jpg	0	0
SANKYO	KCMSL700-10-(SPRING)	700.0	10.0	60.0	180.0	470,4		700	385	384,9		29400		0	0	GS / GD / GK / NGS / NGD / NGK / NF	088	KCMSL.jpg	0	0
SANKYO	KCMSL700-15-(SPRING)	700.0	15.0	60.0	180.0	470,4		700	385	400,2		29400		0	0	GS / GD / GK / NGS / NGD / NGK / NF	088	KCMSL.jpg	0	0
SANKYO	KCMSL700-20-(SPRING)	700.0	20.0	60.0	180.0	470,4		700	385	413,9		29400		0	0	GS / GD / GK / NGS / NGD / NGK / NF	088	KCMSL.jpg	0	0
SANKYO	KCMSL800-00-(SPRING)	800.0	0.0	60.0	180.0	470,4		800	385	350		29400		0	0	GS / GD / GK / NGS / NGD / NGK / NF	098	KCMSL.jpg	0	0
SANKYO	KCMSL800-05-(SPRING)	800.0	5.0	60.0	180.0	470,4		800	385	368,2		29400		0	0	GS / GD / GK / NGS / NGD / NGK / NF	098	KCMSL.jpg	0	0
SANKYO	KCMSL800-10-(SPRING)	800.0	10.0	60.0	180.0	470,4		800	385	384,9		29400		0	0	GS / GD / GK / NGS / NGD / NGK / NF	098	KCMSL.jpg	0	0
SANKYO	KCMSL800-15-(SPRING)	800.0	15.0	60.0	180.0	470,4		800	385	400,2		29400		0	0	GS / GD / GK / NGS / NGD / NGK / NF	098	KCMSL.jpg	0	0
SANKYO	KCMSL800-20-(SPRING)	800.0	20.0	60.0	180.0	470,4		800	385	413,9		29400		0	0	GS / GD / GK / NGS / NGD / NGK / NF	098	KCMSL.jpg	0	0
SANKYO	KCMSL900-00-(SPRING)	900.0	0.0	60.0	180.0	627,2		900	385	350		39200		0	0	GS / GD / GK / NGS / NGD / NGK / NF	114	KCMSL.jpg	0	0
SANKYO	KCMSL900-05-(SPRING)	900.0	5.0	60.0	180.0	627,2		900	385	368,2		39200		0	0	GS / GD / GK / NGS / NGD / NGK / NF	114	KCMSL.jpg	0	0
SANKYO	KCMSL900-10-(SPRING)	900.0	10.0	60.0	180.0	627,2		900	385	384,9		39200		0	0	GS / GD / GK / NGS / NGD / NGK / NF	114	KCMSL.jpg	0	0
SANKYO	KCMSL900-15-(SPRING)	900.0	15.0	60.0	180.0	627,2		900	385	400,2		39200		0	0	GS / GD / GK / NGS / NGD / NGK / NF	114	KCMSL.jpg	0	0
SANKYO	KCMSL900-20-(SPRING)	900.0	20.0	60.0	180.0	627,2		900	385	413,9		39200		0	0	GS / GD / GK / NGS / NGD / NGK / NF	114	KCMSL.jpg	0	0
SANKYO	KCMSL1000-00-(SPRING)	1000.0	0.0	60.0	180.0	627,2		1000	385	350		39200		0	0	GS / GD / GK / NGS / NGD / NGK / NF	124	KCMSL.jpg	0	0
SANKYO	KCMSL1000-05-(SPRING)	1000.0	5.0	60.0	180.0	627,2		1000	385	368,2		39200		0	0	GS / GD / GK / NGS / NGD / NGK / NF	124	KCMSL.jpg	0	0
SANKYO	KCMSL1000-10-(SPRING)	1000.0	10.0	60.0	180.0	627,2		1000	385	384,9		39200		0	0	GS / GD / GK / NGS / NGD / NGK / NF	124	KCMSL.jpg	0	0
SANKYO	KCMSL1000-15-(SPRING)	1000.0	15.0	60.0	180.0	627,2		1000	385	400,2		39200		0	0	GS / GD / GK / NGS / NGD / NGK / NF	124	KCMSL.jpg	0	0
SANKYO	KCMSL1000-20-(SPRING)	1000.0	20.0	60.0	180.0	627,2		1000	385	413,9		39200		0	0	GS / GD / GK / NGS / NGD / NGK / NF	124	KCMSL.jpg	0	0
SANKYO	UCMSV60-00-(SPRING)	60.0	0.0	19.3	100.0	75		60	225	277		1350	3010	2	4,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	4,3	4,3
SANKYO	UCMSV60-05-(SPRING)	60.0	5.0	21.3	100.0	75		60	225	277		1350	3010	2	4,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	4,3	4,3
SANKYO	UCMSV60-10-(SPRING)	60.0	10.0	23.3	100.0	75		60	225	277		1350	3010	2	4,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	4,3	4,3
SANKYO	UCMSV60-15-(SPRING)	60.0	15.0	25.4	100.0	75		60	225	277		1350	3010	2	4,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	4,3	4,3
SANKYO	UCMSV60-20-(SPRING)	60.0	20.0	27.6	100.0	75		60	225	277		1350	3010	2	4,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	4,3	4,3
SANKYO	UCMSV60-25-(SPRING)	60.0	25.0	30.0	100.0	75		60	225	277		1350	3010	2	4,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	4,3	4,3
SANKYO	UCMSV60-30-(SPRING)	60.0	30.0	32.6	100.0	75		60	225	277		1350	3010	2	4,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	4,3	4,3
SANKYO	UCMSV60-35-(SPRING)	60.0	35.0	35.4	100.0	75		60	225	277		1350	3010	2	4,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	4,3	4,3
SANKYO	UCMSV60-40-(SPRING)	60.0	40.0	38.6	100.0	75		60	225	277		1350	3010	2	4,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	4,3	4,3
SANKYO	UCMSV60-45-(SPRING)	60.0	45.0	42.3	100.0	75		60	225	277		1350	3010	1,9	4,2	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	4,2	4,2
SANKYO	UCMSV60-50-(SPRING)	60.0	50.0	46.7	100.0	75		60	225	277		1350	3010	1,9	4,2	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	4,2	4,2
SANKYO	UCMSV60-55-(SPRING)	60.0	55.0	52.63	100.0	75		60	225	277		1350	3010	2,2	4,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	4,7	4,7
SANKYO	UCMSV60-60-(SPRING)	60.0	60.0	60.0	100.0	75		60	225	277		1350	3010	2,5	5,4	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	5,4	5,4
SANKYO	UCMSV60-65-(SPRING)	60.0	65.0	71.0	100.0	75		60	225	277		1350	3010	2,9	6,4	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	6,4	6,4
SANKYO	UCMSV60-70-(SPRING)	60.0	70.0	58.5	100.0	75		60	225	277		1350	3010	3,6	8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	8	8
SANKYO	UCMSV60-75-(SPRING)	60.0	75.0	77.3	100.0	75		60	225	277		1350	3010	4,8	10,6	GS / GD / GK / NGS / NGD / NGK / NF / K / V	016	UCMSV.jpg	10,6	10,6
SANKYO	UCMSV85-00-(SPRING)	85.0	0.0	19.3	124.0	100		85	225	277		3220	6210	4,7	8,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	8,8	8,8
SANKYO	UCMSV85-05-(SPRING)	85.0	5.0	21.3	124.0	100		85	225	277		3220	6210	4,7	8,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	8,8	8,8
SANKYO	UCMSV85-10-(SPRING)	85.0	10.0	23.3	124.0	100		85	225	277		3220	6210	4,7	8,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	8,8	8,8
SANKYO	UCMSV85-15-(SPRING)	85.0	15.0	25.4	124.0	100		85	225	277		3220	6210	4,7	8,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	8,7	8,7
SANKYO	UCMSV85-20-(SPRING)	85.0	20.0	27.6	124.0	100		85	225	277		3220	6210	4,7	8,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	8,7	8,7
SANKYO	UCMSV85-25-(SPRING)	85.0	25.0	30.0	124.0	100		85	225	277		3220	6210	4,7	8,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	8,7	8,7
SANKYO	UCMSV85-30-(SPRING)	85.0	30.0	32.6	124.0	100		85	225	277		3220	6210	4,6	8,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	8,7	8,7
SANKYO	UCMSV85-35-(SPRING)	85.0	35.0	35.4	124.0	100		85	225	277		3220	6210	4,6	8,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	8,7	8,7
SANKYO	UCMSV85-40-(SPRING)	85.0	40.0	38.6	124.0	100		85	225	277		3220	6210	4,6	8,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	8,7	8,7
SANKYO	UCMSV85-45-(SPRING)	85.0	45.0	42.3	124.0	100		85	225	277		3220	6210	4,6	8,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	8,7	8,7
SANKYO	UCMSV85-50-(SPRING)	85.0	50.0	46.7	124.0	100		85	225	277		3220	6210	4,6	8,6	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	8,6	8,6
SANKYO	UCMSV85-55-(SPRING)	85.0	55.0	52.3	124.0	100		85	225	277		3220	6210	5,1	9,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	9,7	9,7
SANKYO	UCMSV85-60-(SPRING)	85.0	60.0	60.0	124.0	100		85	225	277		3220	6210	5,9	11,1	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	11,1	11,1
SANKYO	UCMSV85-65-(SPRING)	85.0	65.0	71.0	124.0	100		85	225	277		3220	6210	7	13,1	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	13,1	13,1
SANKYO	UCMSV85-70-(SPRING)	85.0	70.0	58.5	124.0	100		85	225	277		3220	6210	8,6	16,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	16,3	16,3
SANKYO	UCMSV85-75-(SPRING)	85.0	75.0	77.3	124.0	100		85	225	277		3220	6210	11,4	21,6	GS / GD / GK / NGS / NGD / NGK / NF / K / V	018	UCMSV.jpg	21,6	21,6
SANKYO	UCMSV110-00-(SPRING)	110.0	0.0	32.1	160.0	150		110	275	330		3520	6210	5,2	8,9	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	8,9	8,9
SANKYO	UCMSV110-05-(SPRING)	110.0	5.0	35.5	160.0	150		110	275	330		3520	6210	5,2	8,9	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	8,9	8,9
SANKYO	UCMSV110-10-(SPRING)	110.0	10.0	38.9	160.0	150		110	275	360		3520	6210	5,1	8,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	8,8	8,8
SANKYO	UCMSV110-15-(SPRING)	110.0	15.0	42.4	160.0	150		110	275	360		3520	6210	5,1	8,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	8,8	8,8
SANKYO	UCMSV110-20-(SPRING)	110.0	20.0	46.1	160.0	150		110	275	360		3520	6210	5,1	8,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	8,8	8,8
SANKYO	UCMSV110-25-(SPRING)	110.0	25.0	50.0	160.0	150		110	275	360		3520	6210	5,1	8,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	8,8	8,8
SANKYO	UCMSV110-30-(SPRING)	110.0	30.0	54.3	160.0	150		110	275	360		3520	6210	5	8,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	8,7	8,7
SANKYO	UCMSV110-35-(SPRING)	110.0	35.0	59.0	160.0	150		110	275	360		3520	6210	5	8,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	8,7	8,7
SANKYO	UCMSV110-40-(SPRING)	110.0	40.0	64.3	160.0	150		110	275	360		3520	6210	5	8,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	8,7	8,7
SANKYO	UCMSV110-45-(SPRING)	110.0	45.0	70.4	160.0	150		110	275	360		3520	6210	5	8,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	8,7	8,7
SANKYO	UCMSV110-50-(SPRING)	110.0	50.0	77.8	160.0	150		110	275	345		3520	6210	4,9	8,6	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	8,6	8,6
SANKYO	UCMSV110-55-(SPRING)	110.0	55.0	87.2	160.0	150		110	275	345		3520	6210	5,5	9,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	9,7	9,7
SANKYO	UCMSV110-60-(SPRING)	110.0	60.0	100.0	160.0	150		110	275	345		3520	6210	6,4	11,1	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	11,1	11,1
SANKYO	UCMSV110-65-(SPRING)	110.0	65.0	94.6	160.0	150		110	275	345		3520	6210	7,5	13,2	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	13,2	13,2
SANKYO	UCMSV110-70-(SPRING)	110.0	70.0	81.9	160.0	150		110	275	345		3520	6210	9	15,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	15,7	15,7
SANKYO	UCMSV110-75-(SPRING)	110.0	75.0	108.2	160.0	150		110	275	345		3520	6210	11,9	20,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	021	UCMSV.jpg	20,8	20,8
SANKYO	UCMSV165-00-(SPRING)	165.0	0.0	32.1	115.0	171		165	300	360		7870	12150	11,6	17,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	17,7	17,7
SANKYO	UCMSV165-05-(SPRING)	165.0	5.0	35.5	115.0	171		165	300	360		7870	12150	11,6	17,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	17,7	17,7
SANKYO	UCMSV165-10-(SPRING)	165.0	10.0	38.9	115.0	171		165	300	360		7870	12150	11,6	17,6	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	17,6	17,6
SANKYO	UCMSV165-15-(SPRING)	165.0	15.0	42.4	115.0	171		165	300	360		7870	12150	11,5	17,6	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	17,6	17,6
SANKYO	UCMSV165-20-(SPRING)	165.0	20.0	46.1	115.0	171		165	300	360		7870	12150	11,5	17,6	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	17,6	17,6
SANKYO	UCMSV165-25-(SPRING)	165.0	25.0	50.0	115.0	171		165	300	360		7870	12150	11,4	17,5	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	17,5	17,5
SANKYO	UCMSV165-30-(SPRING)	165.0	30.0	54.3	115.0	171		165	300	360		7870	12150	11,4	17,5	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	17,5	17,5
SANKYO	UCMSV165-35-(SPRING)	165.0	35.0	59.0	115.0	171		165	300	360		7870	12150	11,4	17,4	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	17,4	17,4
SANKYO	UCMSV165-40-(SPRING)	165.0	40.0	64.3	115.0	171		165	300	360		7870	12150	11,3	17,4	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	17,4	17,4
SANKYO	UCMSV165-45-(SPRING)	165.0	45.0	70.4	115.0	171		165	300	360		7870	12150	11,3	17,4	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	17,4	17,4
SANKYO	UCMSV165-50-(SPRING)	165.0	50.0	77.8	115.0	171		165	300	360		7870	12150	11,2	17,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	17,3	17,3
SANKYO	UCMSV165-55-(SPRING)	165.0	55.0	61.0	115.0	171		165	300	360		7870	12150	12,1	18,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	18,7	18,7
SANKYO	UCMSV165-60-(SPRING)	165.0	60.0	40.0	115.0	171		165	300	360		7870	12150	12,9	19,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	19,8	19,8
SANKYO	UCMSV165-65-(SPRING)	165.0	65.0	47.3	115.0	171		165	300	360		7870	12150	15,3	23,4	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	23,4	23,4
SANKYO	UCMSV165-70-(SPRING)	165.0	70.0	58.5	115.0	171		165	300	360		7870	12150	18,9	28,9	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	28,9	28,9
SANKYO	UCMSV165-75-(SPRING)	165.0	75.0	58.0	115.0	171		165	300	360		7870	12150	23,5	35,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	027	UCMSV.jpg	35,8	35,8
SANKYO	UCMSV200-00-(SPRING)	200.0	0.0	32.1	115.0	218		200	300	360		7870	12150	11,7	17,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	17,8	17,8
SANKYO	UCMSV200-05-(SPRING)	200.0	5.0	35.5	115.0	218		200	300	360		7870	12150	11,7	17,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	17,8	17,8
SANKYO	UCMSV200-10-(SPRING)	200.0	10.0	38.9	115.0	218		200	300	360		7870	12150	11,6	17,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	17,7	17,7
SANKYO	UCMSV200-15-(SPRING)	200.0	15.0	42.4	115.0	218		200	300	360		7870	12150	11,6	17,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	17,7	17,7
SANKYO	UCMSV200-20-(SPRING)	200.0	20.0	46.1	115.0	218		200	300	360		7870	12150	11,5	17,6	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	17,6	17,6
SANKYO	UCMSV200-25-(SPRING)	200.0	25.0	50.0	115.0	218		200	300	360		7870	12150	11,5	17,6	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	17,6	17,6
SANKYO	UCMSV200-30-(SPRING)	200.0	30.0	54.3	115.0	218		200	300	360		7870	12150	11,4	17,5	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	17,5	17,5
SANKYO	UCMSV200-35-(SPRING)	200.0	35.0	59.0	115.0	218		200	300	360		7870	12150	11,4	17,5	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	17,5	17,5
SANKYO	UCMSV200-40-(SPRING)	200.0	40.0	64.3	115.0	218		200	300	360		7870	12150	11,3	17,4	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	17,4	17,4
SANKYO	UCMSV200-45-(SPRING)	200.0	45.0	70.4	115.0	218		200	300	360		7870	12150	11,3	17,4	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	17,4	17,4
SANKYO	UCMSV200-50-(SPRING)	200.0	50.0	77.8	115.0	218		200	300	360		7870	12150	11,2	17,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	17,3	17,3
SANKYO	UCMSV200-55-(SPRING)	200.0	55.0	52.3	115.0	218		200	300	360		7870	12150	11,6	17,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	17,8	17,8
SANKYO	UCMSV200-60-(SPRING)	200.0	60.0	60.0	115.0	218		200	300	360		7870	12150	13,3	20,5	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	20,5	20,5
SANKYO	UCMSV200-65-(SPRING)	200.0	65.0	71.0	115.0	218		200	300	360		7870	12150	15,8	24,2	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	24,2	24,2
SANKYO	UCMSV200-70-(SPRING)	200.0	70.0	58.5	115.0	218		200	300	360		7870	12150	18,8	28,9	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	28,9	28,9
SANKYO	UCMSV200-75-(SPRING)	200.0	75.0	77.3	115.0	218		200	300	360		7870	12150	24,9	38,2	GS / GD / GK / NGS / NGD / NGK / NF / K / V	037	UCMSV.jpg	38,2	38,2
SANKYO	UCMSV250-00-(SPRING)	250.0	0.0	32.1	115.0	284		250	300	360		15750	24300	23,1	35,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	35,3	35,3
SANKYO	UCMSV250-05-(SPRING)	250.0	5.0	35.5	115.0	284		250	300	360		15750	24300	23,1	35,2	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	35,2	35,2
SANKYO	UCMSV250-10-(SPRING)	250.0	10.0	38.9	115.0	284		250	300	360		15750	24300	23	35,2	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	35,2	35,2
SANKYO	UCMSV250-15-(SPRING)	250.0	15.0	42.4	115.0	284		250	300	360		15750	24300	23	35,1	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	35,1	35,1
SANKYO	UCMSV250-20-(SPRING)	250.0	20.0	46.1	115.0	284		250	300	360		15750	24300	22,9	35,1	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	35,1	35,1
SANKYO	UCMSV250-25-(SPRING)	250.0	25.0	50.0	115.0	284		250	300	360		15750	24300	22,8	35	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	35	35
SANKYO	UCMSV250-30-(SPRING)	250.0	30.0	54.3	115.0	284		250	300	360		15750	24300	22,8	34,9	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	34,9	34,9
SANKYO	UCMSV250-35-(SPRING)	250.0	35.0	59.0	115.0	284		250	300	360		15750	24300	22,7	34,9	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	34,9	34,9
SANKYO	UCMSV250-40-(SPRING)	250.0	40.0	64.3	115.0	284		250	300	360		15750	24300	22,7	34,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	34,8	34,8
SANKYO	UCMSV250-45-(SPRING)	250.0	45.0	70.4	115.0	284		250	300	360		15750	24300	22,6	34,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	34,7	34,7
SANKYO	UCMSV250-50-(SPRING)	250.0	50.0	77.8	115.0	284		250	300	360		15750	24300	22,5	34,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	34,7	34,7
SANKYO	UCMSV250-55-(SPRING)	250.0	55.0	52.3	115.0	284		250	300	360		15750	24300	23,3	35,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	35,7	35,7
SANKYO	UCMSV250-60-(SPRING)	250.0	60.0	60.0	115.0	284		250	300	360		15750	24300	26,7	41	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	41	41
SANKYO	UCMSV250-65-(SPRING)	250.0	65.0	71.0	115.0	284		250	300	360		15750	24300	31,6	48,5	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	48,5	48,5
SANKYO	UCMSV250-70-(SPRING)	250.0	70.0	58.5	115.0	284		250	300	360		15750	24300	37,8	57,9	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	57,9	57,9
SANKYO	UCMSV250-75-(SPRING)	250.0	75.0	77.3	115.0	284		250	300	360		15750	24300	50	76,5	GS / GD / GK / NGS / NGD / NGK / NF / K / V	041	UCMSV.jpg	76,5	76,5
SANKYO	UCMSV300-00-(SPRING)	300.0	0.0	38.6	115.0	364		300	375	390		15900	24300	23,3	35	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	35	35
SANKYO	UCMSV300-05-(SPRING)	300.0	5.0	42.6	115.0	364		300	375	390		15900	24300	23,2	34,9	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	34,9	34,9
SANKYO	UCMSV300-10-(SPRING)	300.0	10.0	46.7	115.0	364		300	375	390		15900	24300	23,1	34,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	34,8	34,8
SANKYO	UCMSV300-15-(SPRING)	300.0	15.0	50.9	115.0	364		300	375	390		15900	24300	23	34,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	34,7	34,7
SANKYO	UCMSV300-20-(SPRING)	300.0	20.0	55.3	115.0	364		300	375	390		15900	24300	22,9	34,6	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	34,6	34,6
SANKYO	UCMSV300-25-(SPRING)	300.0	25.0	60.0	115.0	364		300	375	400		15900	24300	22,8	34,5	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	34,5	34,5
SANKYO	UCMSV300-30-(SPRING)	300.0	30.0	65.1	115.0	364		300	375	400		15900	24300	22,7	34,4	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	34,4	34,4
SANKYO	UCMSV300-35-(SPRING)	300.0	35.0	70.8	115.0	364		300	375	400		15900	24300	22,6	34,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	34,3	34,3
SANKYO	UCMSV300-40-(SPRING)	300.0	40.0	77.1	115.0	364		300	375	400		15900	24300	22,5	34,2	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	34,2	34,2
SANKYO	UCMSV300-45-(SPRING)	300.0	45.0	84.5	115.0	364		300	375	400		15900	24300	22,3	34,1	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	34,1	34,1
SANKYO	UCMSV300-50-(SPRING)	300.0	50.0	93.3	115.0	364		300	375	410		15900	24300	22,2	34	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	34	34
SANKYO	UCMSV300-55-(SPRING)	300.0	55.0	104.6	115.0	364		300	375	410		15900	24300	24,9	38,1	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	38,1	38,1
SANKYO	UCMSV300-60-(SPRING)	300.0	60.0	120.0	115.0	364		300	375	410		15900	24300	28,6	43,6	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	43,6	43,6
SANKYO	UCMSV300-65-(SPRING)	300.0	65.0	94.6	115.0	364		300	375	410		15900	24300	32,2	49,1	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	49,1	49,1
SANKYO	UCMSV300-70-(SPRING)	300.0	70.0	73.1	115.0	364		300	375	410		15900	24300	37,4	57	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	57	57
SANKYO	UCMSV300-75-(SPRING)	300.0	75.0	96.6	115.0	364		300	375	410		15900	24300	49,4	75,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	051	UCMSV.jpg	75,3	75,3
SANKYO	UCMSV350-00-(SPRING)	350.0	0.0	38.6	155.0	405		350	375	390		22000	35200	31,4	49,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	49,7	49,7
SANKYO	UCMSV350-05-(SPRING)	350.0	5.0	42.6	155.0	405		350	375	390		22000	35200	31,3	49,6	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	49,6	49,6
SANKYO	UCMSV350-10-(SPRING)	350.0	10.0	46.7	155.0	405		350	375	390		22000	35200	31,2	49,5	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	49,5	49,5
SANKYO	UCMSV350-15-(SPRING)	350.0	15.0	50.9	155.0	405		350	375	390		22000	35200	31,1	49,4	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	49,4	49,4
SANKYO	UCMSV350-20-(SPRING)	350.0	20.0	55.3	155.0	405		350	375	390		22000	35200	31	49,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	49,3	49,3
SANKYO	UCMSV350-25-(SPRING)	350.0	25.0	60.0	155.0	405		350	375	400		22000	35200	30,9	49,2	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	49,2	49,2
SANKYO	UCMSV350-30-(SPRING)	350.0	30.0	65.1	155.0	405		350	375	400		22000	35200	30,8	49,1	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	49,1	49,1
SANKYO	UCMSV350-35-(SPRING)	350.0	35.0	70.8	155.0	405		350	375	400		22000	35200	30,7	49	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	49	49
SANKYO	UCMSV350-40-(SPRING)	350.0	40.0	77.1	155.0	405		350	375	400		22000	35200	30,5	48,9	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	48,9	48,9
SANKYO	UCMSV350-45-(SPRING)	350.0	45.0	84.5	155.0	405		350	375	400		22000	35200	30,4	48,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	48,7	48,7
SANKYO	UCMSV350-50-(SPRING)	350.0	50.0	93.3	155.0	405		350	375	410		22000	35200	30,3	48,6	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	48,6	48,6
SANKYO	UCMSV350-55-(SPRING)	350.0	55.0	87.2	155.0	405		350	375	410		22000	35200	32,6	52,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	52,3	52,3
SANKYO	UCMSV350-60-(SPRING)	350.0	60.0	90.0	155.0	405		350	375	410		22000	35200	38,3	61,4	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	61,4	61,4
SANKYO	UCMSV350-65-(SPRING)	350.0	65.0	94.6	155.0	405		350	375	410		22000	35200	43,5	69,8	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	69,8	69,8
SANKYO	UCMSV350-70-(SPRING)	350.0	70.0	87.7	155.0	405		350	375	410		22000	35200	52,8	84,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	84,7	84,7
SANKYO	UCMSV350-75-(SPRING)	350.0	75.0	96.6	155.0	405		350	375	410		22000	35200	66	106	GS / GD / GK / NGS / NGD / NGK / NF / K / V	054	UCMSV.jpg	106	106
SANKYO	UCMSV400-00-(SPRING)	400.0	0.0	38.6	155.0	450		400	375	390		23850	36450	34,8	52,4	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	52,4	52,4
SANKYO	UCMSV400-05-(SPRING)	400.0	5.0	42.6	155.0	450		400	375	390		23850	36450	34,7	52,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	52,3	52,3
SANKYO	UCMSV400-10-(SPRING)	400.0	10.0	46.7	155.0	450		400	375	390		23850	36450	34,6	52,2	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	52,2	52,2
SANKYO	UCMSV400-15-(SPRING)	400.0	15.0	50.9	155.0	450		400	375	390		23850	36450	34,4	52	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	52	52
SANKYO	UCMSV400-20-(SPRING)	400.0	20.0	55.3	155.0	450		400	375	390		23850	36450	34,3	51,9	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	51,9	51,9
SANKYO	UCMSV400-25-(SPRING)	400.0	25.0	60.0	155.0	450		400	375	400		23850	36450	34,1	51,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	51,7	51,7
SANKYO	UCMSV400-30-(SPRING)	400.0	30.0	65.1	155.0	450		400	375	400		23850	36450	34	51,6	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	51,6	51,6
SANKYO	UCMSV400-35-(SPRING)	400.0	35.0	70.8	155.0	450		400	375	400		23850	36450	33,8	51,4	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	51,4	51,4
SANKYO	UCMSV400-40-(SPRING)	400.0	40.0	77.1	155.0	450		400	375	400		23850	36450	33,7	51,3	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	51,3	51,3
SANKYO	UCMSV400-45-(SPRING)	400.0	45.0	84.5	155.0	450		400	375	400		23850	36450	33,5	51,1	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	51,1	51,1
SANKYO	UCMSV400-50-(SPRING)	400.0	50.0	93.3	155.0	450		400	375	410		23850	36450	33,4	51	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	51	51
SANKYO	UCMSV400-55-(SPRING)	400.0	55.0	104.6	155.0	450		400	375	410		23850	36450	37,4	57,1	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	57,1	57,1
SANKYO	UCMSV400-60-(SPRING)	400.0	60.0	120.0	155.0	450		400	375	410		23850	36450	42,9	65,5	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	65,5	65,5
SANKYO	UCMSV400-65-(SPRING)	400.0	65.0	94.6	155.0	450		400	375	410		23850	36450	48,3	73,7	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	73,7	73,7
SANKYO	UCMSV400-70-(SPRING)	400.0	70.0	73.1	155.0	450		400	375	410		23850	36450	56,2	85,5	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	85,5	85,5
SANKYO	UCMSV400-75-(SPRING)	400.0	75.0	96.6	155.0	450		400	375	410		23850	36450	74,2	113	GS / GD / GK / NGS / NGD / NGK / NF / K / V	058	UCMSV.jpg	113	113
SANKYO	SVSC50-00-(SPRING)	50.0	0.0	55.0	75.0	29,4		50	250	300		3040	6210	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC50-05-(SPRING)	50.0	5.0	55.0	75.0	29,4		50	250	300		3040	6210	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC50-10-(SPRING)	50.0	10.0	55.0	75.0	29,4		50	250	300		3040	6210	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC50-15-(SPRING)	50.0	15.0	55.0	75.0	29,4		50	250	300		3040	6210	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC50-20-(SPRING)	50.0	20.0	55.0	75.0	29,4		50	250	300		3040	6210	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC85-00-(SPRING)	85.0	0.0	70.0	85.0	58,8		85	290	340		3500	7700	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC85-05-(SPRING)	85.0	5.0	70.0	85.0	58,8		85	290	340		3500	7700	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC85-10-(SPRING)	85.0	10.0	70.0	85.0	58,8		85	290	340		3500	7700	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC85-15-(SPRING)	85.0	15.0	70.0	85.0	58,8		85	290	340		3500	7700	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC85-20-(SPRING)	85.0	20.0	70.0	85.0	58,8		85	290	340		3500	7700	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC110-00-(SPRING)	110.0	0.0	70.0	110.0	117,7		110	310	385		6600	12150	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC110-05-(SPRING)	110.0	5.0	70.0	110.0	117,7		110	310	385		6600	12150	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC110-10-(SPRING)	110.0	10.0	70.0	110.0	117,7		110	310	385		6600	12150	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC110-15-(SPRING)	110.0	15.0	70.0	110.0	117,7		110	310	385		6600	12150	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC110-20-(SPRING)	110.0	20.0	70.0	110.0	117,7		110	310	385		6600	12150	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC150-00-(SPRING)	150.0	0.0	70.0	110.0	166,7		150	310	390		12000	17600	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC150-05-(SPRING)	150.0	5.0	70.0	110.0	166,7		150	310	390		12000	17600	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC150-10-(SPRING)	150.0	10.0	70.0	110.0	166,7		150	310	390		12000	17600	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC150-15-(SPRING)	150.0	15.0	70.0	110.0	166,7		150	310	390		12000	17600	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC150-20-(SPRING)	150.0	20.0	70.0	110.0	166,7		150	310	390		12000	17600	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC220-00-(SPRING)	220.0	0.0	70.0	110.0	245,2		220	310	390		13200	24300	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC220-05-(SPRING)	220.0	5.0	70.0	110.0	245,2		220	310	390		13200	24300	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC220-10-(SPRING)	220.0	10.0	70.0	110.0	245,2		220	310	390		13200	24300	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC220-15-(SPRING)	220.0	15.0	70.0	110.0	245,2		220	310	390		13200	24300	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC220-20-(SPRING)	220.0	20.0	70.0	110.0	245,2		220	310	390		13200	24300	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC330-00-(SPRING)	330.0	0.0	80.0	200.0	343,2		330	380	400		24500	35200	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC330-05-(SPRING)	330.0	5.0	80.0	200.0	343,2		330	380	400		24500	35200	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC330-10-(SPRING)	330.0	10.0	80.0	200.0	343,2		330	380	400		24500	35200	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC330-15-(SPRING)	330.0	15.0	80.0	200.0	343,2		330	380	400		24500	35200	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC330-20-(SPRING)	330.0	20.0	80.0	200.0	343,2		330	380	400		24500	35200	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC400-00-(SPRING)	400.0	0.0	80.0	200.0	431,5		400	400	445		24500	35200	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC400-05-(SPRING)	400.0	5.0	80.0	200.0	431,5		400	400	445		24500	35200	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC400-10-(SPRING)	400.0	10.0	80.0	200.0	431,5		400	400	445		24500	35200	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC400-15-(SPRING)	400.0	15.0	80.0	200.0	431,5		400	400	445		24500	35200	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	SVSC400-20-(SPRING)	400.0	20.0	80.0	200.0	431,5		400	400	445		24500	35200	0	0	GS / GD / GK / NGS / NGD / NGK / NF / K / V	999	SVSC.jpg	0	0
SANKYO	CTCS120-45-(SPRING)	120.0	90.0	45.0	95.0	29,4		180	285	290	1815	2072		0	0	GS / GD / GK / NGS / NGD / NGK / NF / N12	038		0	0
SANKYO	CTCH120-45-(SPRING)	120.0	90.0	45.0	95.0	29,4		180	285	300	1815	2072		0	0	GS / GD / GK / NGS / NGD / NGK / NF / N12	038		0	0
SANKYO	CTCS145-45-(SPRING)	145.0	90.0	45.0	68.0	73,5		240	290	305	1815	2072		0	0	GS / GD / GK / NGS / NGD / NGK / NF / N12	060		0	0
SANKYO	CTCH145-45-(SPRING)	145.0	90.0	45.0	68.0	73,5		240	290	320	1815	2072		0	0	GS / GD / GK / NGS / NGD / NGK / NF / N12	063		0	0
SANKYO	CTVS245-60-(SPRING)	245.0	90.0	60.0	110.0	117,6		345	390	390	4074	4691		0	0	GS / GD / GK / NGS / NGD / NGK / NF / N12	080		0	0
SANKYO	CTVH245-60-(SPRING)	245.0	90.0	60.0	110.0	117,6		345	390	410	4074	4691		0	0	GS / GD / GK / NGS / NGD / NGK / NF / N12	084		0	0
SANKYO	CTVS320-60-(SPRING)	320.0	90.0	60.0	110.0	156,8		420	390	390	8148	9382		0	0	GS / GD / GK / NGS / NGD / NGK / NF / N12	103		0	0
SANKYO	CTVS320-60-(SPRING)	320.0	90.0	60.0	110.0	156,8		420	390	410	8148	9382		0	0	GS / GD / GK / NGS / NGD / NGK / NF / N12	107		0	0
\.


--
-- Data for Name: Mail; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."Mail" ("SenderMailHost", "SenderMailPassword", "SenderMailAddress", "AdminMailAddress") FROM stdin;
\.


--
-- Data for Name: Material; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."Material" ("MaterialID", "Material") FROM stdin;
23	GGG50
25	GGG70L
26	Gh190
27	Gh240
28	GS47CrMn6
29	1.7140
30	39NiCrMo3
31	1.4140
32	1.2379
33	St52
34	St37
35	CK75
36	HARDOX 400
37	1.7131
38	AMPCO
39	BRONZ
41	URELAST
42	ERTALON
43	POLIURETAN
45	-
46	D6510
\.


--
-- Data for Name: MaterialListControl; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."MaterialListControl" ("DeletedSentence", "AddedSentence", "UpdatedSentence") FROM stdin;
##Date## revizyonunda silindi	##Date## tarihli revizyon	##Date## revizyonunda güncellendi
\.


--
-- Data for Name: MaterialType; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."MaterialType" ("MaterialTypeID", "MaterialType", "Abbreviation") FROM stdin;
1	Zımba	Z
2	Gazlı Yay	A
3	Elektrik	E
4	Pnömatik	H
5	Kam	K
6	Diğerleri	N
7	Stoper	C
8	Döküm	G
9	Hadde Grubu	P
10	Sipariş Yok	X
11	Taşıma Boruları	B
12	Lazer Kesim	L
\.


--
-- Data for Name: MaterialType_PartName; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."MaterialType_PartName" ("MaterialType_PartNameID", "PartNameID", "MaterialTypeID") FROM stdin;
14	32	8
15	27	9
18	21	8
19	21	9
20	23	9
22	39	8
24	34	8
26	37	8
27	37	9
28	28	9
29	44	8
30	44	9
31	43	8
32	43	9
33	51	8
34	51	9
35	45	8
36	45	9
37	46	8
38	46	9
39	42	8
40	42	9
41	20	8
42	20	9
43	47	8
44	47	9
45	29	9
46	40	9
47	26	9
48	26	8
49	30	9
51	36	8
52	49	8
53	49	9
56	48	8
57	48	9
58	24	9
60	35	8
61	38	8
62	38	9
63	33	8
64	22	8
65	22	9
67	25	8
68	31	8
69	52	6
70	52	1
71	52	2
72	52	3
73	52	4
74	52	5
75	52	7
76	52	10
77	44	5
78	43	5
80	45	5
81	46	5
82	42	5
83	60	9
84	60	8
85	60	10
86	68	8
87	68	9
88	68	10
89	73	9
90	73	8
91	73	10
92	74	9
93	74	8
94	74	10
95	75	8
96	75	9
97	75	10
98	72	8
99	72	9
100	72	10
101	70	8
102	70	9
103	70	10
104	77	8
105	77	9
106	77	10
110	54	8
111	54	9
112	54	10
113	55	8
114	55	9
115	55	10
116	62	9
117	62	8
118	62	10
119	64	8
120	64	9
121	64	10
122	58	8
123	58	9
124	58	10
125	67	8
126	67	9
127	67	10
128	63	8
129	63	9
130	63	10
131	66	8
132	66	9
133	66	10
134	78	8
135	78	9
136	78	10
137	79	8
138	79	9
139	79	10
140	61	8
141	61	9
142	61	10
143	69	8
144	69	9
145	69	10
146	56	8
147	56	9
148	56	10
149	57	8
150	57	9
151	57	10
152	59	8
153	59	9
154	59	10
155	53	8
156	53	9
157	53	10
158	65	8
159	65	9
160	65	10
163	82	2
164	83	4
165	84	2
166	85	4
167	99	9
168	99	8
169	87	8
170	87	9
171	88	8
172	88	9
174	94	1
175	94	2
176	94	3
177	94	4
178	94	5
179	94	6
180	94	7
182	94	10
183	93	8
184	93	10
185	93	9
186	89	9
187	89	8
188	89	10
189	86	8
190	86	9
191	86	10
192	86	2
193	86	1
194	86	3
195	86	4
196	86	5
197	86	6
198	86	7
199	79	1
200	79	2
201	96	8
202	96	9
203	96	10
204	97	9
205	97	8
206	98	8
207	98	9
208	95	9
209	95	8
210	90	9
\.


--
-- Data for Name: PARAMETRE; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."PARAMETRE" ("Parametre", "ParametreTipi", "Doluluk", "IsRequiredForControl") FROM stdin;
Parca_No	Part	1	1
Malzeme_Sinifi	Part	1	1
ParcaAdi	Part	1	1
Siparis_Kodu	Part	0	1
Malzeme	Part	0	1
Isil_Islem_Turu	Part	0	0
Sertlik_Degeri	Part	0	0
Olcu	Part	0	0
Not1	Part	0	0
Not2	Part	0	0
Grup	Part	1	0
cmcm	Part	1	1
Revizyon_Numarasi	Part	0	1
Revizyon_Tarihi	Part	0	1
xxxxx	Part	0	1
ProductAdi	Product	1	1
ProductNo	Product	1	1
ProductTipNo	Product	1	1
xxxxx	Product	0	1
xxxxy	Product	0	1
Ongoru_Agirlik	Part	0	0
Net_Agirlik	Part	0	0
Olcu_X	Part	0	0
Olcu_Y	Part	0	0
Olcu_Z	Part	0	0
Yedek	Part	0	0
Kritiklik_No	Part	0	0
Depo_Kodu	Part	0	0
Firma	Part	0	0
TR	Part	0	0
\.


--
-- Data for Name: PartName; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."PartName" ("PartNameID", "Turkish", "Italian", "English") FROM stdin;
20	Kesme_Bicagi		
21	Bukme_Bicagi		
22	Utuleme_Bicagi		
23	Celik		
24	Sac_Max8mm		
25	Alt_Hareketli_Siyirici		
26	Kule		
27	Altlik		
28	Hurda_Tavasi		
29	Koruma_Saci		
30	Platina		
31	Ara_Tabla		
32	Alt_Kalip		
33	Ust_Kalip		
34	Gobek		
35	Siyirici		
36	PotCemberi		
37	Hurda_Bicagi		
38	Siyirici_Kapak		
39	Erkek_Tasiyici		
40	Kosebent		
42	Kam_Surucu		
43	Kam_Itici		
44	Kam_Govdesi		
45	Kam_Kilidi		
46	Kam_Siyiricisi		
47	Kontra_Kam_Govdesi		
48	Rotary_Yatagi		
49	Rotary		
51	Kam_Kapak		
52	TksDisi_StdParca		
53	Trim_Steel		
54	Flange_Steel		
55	Form_Steel		
56	Steel		
57	Steel_Max8mm		
58	Lower_Pad		
59	Tower		
60	Base		
61	Scrap_Chute		
62	Guarding_Sheet_Metal		
63	Plate		
64	Lower_Die		
65	Upper_Die		
66	Punch		
67	Pad		
68	Blankholder		
69	Scrap_Steel		
70	Cast_Plate		
71	Sheet_Metal		
72	Cam_Slider		
73	Cam_Base		
74	Cam_Driver		
75	Cam_Pad		
77	Filler_Cam		
78	Rotary_Cam		
79	Rotary_Insert		
82	Azot_Silindiri_Hortumu		
83	Sprial_Hortum		
84	Nitrogen_Hose		
85	Spiral_Hose		
86	Rotary_Ek_Celigi		
87	Filler_Kam		
88	Filler_Kam_Yatagi		
89	Restrike_Steel		
90	Shim_Plate		
91	Cam_Lock_Plate		
92	Counter_Cam_Base		
93	Pad_Plate		
94	OutOfTks_StdPart		
95	Rotor_Part		
96	Rotary_Insert_Part		
97	Rotary_Lower_Support		
98	Rotary_Work_Cap		
99	Filler_Cam_Support		
\.


--
-- Data for Name: PartName_Material; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."PartName_Material" ("PartName_MaterialID", "MaterialID", "PartNameID") FROM stdin;
1	4	1
2	5	1
3	6	1
4	7	1
5	8	1
6	9	1
7	13	2
8	14	2
9	15	2
10	16	2
11	13	1
12	32	21
13	32	20
14	32	22
15	26	32
16	26	33
17	28	34
18	32	37
19	26	39
20	23	36
23	45	52
24	32	23
25	32	26
26	32	27
28	32	34
29	32	35
30	32	38
31	32	24
32	32	51
33	32	41
34	32	40
35	32	43
36	32	42
37	32	44
38	32	45
39	32	47
40	32	29
41	32	28
42	32	30
43	32	25
44	32	32
45	32	33
46	32	39
47	32	36
48	32	46
49	32	48
50	32	31
51	32	50
52	32	49
53	32	52
54	31	20
55	31	23
56	31	22
57	31	24
58	31	25
59	31	26
60	31	27
61	31	28
62	31	29
63	31	30
64	31	21
65	31	31
66	31	33
67	31	34
68	31	35
69	31	36
70	31	37
71	31	38
72	31	39
73	31	41
74	31	42
75	31	43
76	31	44
77	31	45
78	31	46
79	31	40
80	31	47
81	31	49
82	31	50
83	31	48
84	31	52
85	31	51
86	31	32
87	37	20
88	37	21
89	37	22
90	37	24
91	37	25
92	37	26
93	37	27
94	37	28
95	37	29
96	37	30
97	37	31
98	37	32
99	37	33
100	37	34
101	37	35
102	37	36
103	37	37
104	37	38
105	37	39
106	37	40
107	37	41
108	37	42
109	37	44
110	37	45
111	37	43
112	37	47
113	37	48
114	37	49
115	37	46
116	37	50
117	37	51
118	37	52
119	37	23
120	29	20
121	29	21
122	29	22
123	29	24
124	29	25
125	29	26
126	29	27
127	29	28
128	29	29
129	29	30
130	29	31
131	29	32
132	29	33
133	29	34
134	29	35
135	29	37
136	29	36
137	29	38
138	29	39
139	29	41
140	29	42
141	29	43
142	29	44
143	29	40
144	29	46
145	29	45
146	29	47
147	29	48
148	29	49
149	29	51
150	29	50
151	29	52
152	29	23
153	30	20
154	30	21
155	30	23
156	30	24
157	30	25
158	30	26
159	30	27
160	30	22
161	30	29
162	30	30
163	30	28
164	30	31
165	30	32
166	30	33
167	30	34
168	30	35
169	30	37
170	30	36
171	30	39
172	30	40
173	30	41
174	30	42
175	30	43
176	30	44
177	30	45
178	30	46
179	30	47
180	30	48
181	30	38
182	30	50
183	30	49
184	30	51
185	30	52
186	38	20
187	38	21
188	38	22
189	38	23
190	38	24
191	38	25
192	38	26
193	38	27
194	38	28
195	38	29
196	38	30
197	38	31
198	38	32
199	38	33
200	38	34
201	38	35
202	38	36
203	38	37
204	38	38
205	38	39
206	38	40
207	38	41
208	38	42
209	38	43
210	38	44
211	38	45
212	38	46
213	38	47
214	38	48
215	38	49
216	38	50
217	38	51
218	38	52
219	39	20
220	39	21
221	39	22
222	39	23
223	39	24
224	39	25
225	39	26
226	39	27
227	39	28
228	39	29
229	39	30
230	39	31
231	39	32
232	39	33
233	39	34
234	39	35
235	39	36
236	39	37
237	39	38
238	39	39
239	39	40
240	39	41
241	39	42
242	39	43
243	39	44
244	39	45
245	39	46
246	39	47
247	39	48
248	39	49
249	39	50
250	39	51
251	39	52
252	35	20
253	35	21
254	35	22
255	35	23
256	35	24
257	35	25
258	35	26
259	35	27
260	35	28
261	35	29
262	35	30
263	35	31
264	35	32
265	35	33
266	35	34
267	35	35
268	35	36
269	35	37
270	35	38
271	35	39
272	35	40
273	35	41
274	35	42
275	35	43
276	35	44
277	35	45
278	35	46
279	35	47
280	35	48
281	35	49
282	35	50
283	35	51
284	35	52
285	42	20
286	42	21
287	42	22
288	42	23
289	42	24
290	42	25
291	42	26
292	42	27
293	42	28
294	42	29
295	42	30
296	42	31
297	42	32
298	42	33
299	42	34
300	42	35
301	42	36
302	42	37
303	42	38
304	42	39
305	42	40
306	42	41
307	42	42
308	42	43
309	42	44
310	42	45
311	42	46
312	42	47
313	42	48
314	42	49
315	42	50
316	42	51
317	42	52
318	23	20
319	23	21
320	23	22
321	23	23
322	23	24
323	23	25
324	23	26
325	23	27
326	23	28
327	23	29
328	23	30
329	23	31
330	23	32
331	23	33
332	23	34
333	23	35
334	23	37
335	23	38
336	23	39
337	23	40
338	23	41
339	23	42
340	23	43
341	23	44
342	23	45
343	23	46
344	23	47
345	23	48
346	23	49
347	23	50
348	23	51
349	23	52
350	25	20
351	25	21
352	25	22
353	25	23
354	25	24
355	25	25
356	25	26
357	25	27
358	25	28
359	25	29
360	25	30
361	25	31
362	25	32
363	25	33
364	25	34
365	25	35
366	25	36
367	25	37
368	25	38
369	25	39
370	25	40
371	25	41
372	25	42
373	25	43
374	25	44
375	25	45
376	25	46
377	25	47
378	25	48
379	25	49
380	25	50
381	25	51
382	25	52
383	28	20
384	28	21
385	28	22
386	28	23
387	28	24
388	28	25
389	28	26
390	28	27
391	28	28
392	28	29
393	28	30
394	28	31
395	28	32
396	28	33
397	28	35
398	28	37
399	28	36
400	28	38
401	28	39
402	28	40
403	28	41
404	28	42
405	28	43
406	28	44
407	28	45
408	28	46
409	28	47
410	28	48
411	28	49
412	28	50
413	28	51
414	28	52
415	26	20
416	26	21
417	26	22
418	26	23
419	26	24
420	26	25
421	26	26
422	26	27
423	26	28
424	26	29
425	26	30
426	26	31
427	26	34
428	26	35
429	26	36
430	26	37
431	26	38
432	26	40
433	26	41
434	26	42
435	26	43
436	26	44
437	26	45
438	26	46
439	26	47
440	26	48
441	26	49
442	26	50
443	26	51
444	26	52
445	27	20
446	27	21
447	27	22
448	27	23
449	27	24
450	27	25
451	27	26
452	27	27
453	27	28
454	27	29
455	27	30
456	27	31
457	27	32
458	27	33
459	27	34
460	27	35
461	27	36
462	27	37
463	27	38
464	27	39
465	27	40
466	27	41
467	27	42
468	27	43
469	27	44
470	27	45
471	27	46
472	27	47
473	27	48
474	27	49
475	27	50
476	27	51
477	27	52
478	36	20
479	36	21
480	36	22
481	36	23
482	36	24
483	36	25
484	36	26
485	36	27
486	36	28
487	36	29
488	36	30
489	36	31
490	36	32
491	36	33
492	36	34
493	36	35
494	36	36
495	36	37
496	36	38
497	36	39
498	36	40
499	36	41
500	36	42
501	36	43
502	36	44
503	36	45
504	36	46
505	36	47
506	36	48
507	36	49
508	36	50
509	36	51
510	36	52
511	43	20
512	43	21
513	43	22
514	43	23
515	43	24
516	43	25
517	43	26
518	43	27
519	43	28
520	43	29
521	43	30
522	43	31
523	43	32
524	43	33
525	43	34
526	43	35
527	43	36
528	43	37
529	43	38
530	43	39
531	43	40
532	43	41
533	43	42
534	43	43
535	43	44
536	43	45
537	43	46
538	43	47
539	43	48
540	43	49
541	43	50
542	43	51
543	43	52
544	34	20
545	34	21
546	34	22
547	34	23
548	34	24
549	34	25
550	34	26
551	34	27
552	34	28
553	34	29
554	34	30
555	34	31
556	34	32
557	34	33
558	34	34
559	34	35
560	34	36
561	34	37
562	34	38
563	34	39
564	34	40
565	34	41
566	34	42
567	34	43
568	34	44
569	34	45
570	34	46
571	34	47
572	34	48
573	34	49
574	34	50
575	34	51
576	34	52
577	33	21
578	33	20
579	33	22
580	33	24
581	33	25
582	33	23
583	33	26
584	33	27
585	33	28
586	33	29
587	33	30
588	33	31
589	33	32
590	33	33
591	33	34
592	33	35
593	33	36
594	33	37
595	33	38
596	33	39
597	33	40
598	33	41
599	33	42
600	33	43
601	33	44
602	33	45
603	33	46
604	33	47
605	33	48
606	33	49
607	33	50
608	33	51
609	33	52
610	41	20
611	41	21
612	41	22
613	41	23
614	41	24
615	41	25
616	41	26
617	41	27
618	41	28
619	41	29
620	41	30
621	41	31
622	41	32
623	41	33
624	41	34
625	41	35
626	41	36
627	41	37
628	41	38
629	41	39
630	41	40
631	41	41
632	41	42
633	41	44
634	41	45
635	41	43
636	41	46
637	41	47
638	41	48
639	41	49
640	41	50
641	41	51
642	41	52
643	45	20
644	45	21
645	45	22
646	45	23
647	45	24
648	45	25
649	45	26
650	45	27
651	45	28
652	45	29
653	45	30
654	45	31
655	45	32
656	45	33
657	45	34
658	45	35
659	45	36
660	45	37
661	45	38
662	45	39
663	45	40
664	45	41
665	45	42
666	45	43
667	45	44
668	45	45
669	45	46
670	45	47
671	45	48
672	45	49
673	45	50
674	45	51
675	32	53
676	32	54
677	32	55
678	32	56
679	32	57
680	32	59
681	32	58
682	32	60
683	32	62
684	32	61
685	32	64
686	32	65
687	32	66
688	32	67
689	32	69
690	32	68
691	32	70
692	32	63
693	32	72
694	32	73
695	32	74
696	32	75
697	32	76
698	32	77
699	32	71
700	32	78
701	32	79
702	45	53
703	45	54
704	45	55
705	45	56
706	45	57
707	45	58
708	45	59
709	45	60
710	45	61
711	45	62
712	45	63
713	45	65
714	45	64
715	45	66
716	45	67
717	45	68
718	45	70
719	45	69
720	45	71
721	45	72
722	45	73
723	45	74
724	45	75
725	45	76
726	45	78
727	45	79
728	45	77
729	31	53
730	31	54
731	31	55
732	31	56
733	31	57
734	31	58
735	31	59
736	31	60
737	31	61
738	31	63
739	31	62
740	31	65
741	31	64
742	31	66
743	31	67
744	31	68
745	31	70
746	31	69
747	31	72
748	31	73
749	31	71
750	31	74
751	31	75
752	31	76
753	31	78
754	31	79
755	31	77
756	37	54
757	37	53
758	37	56
759	37	55
760	37	57
761	37	59
762	37	58
763	37	61
764	37	62
765	37	64
766	37	65
767	37	60
768	37	63
769	37	66
770	37	69
771	37	70
772	37	68
773	37	71
774	37	72
775	37	73
776	37	74
777	37	75
778	37	76
779	37	77
780	37	67
781	37	78
782	37	79
783	29	54
784	29	53
785	29	55
786	29	56
787	29	58
788	29	57
789	29	60
790	29	59
791	29	62
792	29	61
793	29	63
794	29	64
795	29	66
796	29	65
797	29	68
798	29	69
799	29	67
800	29	70
801	29	72
802	29	71
803	29	74
804	29	75
805	29	76
806	29	77
807	29	78
808	29	79
809	29	73
810	30	54
811	30	53
812	30	55
813	30	56
814	30	57
815	30	58
816	30	60
817	30	61
818	30	59
819	30	63
820	30	62
821	30	64
822	30	65
823	30	67
824	30	66
825	30	68
826	30	70
827	30	69
828	30	71
829	30	72
830	30	73
831	30	74
832	30	75
833	30	76
834	30	77
835	30	78
836	30	79
837	38	53
838	38	54
839	38	55
840	38	57
841	38	56
842	38	58
843	38	59
844	38	60
845	38	62
846	38	61
847	38	63
848	38	65
849	38	64
850	38	66
851	38	67
852	38	68
853	38	69
854	38	70
855	38	71
856	38	72
857	38	73
858	38	74
859	38	75
860	38	77
861	38	76
862	38	78
863	38	79
864	39	53
865	39	54
866	39	55
867	39	56
868	39	57
869	39	58
870	39	59
871	39	60
872	39	62
873	39	61
874	39	63
875	39	65
876	39	64
877	39	66
878	39	68
879	39	69
880	39	70
881	39	71
882	39	72
883	39	67
884	39	74
885	39	73
886	39	76
887	39	75
888	39	77
889	39	79
890	39	78
891	35	53
892	35	54
893	35	55
894	35	57
895	35	58
896	35	59
897	35	60
898	35	56
899	35	61
900	35	62
901	35	63
902	35	65
903	35	66
904	35	64
905	35	67
906	35	68
907	35	69
908	35	70
909	35	72
910	35	71
911	35	73
912	35	75
913	35	76
914	35	74
915	35	77
916	35	78
917	35	79
918	42	53
919	42	54
920	42	55
921	42	56
922	42	57
923	42	59
924	42	60
925	42	61
926	42	58
927	42	62
928	42	65
929	42	63
930	42	67
931	42	66
932	42	68
933	42	69
934	42	70
935	42	72
936	42	74
937	42	73
938	42	75
939	42	76
940	42	77
941	42	71
942	42	78
943	42	79
944	42	64
945	23	53
946	23	54
947	23	56
948	23	57
949	23	55
950	23	59
951	23	58
952	23	60
953	23	62
954	23	63
955	23	61
956	23	65
957	23	66
958	23	67
959	23	68
960	23	69
961	23	70
962	23	71
963	23	72
964	23	73
965	23	74
966	23	76
967	23	77
968	23	78
969	23	79
970	23	75
971	23	64
972	25	53
973	25	54
974	25	55
975	25	56
976	25	58
977	25	59
978	25	57
979	25	61
980	25	62
981	25	63
982	25	64
983	25	65
984	25	66
985	25	60
986	25	68
987	25	69
988	25	67
989	25	70
990	25	71
991	25	73
992	25	72
993	25	75
994	25	74
995	25	77
996	25	78
997	25	79
998	25	76
999	28	54
1000	28	53
1001	28	55
1002	28	57
1003	28	59
1004	28	58
1005	28	60
1006	28	61
1007	28	62
1008	28	63
1009	28	65
1010	28	66
1011	28	67
1012	28	68
1013	28	69
1014	28	70
1015	28	71
1016	28	64
1017	28	72
1018	28	74
1019	28	75
1020	28	76
1021	28	77
1022	28	78
1023	28	56
1024	28	79
1025	28	73
1026	26	53
1027	26	55
1028	26	56
1029	26	57
1030	26	58
1031	26	59
1032	26	60
1033	26	61
1034	26	62
1035	26	63
1036	26	64
1037	26	65
1038	26	66
1039	26	54
1040	26	68
1041	26	69
1042	26	70
1043	26	71
1044	26	72
1045	26	73
1046	26	74
1047	26	76
1048	26	77
1049	26	75
1050	26	78
1051	26	79
1052	26	67
1053	27	54
1054	27	53
1055	27	55
1056	27	56
1057	27	57
1058	27	58
1059	27	61
1060	27	62
1061	27	63
1062	27	64
1063	27	65
1064	27	66
1065	27	67
1066	27	68
1067	27	60
1068	27	70
1069	27	71
1070	27	72
1071	27	73
1072	27	74
1073	27	75
1074	27	69
1075	27	76
1076	27	77
1077	27	78
1078	27	79
1079	27	59
1080	36	53
1081	36	55
1082	36	56
1083	36	57
1084	36	58
1085	36	59
1086	36	60
1087	36	54
1088	36	62
1089	36	63
1090	36	64
1091	36	65
1092	36	66
1093	36	67
1094	36	69
1095	36	68
1096	36	70
1097	36	71
1098	36	72
1099	36	73
1100	36	74
1101	36	75
1102	36	61
1103	36	76
1104	36	78
1105	36	77
1106	36	79
1107	43	55
1108	43	53
1109	43	54
1110	43	56
1111	43	57
1112	43	58
1113	43	60
1114	43	61
1115	43	62
1116	43	63
1117	43	64
1118	43	66
1119	43	65
1120	43	67
1121	43	68
1122	43	69
1123	43	70
1124	43	71
1125	43	72
1126	43	74
1127	43	73
1128	43	75
1129	43	76
1130	43	77
1131	43	78
1132	43	79
1133	43	59
1134	34	55
1135	34	57
1136	34	60
1137	34	58
1138	34	59
1139	34	56
1140	34	54
1141	34	62
1142	34	61
1143	34	63
1144	34	65
1145	34	64
1146	34	67
1147	34	66
1148	34	53
1149	34	68
1150	34	69
1151	34	71
1152	34	70
1153	34	73
1154	34	74
1155	34	75
1156	34	76
1157	34	77
1158	34	78
1159	34	79
1160	34	72
1161	33	54
1162	33	55
1163	33	56
1164	33	57
1165	33	58
1166	33	61
1167	33	60
1168	33	59
1169	33	62
1170	33	64
1171	33	65
1172	33	66
1173	33	68
1174	33	69
1175	33	67
1176	33	71
1177	33	70
1178	33	72
1179	33	63
1180	33	73
1181	33	53
1182	33	75
1183	33	76
1184	33	74
1185	33	78
1186	33	77
1187	33	79
1188	41	53
1189	41	55
1190	41	56
1191	41	57
1192	41	58
1193	41	59
1194	41	60
1195	41	61
1196	41	62
1197	41	63
1198	41	54
1199	41	64
1200	41	65
1201	41	67
1202	41	66
1203	41	69
1204	41	68
1205	41	72
1206	41	71
1207	41	73
1208	41	70
1209	41	75
1210	41	76
1211	41	77
1212	41	78
1213	41	79
1214	41	74
1215	45	80
1216	32	80
1217	31	80
1218	37	80
1219	29	80
1220	30	80
1221	38	80
1222	39	80
1223	35	80
1224	42	80
1225	28	80
1226	46	20
1227	46	21
1228	46	22
1229	46	23
1230	46	25
1231	46	24
1232	46	27
1233	46	26
1234	46	29
1235	46	28
1236	46	30
1237	46	31
1238	46	32
1239	46	34
1240	46	35
1241	46	36
1242	46	33
1243	46	37
1244	46	39
1245	46	40
1246	46	41
1247	46	43
1248	46	42
1249	46	38
1250	46	46
1251	46	47
1252	46	44
1253	46	48
1254	46	49
1255	46	50
1256	46	45
1257	46	52
1258	46	51
1259	46	53
1260	46	54
1261	46	55
1262	46	56
1263	46	57
1264	46	58
1265	46	59
1266	46	61
1267	46	60
1268	46	62
1269	46	64
1270	46	63
1271	46	65
1272	46	66
1273	46	67
1274	46	68
1275	46	69
1276	46	70
1277	46	71
1278	46	72
1279	46	73
1280	46	74
1281	46	75
1282	46	77
1283	46	76
1284	46	79
1285	46	78
1286	46	80
1287	45	82
1288	45	83
1289	45	84
1290	45	85
1291	45	86
1292	45	87
1293	45	88
1294	45	89
1295	45	91
1296	45	92
1297	45	90
1298	45	93
1299	45	94
1300	45	96
1301	45	97
1302	45	98
1303	45	95
1304	45	99
1305	32	82
1306	32	83
1307	32	84
1308	32	86
1309	32	85
1310	32	88
1311	32	89
1312	32	87
1313	32	91
1314	32	92
1315	32	93
1316	32	94
1317	32	90
1318	32	96
1319	32	97
1320	32	98
1321	32	95
1322	32	99
1323	31	82
1324	31	83
1325	31	84
1326	31	86
1327	31	87
1328	31	85
1329	31	88
1330	31	89
1331	31	90
1332	31	91
1333	31	92
1334	31	93
1335	31	94
1336	31	95
1337	31	96
1338	31	97
1339	31	98
1340	31	99
1341	37	82
1342	37	83
1343	37	85
1344	37	86
1345	37	87
1346	37	88
1347	37	90
1348	37	91
1349	37	92
1350	37	89
1351	37	93
1352	37	94
1353	37	95
1354	37	96
1355	37	97
1356	37	98
1357	37	99
1358	37	84
1359	29	82
1360	29	83
1361	29	84
1362	29	85
1363	29	86
1364	29	87
1365	29	88
1366	29	89
1367	29	91
1368	29	92
1369	29	93
1370	29	94
1371	29	95
1372	29	96
1373	29	97
1374	29	90
1375	29	99
1376	29	98
1377	30	82
1378	30	83
1379	30	84
1380	30	85
1381	30	86
1382	30	87
1383	30	88
1384	30	89
1385	30	90
1386	30	91
1387	30	92
1388	30	93
1389	30	94
1390	30	95
1391	30	96
1392	30	97
1393	30	98
1394	30	99
1395	38	82
1396	38	83
1397	38	84
1398	38	85
1399	38	86
1400	38	87
1401	38	88
1402	38	89
1403	38	90
1404	38	92
1405	38	93
1406	38	94
1407	38	95
1408	38	96
1409	38	97
1410	38	98
1411	38	99
1412	38	91
1413	39	83
1414	39	82
1415	39	84
1416	39	85
1417	39	86
1418	39	87
1419	39	88
1420	39	89
1421	39	90
1422	39	91
1423	39	92
1424	39	93
1425	39	94
1426	39	95
1427	39	96
1428	39	97
1429	39	98
1430	39	99
1431	35	82
1432	35	83
1433	35	84
1434	35	85
1435	35	86
1436	35	87
1437	35	88
1438	35	89
1439	35	90
1440	35	92
1441	35	91
1442	35	93
1443	35	94
1444	35	95
1445	35	96
1446	35	97
1447	35	98
1448	35	99
1449	46	82
1450	46	83
1451	46	84
1452	46	85
1453	46	87
1454	46	88
1455	46	89
1456	46	90
1457	46	91
1458	46	86
1459	46	92
1460	46	93
1461	46	94
1462	46	95
1463	46	96
1464	46	97
1465	46	99
1466	46	98
1467	42	82
1468	42	83
1469	42	85
1470	42	84
1471	42	86
1472	42	87
1473	42	88
1474	42	89
1475	42	91
1476	42	90
1477	42	92
1478	42	93
1479	42	94
1480	42	95
1481	42	96
1482	42	97
1483	42	98
1484	42	99
1485	23	82
1486	23	83
1487	23	84
1488	23	85
1489	23	86
1490	23	87
1491	23	88
1492	23	89
1493	23	90
1494	23	91
1495	23	92
1496	23	94
1497	23	93
1498	23	95
1499	23	96
1500	23	97
1501	23	98
1502	23	99
1503	25	82
1504	25	83
1505	25	84
1506	25	86
1507	25	85
1508	25	88
1509	25	89
1510	25	87
1511	25	90
1512	25	91
1513	25	92
1514	25	93
1515	25	94
1516	25	95
1517	25	96
1518	25	97
1519	25	98
1520	25	99
1521	28	82
1522	28	83
1523	28	84
1524	28	85
1525	28	86
1526	28	87
1527	28	88
1528	28	89
1529	28	90
1530	28	91
1531	28	92
1532	28	93
1533	28	94
1534	28	95
1535	28	96
1536	28	97
1537	28	98
1538	28	99
1539	26	82
1540	26	83
1541	26	84
1542	26	85
1543	26	86
1544	26	87
1545	26	88
1546	26	89
1547	26	90
1548	26	91
1549	26	92
1550	26	93
1551	26	94
1552	26	95
1553	26	96
1554	26	97
1555	26	98
1556	26	99
1557	27	82
1558	27	83
1559	27	84
1560	27	85
1561	27	86
1562	27	87
1563	27	88
1564	27	89
1565	27	90
1566	27	91
1567	27	92
1568	27	93
1569	27	94
1570	27	95
1571	27	96
1572	27	97
1573	27	98
1574	27	99
1575	36	82
1576	36	83
1577	36	84
1578	36	85
1579	36	87
1580	36	86
1581	36	88
1582	36	89
1583	36	90
1584	36	91
1585	36	92
1586	36	93
1587	36	95
1588	36	94
1589	36	97
1590	36	96
1591	36	98
1592	36	99
1593	43	82
1594	43	83
1595	43	84
1596	43	86
1597	43	85
1598	43	87
1599	43	88
1600	43	89
1601	43	90
1602	43	91
1603	43	93
1604	43	92
1605	43	94
1606	43	95
1607	43	96
1608	43	97
1609	43	98
1610	43	99
1611	34	82
1612	34	83
1613	34	85
1614	34	86
1615	34	84
1616	34	87
1617	34	89
1618	34	88
1619	34	90
1620	34	91
1621	34	92
1622	34	93
1623	34	94
1624	34	95
1625	34	96
1626	34	97
1627	34	98
1628	34	99
1629	33	82
1630	33	83
1631	33	85
1632	33	86
1633	33	87
1634	33	88
1635	33	89
1636	33	84
1637	33	90
1638	33	92
1639	33	93
1640	33	91
1641	33	94
1642	33	95
1643	33	96
1644	33	97
1645	33	99
1646	33	98
1647	41	82
1648	41	83
1649	41	84
1650	41	85
1651	41	86
1652	41	87
1653	41	88
1654	41	89
1655	41	90
1656	41	91
1657	41	93
1658	41	92
1659	41	94
1660	41	95
1661	41	96
1662	41	97
1663	41	98
1664	41	99
\.


--
-- Data for Name: Renkler; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."Renkler" ("Grup", "Tip", "Firma", "Kod") FROM stdin;
1	Alt ve üst tabanlar	Tofaş	000-128-000
1	Alt Göbekler ve Sıyırıcılar	Tofaş	000-128-000
1	Döküm Kamlar	Tofaş	211-178-125
1	Standart parçalar	Tofaş	000-000-255
1	Kesme,ütüleme ve bükme çelikleri	Tofaş	175-255-175
1	Ölçü doğruluğu kontrol edilecek işlemesiz yüzeyler	Tofaş	255-128-000
2	2D-Sürtünme kızak ve ayar stoperi altları	Tofaş	255-255-000
2	Tüm 2D işleme yüzeyleri	Tofaş	255-000-000
2	3D işlenecek yüzeyler	Tofaş	255-128-128
3	Normal diş vida delikleri	Tofaş	255-000-255
3	Pim ve Kolon Delikleri	Tofaş	000-255-255
2	2D-İşleme Yüzeyleri	FIAT	255-000-000
2	2D Sürtünme kızak ve ayar stoperi altları	FIAT	255-255-000
2	Hassas kızak altları	FIAT	000-255-000
3	Pim ve Kolon Delikleri	FIAT	000-000-255
2	2D-İşleme Yüzeyleri (Kaba)	Tofaş	95-0-0
2	2D-İşleme Yüzeyleri (İnce)	FIAT	255-0-0
\.


--
-- Data for Name: RenklerTabNames; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."RenklerTabNames" ("GroupIndex", "TabName") FROM stdin;
1	Gövde
2	Yüzeyler
3	Delikler
\.


--
-- Data for Name: STANDARDGROUPS; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public."STANDARDGROUPS" ("STANDARD", "GROUP", "Revizyon_Numarasi", "Revizyon_Tarihi", "Type", "IsActive") FROM stdin;
Kam_Grubu	Kam_Grubu	02	01022019	Product	Evet
001_DrawDieLifterAssembly	Fiat_Montaj	02	01022019	Product	Evet
002_BushingForAirPinExtension	Fiat_Montaj	02	01022019	Product	Evet
003_LifterAssembly	Fiat_Montaj	02	01022019	Product	Evet
Muhre_Grubu_Product	DELME_ELEMANLARI	02	01022019	Product	Evet
Ballock_Zimba_Grubu	DELME_ELEMANLARI	02	01022019	Product	Evet
Pressfit_Zimba_Grubu	DELME_ELEMANLARI	02	01022019	Product	Evet
Hurda_Tavasi_	Hurda_Tavasi_	02	01022019	Product	Evet
ISEDA001Kolon	TOFAS	00	20112019	Part	Evet
ISEDA002AzotSilindiri	TOFAS	00	20112019	Part	Evet
ISEDA003AzotSilindiriTutucu	TOFAS	00	20112019	Part	Evet
ISEDA004AskiCivatasi	TOFAS	00	20112019	Part	Evet
ISEDA005KolonBurcTutucu	TOFAS	00	20112019	Part	Evet
ISEDA006Yayliitici	TOFAS	00	20112019	Part	Evet
ISEDA008DisStoper	TOFAS	00	20112019	Part	Evet
ISEDA009LKizak	TOFAS	00	20112019	Part	Evet
ISEDA010Kamstoperi	TOFAS	00	20112019	Part	Evet
ISEDA011AzotSilindiriKarsiligi	TOFAS	00	20112019	Part	Evet
ISEDA012KamKapaklari	TOFAS	00	20112019	Part	Evet
ISEDA013PnomatikSilindir	TOFAS	00	20112019	Part	Evet
ISEDA014KonikStoper	TOFAS	00	20112019	Part	Evet
ISEDA015Burc	TOFAS	00	20112019	Part	Evet
ISEDA016AciliKizak	TOFAS	00	20112019	Part	Evet
ISEDA017PnoSilKavramaPlakasi	TOFAS	00	20112019	Part	Evet
ISEDA018PnoSilBaglantiAyagi	TOFAS	00	20112019	Part	Evet
ISEDA019EklemBaglantisiAT4	TOFAS	00	20112019	Part	Evet
ISEDA020EklemBaglantisiMP	TOFAS	00	20112019	Part	Evet
ISEDA021EklemBaglantisiCI	TOFAS	00	20112019	Part	Evet
ISEDA022FlansCikariciTip	TOFAS	00	20112019	Part	Evet
ISEDA023KalipMerkezlemePimi	TOFAS	00	20112019	Part	Evet
ISEDA024DerinCekmeSensorDayama	TOFAS	00	20112019	Part	Evet
ISEDA025DayamaSKesim	TOFAS	00	20112019	Part	Evet
ISEDA026HTipiPnoKaldiriciTip1	TOFAS	00	20112019	Part	Evet
ISEDA028PozitifReturnTipA	TOFAS	00	20112019	Part	Evet
ISEDA029PozitifReturnTipB	TOFAS	00	20112019	Part	Evet
ISEDA030PozitifReturnKarsilik	TOFAS	00	20112019	Part	Evet
ISEDA031PistonBaglantisiAD	TOFAS	00	20112019	Part	Evet
ISEDA032KalipMerkezlemesi	TOFAS	00	20112019	Part	Evet
ISEDA033TijMiliKarsiligi	TOFAS	00	20112019	Part	Evet
ISEDA034OtomatikKlempPlakasi	TOFAS	00	20112019	Part	Evet
ISEDA035OtomatikKlempCelikleri	TOFAS	00	20112019	Part	Evet
ISEDA036izZimbasi	TOFAS	00	20112019	Part	Evet
ISEDA037Markalama	TOFAS	00	20112019	Part	Evet
ISEDA038Kama	TOFAS	00	20112019	Part	Evet
ISEDA039TasimaBraketi	TOFAS	00	20112019	Part	Evet
ISEDA040Mapa	TOFAS	00	20112019	Part	Evet
ISEDA041MerkezlemeCivata	TOFAS	00	20112019	Part	Evet
ISEDA042StoplamaCivata	TOFAS	00	20112019	Part	Evet
ISEDA043BilyeBasliMafsal	TOFAS	00	20112019	Part	Evet
ISEDA044PnoSilSomunTutucu	TOFAS	00	20112019	Part	Evet
ISEDA045PnoSilKavSomunu	TOFAS	00	20112019	Part	Evet
ISEDA046VulkolonStoper	TOFAS	00	20112019	Part	Evet
ISEDA047DuzKizak	TOFAS	00	20112019	Part	Evet
ISEDA048LDayama	TOFAS	00	20112019	Part	Evet
ISEDA049DerincekmeSensor	TOFAS	00	20112019	Part	Evet
ISEDA050CevreVulkolon	TOFAS	00	20112019	Part	Evet
ISEDA051VulkolonPimi	TOFAS	00	20112019	Part	Evet
ISEDA052KalipTasimaPernosu	TOFAS	00	20112019	Part	Evet
ISEDA053KalipTasimaPernoBorusu	TOFAS	00	20112019	Part	Evet
ISEDA054AskiEmniyetPimi	TOFAS	00	20112019	Part	Evet
ISEDA055AsEmVulkolon	TOFAS	00	20112019	Part	Evet
ISEDA056VidaliGommeMapa	TOFAS	00	20112019	Part	Evet
ISEDA058CylinderUnionNut	TOFAS	00	20112019	Part	Evet
ISEDA059EmniyetAlani	TOFAS	00	20112019	Part	Evet
ISEDA060PiastraSicurezza	TOFAS	00	20112019	Part	Evet
ISEDA061ManyetikSensor	TOFAS	00	20112019	Part	Evet
ISEDA062IcDenStoper	TOFAS	00	20112019	Part	Evet
ISEDA065istifstoperi	TOFAS	00	20112019	Part	Evet
ISEDA066KamDuzkizak	TOFAS	00	20112019	Part	Evet
ISEDA067DisiVKizak	TOFAS	00	20112019	Part	Evet
ISEDA068ErkekVKizak	TOFAS	00	20112019	Part	Evet
ISEDA069DisliAyarPlakasi	TOFAS	00	20112019	Part	Evet
ISEDA070HTipiKamPlaka	TOFAS	00	20112019	Part	Evet
ISEDA073AzotSaati	TOFAS	00	20112019	Part	Evet
ISEDA074ElektrikKutusu	TOFAS	00	20112019	Part	Evet
ISEDA075ElektrikSoketi	TOFAS	00	20112019	Part	Evet
ISEDA076HavaTanki	TOFAS	00	20112019	Part	Evet
ISEDA078BasincliHavaHortumu	TOFAS	00	20112019	Part	Evet
ISEDA079CabukBaglantiRekoruT	TOFAS	00	20112019	Part	Evet
ISEDA080SensorBaglantisi	TOFAS	00	20112019	Part	Evet
ISEDA081EmniyetCenesi	TOFAS	00	20112019	Part	Evet
ISEDA082SiyiriciMesafeStoperi	TOFAS	00	20112019	Part	Evet
ISEDA083HavaGirisNozulu	TOFAS	00	20112019	Part	Evet
ISEDA084HavaBaglantiBraketi	TOFAS	00	20112019	Part	Evet
ISEDA085PnomatikKumandaliValf	TOFAS	00	20112019	Part	Evet
ISEDA086MekanikKumandaliValf	TOFAS	00	20112019	Part	Evet
ISEDA087AzotBaglantiRekor	TOFAS	00	20112019	Part	Evet
ISEDA088BaglantiPlakasi	TOFAS	00	20112019	Part	Evet
ISEDA089CatalMafsal	TOFAS	00	20112019	Part	Evet
ISEDA090EklemYerBaglanti	TOFAS	00	20112019	Part	Evet
ISEDA091PnomatikZimbaTutucu	TOFAS	00	20112019	Part	Evet
ISEDA092PozitifReturnluVKizak	TOFAS	00	20112019	Part	Evet
ISEDA093KamDuzCelikKizak	TOFAS	00	20112019	Part	Evet
ISEDA094PnomatikTutucu	TOFAS	00	20112019	Part	Evet
ISEDA095CabukBaglantiSoketi	TOFAS	00	20112019	Part	Evet
ISEDA096LotZimbasi	TOFAS	00	20112019	Part	Evet
ISEDA097AvareMakara	TOFAS	00	20112019	Part	Evet
ISEDA098MerkezlemeMakara	TOFAS	00	20112019	Part	Evet
ISEDA099MekanikMikroSwitch	TOFAS	00	20112019	Part	Evet
ISEDA100BasincSensor	TOFAS	00	20112019	Part	Evet
ISEDA101YaglamaUnitesi	TOFAS	00	20112019	Part	Evet
ISEDA102YaglamaUnitesiUzatmasi	TOFAS	00	20112019	Part	Evet
ISEDA103YaglamaBaglantiAparati	TOFAS	00	20112019	Part	Evet
ISEDA104KamKapaklari2	TOFAS	00	20112019	Part	Evet
ISEDA105KamEmniyetUstKizak	TOFAS	00	20112019	Part	Evet
ISEDA106TitresimliKonveyor	TOFAS	00	20112019	Part	Evet
ISEDA107Civata	TOFAS	00	20112019	Part	Evet
ISEDA108LiftingPinFIAT	TOFAS	00	20112019	Part	Evet
ISEDA109Guidepinpad	TOFAS	00	20112019	Part	Evet
ISEDA110BotMarkerFIAT	TOFAS	00	20112019	Part	Evet
ISEDA111LotPunchRetainerFIAT	TOFAS	00	20112019	Part	Evet
ISEDA118SprialHortum2	TOFAS	00	20112019	Part	Evet
ISEDA119SafetyPlateFIAT	TOFAS	00	20112019	Part	Evet
ISEDA120LProfil	TOFAS	00	20112019	Part	Evet
ISEDA501GuidePost	FIAT	00	15112019	Part	Evet
ISEDA502NitrogenGasSpring	FIAT	00	15112019	Part	Evet
ISEDA503GasSpringMount	FIAT	00	15112019	Part	Evet
ISEDA504PadRetainer	FIAT	00	15112019	Part	Evet
ISEDA505PadBushingClamps	FIAT	00	15112019	Part	Evet
ISEDA506CoilSpringPlunger	FIAT	00	15112019	Part	Evet
ISEDA507PrecenteringPlate	FIAT	00	15112019	Part	Evet
ISEDA508StopBlockDieSpacer	FIAT	00	15112019	Part	Evet
ISEDA509CamKeeperBlocks	FIAT	00	15112019	Part	Evet
ISEDA510CamShockAbsorbingStop	FIAT	00	15112019	Part	Evet
ISEDA511NitrogenStrikerPlate	FIAT	00	15112019	Part	Evet
ISEDA512UpperCamGibPlate	FIAT	00	15112019	Part	Evet
ISEDA513AirCylinder	FIAT	00	15112019	Part	Evet
ISEDA514ConeBalancerBlock	FIAT	00	15112019	Part	Evet
ISEDA515Bush	FIAT	00	15112019	Part	Evet
ISEDA516FillerCamPlate	FIAT	00	15112019	Part	Evet
ISEDA517FlangeMount	FIAT	00	15112019	Part	Evet
ISEDA518FootMount	FIAT	00	15112019	Part	Evet
ISEDA519TrunnionPivotBracketAT4	FIAT	00	15112019	Part	Evet
ISEDA520ClevisMount_MP	FIAT	00	15112019	Part	Evet
ISEDA521CenterTrunnionMount	FIAT	00	15112019	Part	Evet
ISEDA522FlangeLifter	FIAT	00	15112019	Part	Evet
ISEDA523CenteringPin	FIAT	00	15112019	Part	Evet
ISEDA524GageForSensor	FIAT	00	15112019	Part	Evet
ISEDA525GagesForFlatS	FIAT	00	15112019	Part	Evet
ISEDA526Lifter1	FIAT	00	15112019	Part	Evet
ISEDA528PositiveReturnPlateA	FIAT	00	15112019	Part	Evet
ISEDA529PositiveReturnPlateB	FIAT	00	15112019	Part	Evet
ISEDA530RetainerPlate	FIAT	00	15112019	Part	Evet
ISEDA531TrunnionSupportMounting	FIAT	00	15112019	Part	Evet
ISEDA532Locating	FIAT	00	15112019	Part	Evet
ISEDA533AirPin	FIAT	00	15112019	Part	Evet
ISEDA538Key	FIAT	00	15112019	Part	Evet
ISEDA539LiftingBrackets	FIAT	00	15112019	Part	Evet
ISEDA540SafetyEyebolt	FIAT	00	15112019	Part	Evet
ISEDA541CollarScrew	FIAT	00	15112019	Part	Evet
ISEDA542PadRetainer	FIAT	00	15112019	Part	Evet
ISEDA543SwivelRod	FIAT	00	15112019	Part	Evet
ISEDA544CouplingPlate	FIAT	00	15112019	Part	Evet
ISEDA545CouplingNut	FIAT	00	15112019	Part	Evet
ISEDA546SpringPin	FIAT	00	15112019	Part	Evet
ISEDA547WearPlate	FIAT	00	15112019	Part	Evet
ISEDA548Gage	FIAT	00	15112019	Part	Evet
ISEDA549FlipperGageWithSensor	FIAT	00	15112019	Part	Evet
ISEDA550ElastomerSpring	FIAT	00	15112019	Part	Evet
ISEDA551ElastomerSpringPin	FIAT	00	15112019	Part	Evet
ISEDA553CastingDieLPins	FIAT	00	15112019	Part	Evet
ISEDA554PadRetainerPin	FIAT	00	15112019	Part	Evet
ISEDA555ShockAbsorber	FIAT	00	15112019	Part	Evet
ISEDA556CastInThreadedInserts	FIAT	00	15112019	Part	Evet
ISEDA558CylinderUnionNut	FIAT	00	15112019	Part	Evet
ISEDA559SafetyZone	FIAT	00	15112019	Part	Evet
ISEDA560PiastraSicurezza	FIAT	00	15112019	Part	Evet
ISEDA561Sensor	FIAT	00	15112019	Part	Evet
ISEDA562CompensationBlock	FIAT	00	15112019	Part	Evet
ISEDA565SpacingBlock	FIAT	00	15112019	Part	Evet
ISEDA566CamSlidePlate	FIAT	00	15112019	Part	Evet
ISEDA567UpperVGuide	FIAT	00	15112019	Part	Evet
ISEDA568LowerVGuide	FIAT	00	15112019	Part	Evet
ISEDA569SpacerPlate	FIAT	00	15112019	Part	Evet
ISEDA570CamDwellWearPlates	FIAT	00	15112019	Part	Evet
ISEDA573NitrogenControlPanel	FIAT	00	15112019	Part	Evet
ISEDA574ElectricalBox	FIAT	00	15112019	Part	Evet
ISEDA575ElectricPlug	FIAT	00	15112019	Part	Evet
ISEDA576CompensationTanks	FIAT	00	15112019	Part	Evet
ISEDA578AirCable	FIAT	00	15112019	Part	Evet
ISEDA579ConnectorsForTubing	FIAT	00	15112019	Part	Evet
ISEDA580JumperCables	FIAT	00	15112019	Part	Evet
ISEDA582StopBlockForUpperPad	FIAT	00	15112019	Part	Evet
ISEDA583AirNozzle	FIAT	00	15112019	Part	Evet
ISEDA584AirCouplingBracket	FIAT	00	15112019	Part	Evet
ISEDA585ControlValve	FIAT	00	15112019	Part	Evet
ISEDA586MechanicalControlValves	FIAT	00	15112019	Part	Evet
ISEDA587ConnectionToCylinder	FIAT	00	15112019	Part	Evet
ISEDA588DistributionBlocks	FIAT	00	15112019	Part	Evet
ISEDA589RodEndClevis	FIAT	00	15112019	Part	Evet
ISEDA590AB7PivotBracket	FIAT	00	15112019	Part	Evet
ISEDA591ChangeRetainers	FIAT	00	15112019	Part	Evet
ISEDA592VDriver	FIAT	00	15112019	Part	Evet
ISEDA593CamSlidePlate	FIAT	00	15112019	Part	Evet
ISEDA594ForkPawl	FIAT	00	15112019	Part	Evet
ISEDA595SensorCouplingAssembly	FIAT	00	15112019	Part	Evet
ISEDA596TredemarkStamps	FIAT	00	15112019	Part	Evet
ISEDA597RollerStockLifter	FIAT	00	15112019	Part	Evet
ISEDA598CoilGuideRoller	FIAT	00	15112019	Part	Evet
ISEDA599MicroSwitch	FIAT	00	15112019	Part	Evet
ISEDA600PressureMonitoring	FIAT	00	15112019	Part	Evet
ISEDA601LubricationUnit	FIAT	00	15112019	Part	Evet
ISEDA602UnitConnector	FIAT	00	15112019	Part	Evet
ISEDA603UnitConnector2	FIAT	00	15112019	Part	Evet
ISEDA604UpperCamGibPlate	FIAT	00	15112019	Part	Evet
ISEDA605CamSlideCoverPlate	FIAT	00	15112019	Part	Evet
ISEDA606VibrantEjectors	FIAT	00	15112019	Part	Evet
ISEDA607Screw	FIAT	00	15112019	Part	Evet
ISEDA608LiftingPinFIAT	FIAT	00	15112019	Part	Evet
ISEDA609Guidepinpad	FIAT	00	15112019	Part	Evet
ISEDA610BotMarkerFIAT	FIAT	00	15112019	Part	Evet
ISEDA611LotPunchRetainerFIAT	FIAT	00	15112019	Part	Evet
ISEDA618SprialCable2	FIAT	00	15112019	Part	Evet
ISEDA114ValfliManifold	TOFAS	00	20112019	Part	Evet
ISEDA115HizliTahliye	TOFAS	00	20112019	Part	Evet
ISEDA116AirFilReg	TOFAS	00	20112019	Part	Evet
ISEDA117KontrolValfi	TOFAS	00	20112019	Part	Evet
ISEDA614ValveManifold	FIAT	00	15112019	Part	Evet
ISEDA615QuickExhaustValves	FIAT	00	15112019	Part	Evet
ISEDA616AirFilReg	FIAT	00	15112019	Part	Evet
ISEDA617FlowControlValve	FIAT	00	15112019	Part	Evet
ISEDA619SafetyPlateFIAT	FIAT	00	15112019	Part	Evet
ISEDA620LProfil	FIAT	00	15112019	Part	Evet
004_5_7_9Clamps	Fiat_Montaj	00	19112019	Product	Evet
005_AluminiumSensorGroup	Fiat_Montaj	00	19112019	Product	Evet
301_Spiral_Hortum	Tofas_Montaj	00	19112019	Product	Evet
006_PinzaConSensore	Fiat_Montaj	00	19112019	Product	Evet
ISEDA007ErtalonKizak	TOFAS	00	20112019	Part	Evet
ISEDA121PotAskiCivatasiFIAT	TOFAS	00	20112019	Part	Evet
ISEDA621SpoolRetainer	FIAT	00	20112019	Part	Evet
ISEDA113TrueStripper	TOFAS	00	20112019	Part	Evet
ISEDA613TrueStripper	FIAT	00	20112019	Part	Evet
ISEDA122TamirKulesi	DOKUM_IMALAT	00	23112019	Part	Evet
ISEDA123TamirFederi	DOKUM_IMALAT	00	23112019	Part	Evet
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add Sohbet	7	add_conversation
26	Can change Sohbet	7	change_conversation
27	Can delete Sohbet	7	delete_conversation
28	Can view Sohbet	7	view_conversation
29	Can add Mesaj	8	add_message
30	Can change Mesaj	8	change_message
31	Can delete Mesaj	8	delete_message
32	Can view Mesaj	8	view_message
33	Can add document chunk	9	add_documentchunk
34	Can change document chunk	9	change_documentchunk
35	Can delete document chunk	9	delete_documentchunk
36	Can view document chunk	9	view_documentchunk
37	Can add Global Doküman	10	add_globaldocument
38	Can change Global Doküman	10	change_globaldocument
39	Can delete Global Doküman	10	delete_globaldocument
40	Can view Global Doküman	10	view_globaldocument
41	Can add Doküman	11	add_document
42	Can change Doküman	11	change_document
43	Can delete Doküman	11	delete_document
44	Can view Doküman	11	view_document
45	Can add system prompt	12	add_systemprompt
46	Can change system prompt	12	change_systemprompt
47	Can delete system prompt	12	delete_systemprompt
48	Can view system prompt	12	view_systemprompt
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: chat_conversation; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.chat_conversation (id, title, created_at, updated_at, summary) FROM stdin;
0ff7e17b-e82e-4e52-8a78-aaac94f09e30	St37 malzeme detaylarını getir	2026-07-23 07:43:50.950597+00	2026-07-23 07:43:53.45929+00	\N
def5484e-154d-4fe9-bc3f-896ba62cc3b4	Aktif modül standart grupları	2026-07-23 07:49:46.51927+00	2026-07-23 07:49:49.253236+00	\N
1510c907-5201-4b52-95a3-69585912bafc	ISEDA013 parçasının boyutları nelerdir?	2026-07-23 07:55:21.963436+00	2026-07-23 07:56:24.757167+00	\N
c3bb9842-9270-4a81-a1b3-3184324e1071	Yeni Sohbet	2026-07-23 08:11:30.967525+00	2026-07-23 08:11:30.967544+00	\N
d11c8839-de3e-4621-bdf2-7b5fbc53eabc	bu dökümantsondaki faz 3 ne oluyor	2026-07-23 08:11:31.13004+00	2026-07-23 08:11:59.846414+00	\N
5e0df8d0-ff9e-4341-9ef5-19fda4bccba0	Aktif modül standart grupları	2026-07-23 08:17:40.705364+00	2026-07-23 08:17:58.010311+00	\N
\.


--
-- Data for Name: chat_message; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.chat_message (id, role, content, created_at, conversation_id) FROM stdin;
239c6fa3-72f9-4aa4-bc4a-fb18152798c5	user	St37 malzeme detaylarını getir	2026-07-23 07:43:52.997521+00	0ff7e17b-e82e-4e52-8a78-aaac94f09e30
1e7ba12f-f64b-4dc7-b2af-3ea7d192a396	assistant	⚠️ Ollama'ya bağlanamadım. Lütfen Ollama'nın çalıştığından emin olun: `ollama serve` komutunu terminalde çalıştırın.	2026-07-23 07:43:53.457159+00	0ff7e17b-e82e-4e52-8a78-aaac94f09e30
fa860dd6-aa7d-49f5-83c8-753cc015d152	user	Aktif modül standart grupları	2026-07-23 07:49:49.061255+00	def5484e-154d-4fe9-bc3f-896ba62cc3b4
fbfbafbb-bfc7-41e3-a71a-f8668c44c831	assistant	⚠️ Ollama'ya bağlanamadım. Lütfen Ollama'nın çalıştığından emin olun: `ollama serve` komutunu terminalde çalıştırın.	2026-07-23 07:49:49.251273+00	def5484e-154d-4fe9-bc3f-896ba62cc3b4
7ab701e5-f04f-453c-855a-fc602a22b494	user	ISEDA013 parçasının boyutları nelerdir?	2026-07-23 07:55:24.009426+00	1510c907-5201-4b52-95a3-69585912bafc
84311195-4124-4cf0-a65a-9c413490904e	assistant	İSEDA013 parçasının boyutları şu şekildedir:\n\n- Boy (mm): 124\n- Kursa (mm): 30\n\nDiğer detaylı parametreler:\n- Ust Taban (mm): 25,1\n- Alt Taban (mm): 25,1\n- Piston Baslama Plane (mm): 47\n- Somun Baslama Plane (mm): 30\n- Piston Dip Genislik (mm): 6\n- Piston Dip Cap (mm): 32\n- Piston Govde Cap (mm): 12\n- Piston Govde Uzunluk (mm): 97\n- Piston Sap Uzunluk (mm): 22\n- Piston Sap Cap (mm): 10\n- Ust Pad 1 (mm): 10\n- Ust Pad Cap 1 (mm): 30\n- Ust Pad 2 (mm): 7\n- Alt Pad (mm): 4\n- Somun Genislik (mm): 17\n- Somun Pad (mm): 5\n- Delik YZ (mm): 5,2\n- Delik XY (mm): 15,6\n- Delik Cap (mm): 8,566\n- Delik Derinlik (mm): 11,015\n- EN1 (mm): 45,5\n- EN2 (mm): 75,5\n\nBu parçanın tipi 32 ve boyutu 124 mm'dir.	2026-07-23 07:56:24.754548+00	1510c907-5201-4b52-95a3-69585912bafc
a2fe4292-2b3f-41c1-a377-5c4992ef5c9b	user	faz 3 nedir	2026-07-23 08:10:19.856905+00	1510c907-5201-4b52-95a3-69585912bafc
b73f3821-ddce-4bfb-8270-adc14ac3c1bd	assistant	Bu konuda yeterli bilgiye sahip değilim.	2026-07-23 08:10:32.448542+00	1510c907-5201-4b52-95a3-69585912bafc
9d65703c-e9e1-4369-b5fe-b0219bf3b1e8	user	bu dökümantsondaki faz 3 ne oluyor	2026-07-23 08:11:54.388079+00	d11c8839-de3e-4621-bdf2-7b5fbc53eabc
a17a4945-9862-4cc9-9934-7690b4da81e5	assistant	Bu konuda yeterli bilgiye sahip değilim. Lütfen AKTAP destek ekibiyle iletişime geçin veya ilgili modül dokümantasyonunu inceleyin.	2026-07-23 08:11:59.841851+00	d11c8839-de3e-4621-bdf2-7b5fbc53eabc
50fe8a27-3893-4f9a-abe6-0fef424b4423	user	Aktif modül standart grupları	2026-07-23 08:17:42.564076+00	5e0df8d0-ff9e-4341-9ef5-19fda4bccba0
783eb33a-d2af-4396-8acb-48764b96799d	assistant	Aktif modüllerdeki standart gruplar şunlardır:\n\n- Kam_Grubu\n- Fiat_Montaj\n- DELME_ELEMANLARI\n- Hurda_Tavasi_\n- TOFAS\n\nHer gruba ait verilerin türü "Product" veya "Part" olup, tüm kayıtlar 01022019 ve 20112019 tarihlerine dayanmaktadır.	2026-07-23 08:17:58.006771+00	5e0df8d0-ff9e-4341-9ef5-19fda4bccba0
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	chat	conversation
8	chat	message
9	rag	documentchunk
10	documents	globaldocument
11	documents	document
12	prompts	systemprompt
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-07-23 07:43:04.170161+00
2	auth	0001_initial	2026-07-23 07:43:04.443451+00
3	admin	0001_initial	2026-07-23 07:43:04.514154+00
4	admin	0002_logentry_remove_auto_add	2026-07-23 07:43:04.529982+00
5	admin	0003_logentry_add_action_flag_choices	2026-07-23 07:43:04.538898+00
6	contenttypes	0002_remove_content_type_name	2026-07-23 07:43:04.56311+00
7	auth	0002_alter_permission_name_max_length	2026-07-23 07:43:04.579907+00
8	auth	0003_alter_user_email_max_length	2026-07-23 07:43:04.600831+00
9	auth	0004_alter_user_username_opts	2026-07-23 07:43:04.620406+00
10	auth	0005_alter_user_last_login_null	2026-07-23 07:43:04.641327+00
11	auth	0006_require_contenttypes_0002	2026-07-23 07:43:04.643464+00
12	auth	0007_alter_validators_add_error_messages	2026-07-23 07:43:04.657727+00
13	auth	0008_alter_user_username_max_length	2026-07-23 07:43:04.696191+00
14	auth	0009_alter_user_last_name_max_length	2026-07-23 07:43:04.709574+00
15	auth	0010_alter_group_name_max_length	2026-07-23 07:43:04.730352+00
16	auth	0011_update_proxy_permissions	2026-07-23 07:43:04.74942+00
17	auth	0012_alter_user_first_name_max_length	2026-07-23 07:43:04.760595+00
18	chat	0001_initial	2026-07-23 07:43:04.836219+00
19	chat	0002_conversation_summary	2026-07-23 07:43:04.858231+00
20	chat	0003_document	2026-07-23 07:43:04.915916+00
21	chat	0004_globaldocument	2026-07-23 07:43:04.950754+00
22	chat	0005_remove_document_conversation_delete_globaldocument_and_more	2026-07-23 07:43:04.966834+00
23	documents	0001_initial	2026-07-23 07:43:05.062055+00
24	prompts	0001_initial	2026-07-23 07:43:05.123224+00
25	rag	0001_initial	2026-07-23 07:43:05.214682+00
26	sessions	0001_initial	2026-07-23 07:43:05.28384+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: documents_document; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.documents_document (id, file, filename, extracted_text, created_at, conversation_id) FROM stdin;
ac42a1f1-5e7b-46b9-a1de-22b9a640f3cf	documents/Dinamik_Programlama_Raporu.docx	Dinamik Programlama Raporu.docx	Dinamik Programlama ve Örnek Algoritma Analizleri\nGiriş ve Tarihsel Arka Plan\n\nBilgisayar bilimleri ve yöneylem araştırmaları literatüründe, karmaşık karar problemlerinin çözümünde kullanılan en güçlü paradigmalardan biri Dinamik Programlama (Dynamic Programming - DP) yöntemidir. Bu yaklaşım, özünde karma- şık ve büyük ölçekli problemleri, daha küçük, yönetilebilir ve birbirini tekrar eden alt problemlere bölerek çözen bir optimizasyon stratejisidir [1, 2]. Dinamik programlamanın temel felsefesi, hesaplama kaynaklarının verimli kullanımına dayanır; bir alt problem bir kez çözüldüğünde, elde edilen sonuç saklanır ve gelecekte aynı alt problemle karşılaşıldığında yeniden hesaplama yapılmadan bu saklanan değer kullanılır. Bu süreç, literatürde ”hafızalama” (memoization) veya ”tablolama” (tabulation) olarak adlandırılır [3, 4].\n\nDinamik programlama terimi, 1950’li yıllarda matematikçi Richard Bellman tarafından literatüre kazandırılmıştır. Bellman, o dönemde RAND Corporation’da çalışırken, çok aşamalı karar süreçleri üzerine yaptığı araştırmaları tanımlamak için bu ismi seçmiştir. İlginç bir tarihsel detay olarak, ”programlama” kelimesi burada bilgisayar kodlamasını değil, askeri ve endüstriyel lojistikte kullanılan ”çizelgeleme” veya ”planlama” kavramını ifade etmektedir. Bellman, ”dinamik” kelimesini ise, araştırmalarının durağan olmayan, zamanla değişen doğasını vurgulamak ve o dönemde matematiksel araştırmalara fon sağlayan kurumların te- orik matematiğe olan mesafeli duruşunu aşmak amacıyla, kulağa etkileyici gelen bir terim olarak tercih etmiştir [1, 5]. Bellman’ın 1957 yılında yayınlanan ”Dynamic Programming” adlı eseri, bu alanın temel taşı olarak kabul edilmekte ve optimizasyon teorisinde bir dönüm noktası sayılmaktadır [5, 6].\n\nDinamik programlama, özellikle ”Optimal Altyapı” (Optimal Substructure) ve ”Örtüşen Alt Problemler” (Overlapping Subproblems) özelliklerini taşıyan problemlerin çözümünde etkilidir. Bu yöntem, biyoinformatikten (DNA dizileme) ağ yönlendirme protokollerine, finansal portföy yönetiminden robotik hareket planla- maya kadar geniş bir uygulama yelpazesine sahiptir. Bu rapor, dinamik program- lamanın teorik temellerini, temel algoritmalarını (Sırt Çantası, En Uzun Ortak Alt Dizi, Matris Zincir Çarpımı, Floyd-Warshall) ve bu algoritmaların karmaşlık analizlerini derinlemesine incelemeyi amaçlamaktadır.\n\nDinamik Programlamanın Teorik Temelleri\n\nBir problemin dinamik programlama ile çözülebilmesi için sağlaması gereken iki kritik özellik bulunmaktadır. Bu özelliklerin varlığı, problemin özyineli (re- cursive) bir yapıda olduğunu ve bu yapının verimli bir şekilde optimize edilebi- leceğini garanti eder.\n\nOptimal Altyapı (Optimal Substructure)\n\nOptimal altyapı özelliği, bir problemin global optimal çözümünün, o problemin alt problemlerinin optimal çözümleri kullanılarak inşa edilebileceğini ifade eder. Bu prensip, Bellman’ın ”Optimallik Prensibi” (Principle of Optimality) ile formüle edilmiştir. Bellman’a göre, optimal bir politika, başlangıç durumu ve ilk karar ne olursa olsun, geri kalan kararların ilk karardan doğan duruma göre optimal bir politika oluşturması özelliğine sahiptir [2].\n\nMatematiksel olarak ifade etmek gerekirse, eğer bir problem P , P1, P2, . . . , Pk alt problemlerinden oluşuyorsa ve P ’nin optimal çözümü S, Pi alt problemlerinin optimal çözümleri Si’yi içeriyorsa, bu problem optimal altyapıya sahiptir. Bu özel- lik, genellikle ”kes-ve-yapıştır” (cut-and-paste) tekniği ile kanıtlanır. Örneğin, bir çizgede u ve v düğümleri arasındaki en kısa yol problemi ele alındığında, eğer bu yol x düğümünden geçiyorsa, u → x arasındaki yol da u ile x arasındaki en kısa yol olmalıdır. Eğer u → x arasında daha kısa bir yol bulunsaydı, bu yeni yol kullanılarak u → v arasındaki toplam yol kısaltılabilirdi, bu da başlangıçtaki ”en kısa yol” varsayımıyla çelişirdi. Bu mantıksal çıkarım, problemin daha kü- çük parçalara bölünerek (Divide and Conquer) çözülebileceğini gösterir. Ancak dinamik programlamayı ”Böl ve Yönet”ten ayıran temel fark, ikinci özellik olan örtüşen alt problemlerdir [4].\n\n\nÖrtüşen Alt Problemler (Overlapping Subproblems)\n\nÖrtüşen alt problemler özelliği, bir problemin çözümü sırasında aynı alt problemlerin tekrar tekrar çözülmesi gerektiğini belirtir. Özyineli bir algoritma, aynı girdiye sahip alt problemleri birden fazla kez çağırıyorsa, bu problem örtüşen alt problemlere sahiptir. Bu durum, dinamik programlamanın verimlilik sağladığı ana noktadır.\nKlasik bir örnek olarak Fibonacci serisinin hesaplanması verilebilir. F (n) = F (n− 1) + F (n − 2) bağıntısı ile tanımlanan seride, F (5) hesaplanırken F (3) değeri hem F (4)’ün hesaplanmasında hem de doğrudan F (5)’in alt dalı olarak hesaplanmasında kullanılır. n değeri büyüdükçe, tekrarlanan hesaplamaların sayısı üstel ola- rak artar (O(2n)). Dinamik programlama, her bir alt problemin sonucunu bir tab- loda saklayarak bu tekrarları engeller ve zaman karmaşıklığını lineer seviyeye (O(n)) indirir. Böl ve Yönet algoritmalarında (örneğin Merge Sort) ise alt problemler genellikle ayrıktır (disjoint) ve her biri bağımsız olarak çözülür; bu nedenle sonuçları saklamaya gerek duyulmaz.\n\nUygulama Yöntemleri: Memoization ve Tabulation\n\nDinamik programlama çözümleri iki ana yaklaşım ile kodlanabilir:\n\nYukarıdan-Aşağıya (Top-Down) Yaklaşım (Memoization): Bu yöntemde prob- lem, doğal özyineli yapısı korunarak kodlanır. Ancak, fonksiyon her çağrıldığında, hesaplanan sonucun daha önce hesaplanıp hesaplanmadığı bir veri yapısında (dizi veya hash tablosu) kontrol edilir. Eğer sonuç mevcutsa, yeniden hesaplama yapılmadan bu değer döndürülür; değilse hesaplama yapılır ve sonuç saklanır [3].\n\nAşağıdan-Yukarıya (Bottom-Up) Yaklaşım (Tabulation): Bu yöntemde ise özyineleme yerine iteratif döngüler kullanılır. En küçük alt problemden (temel durum) başlanarak, sonuçlar bir tabloya (genellikle matris veya dizi) sırasıyla doldurulur. Büyük problemin çözümü, tablonun son hücresinde elde edilir. Bu yöntem yığın taşması (stack overflow) riskini ortadan kaldırır ve bellek erişim desenleri açısından genellikle daha verimlidir.\n\n\n\n\n\nAlgoritma Analizi: 0/1 Sırt Çantası Problemi\n\nSırt çantası problemi, kombinatoryal optimizasyonun en temel problemlerinden biridir ve kaynak tahsisi problemlerinin modellenmesinde kritik rol oynar.\n\nProblem Tanımı ve Matematiksel Model\n\n0/1 Sırt Çantası probleminde, bir hırsızın W kapasiteli bir sırt çantası ve n adet nesnesi olduğu varsayılır. Her i. nesnenin bir ağırlığı (wi) ve bir değeri (vi) vardır.\nAmaç, toplam ağırlığı kapasiteyi aşmayacak şekilde (Σ wixi ≤ W ) toplam değeri\n(Σ vixi) maksimize etmektir. Buradaki kısıt, her nesnenin ya tam olarak alınması\n(xi = 1) ya da hiç alınmamasıdır (xi = 0); nesneler parçalanamaz. Bu özellik, problemi ”Kesirli Sırt Çantası” (Fractional Knapsack) probleminden ayırır. Kesirli versiyon, birim ağırlık başına düşen değere göre sıralama yapan açgözlü (greedy) yaklaşım ile çözülebilirken, 0/1 versiyonunda açgözlü yaklaşım optimal sonucu garanti etmez [7].\n\nDinamik Programlama Çözümü ve Yineleme Bağıntısı”\n\nProblemin çözümü için V [i][w] şeklinde iki boyutlu bir durum tanımlanır. Bu ifade, ilk i nesne arasından seçim yapılarak, maksimum w ağırlık kapasitesi ile elde edilebilecek en yüksek değeri temsil eder. Her nesne için iki karar durumu mevcut- tur: Nesneyi almama veya nesneyi alma.\n\nYineleme bağıntısı (recurrence relation) şöyledir:\nTemel durumlar: V [w] = 0 (Hiç nesne yoksa) ve V [i] = 0 (Kapasite 0 ise).\n\nAlgoritma Analizi ve Karmaşıklık\n\nBu problemi çözmek için (n + 1) × (W + 1) boyutunda bir tablo oluşturulur. Tablonun her hücresi sabit zamanda (O(1)) doldurulur.\n\nZaman Karmaşıklığı: O(n · W ). Burada n nesne sayısı, W ise kapasitedir. Bu karmaşıklık ”sözde-polinom” (pseudo-polynomial) olarak adlandırılır. Çünkü W değeri, girdinin boyutu (bit sayısı) ile değil, sayısal değeriyle orantılıdır.\n\nUzay Karmaşıklığı: Standart çözümde O(n·W ) bellek alanı gerekir. Ancak, V [i][w] değerini hesaplamak için sadece bir önceki satıra (V [i − 1]) ihtiyaç duyulduğun- dan, uzay karmaşıklığı iki satırlık bir dizi kullanılarak O(W ) seviyesine düşürülebilir.\nÖrnek Senaryo: Adım Adım İşleyiş\n\nAşağıdaki verilerle bir örnek senaryo inceleyelim: Kapasite (W ): 4. Nesne 1: (2kg, 12), Nesne 2: (1kg, 10), Nesne 3: (3kg, 20).\n\nTablo 1: 0/1 Sırt Çantası Problemi Çözüm Tablosu\n\n\nSonuç olarak maksimum değer 30 olarak bulunur (Nesne 2 ve Nesne 3 seçilerek).\n\nAlgoritma Analizi: En Uzun Ortak Alt Dizi (LCS)\n\nEn Uzun Ortak Alt Dizi (LCS) problemi, diziler arasındaki benzerliği ölçmek için kullanılan temel bir algoritmadır. Bu problem, karakterlerin ardışık olma zorunluluğu olmadan (ancak sırası korunarak) iki dizide de bulunan en uzun karakter dizisini bulmayı amaçlar.\n\nBiyoinformatik ve Diğer Uygulama Alanları\n\nLCS algoritması, teorik bilgisayar bilimlerinin ötesinde, özellikle biyoinformatik alanında hayati bir öneme sahiptir. DNA, RNA ve protein dizileri arasındaki genetik akrabalığı tespit etmek, evrimsel ilişkileri analiz etmek veya genetik mutasyonları belirlemek için bu dizilerin hizalanması gerekir. Ayrıca, yazılım mühendisliğinde versiyon kontrol sistemleri (Git vb.), dosyalar arasındaki değişiklikleri tespit etmek için LCS kullanır [8].\n\n\nDinamik Programlama ile Çözüm\n\nİki dizi X ve Y için yineleme bağıntısı (c[i, j] tablosu uzunlukları tutar):\n\n\n\nKarmaşıklık Analizi\n\nStandart DP tablolama yöntemi ile LCS probleminin zaman karmaşıklığı O(m × n)’dir. Uzay karmaşıklığı da tablonun tamamının saklanması durumunda O(m × n)’dir. Çok büyük veri setlerinde bellek kullanımını azaltmak için Hirschberg Algoritması kullanılır. Hirschberg Algoritması, ”Böl ve Yönet” stratejisini kullanarak uzay karmaşıklığını lineer seviyeye (O(min(m, n))) indirir [9].\n\nAlgoritma Analizi: Matris Zincir Çarpımı\n\nMatris Zincir Çarpımı problemi, bir dizi matrisin çarpılması gerektiğinde, toplam skaler çarpım sayısını minimize edecek parantezleme sırasının bulunması problemidir. Matris çarpımı ilişkiseldir ancak çarpım sırası hesaplama maliye- tini dramatik şekilde değiştirir. \n\nDinamik Programlama Çözümü\n\nProblem, bir zinciri daha küçük iki zincire bölme mantığına dayanır. Yineleme bağıntısı (m[i, j] minimum çarpım sayısını tutar): \n\nKarmaşıklık Analizi\n\nAlgoritma, matris zincir uzunluğu L = 2’den n’e kadar artacak şekilde tabloyu doldurur. Toplam zaman karmaşıklığı O(n3)’tür. Uzay karmaşıklığı ise O(n2)’dir.\n\nAlgoritma Analizi: Floyd-Warshall Algoritması\n\nFloyd-Warshall algoritması, ağırlıklı bir grafikteki tüm düğüm çiftleri arasındaki en kısa yolu (All-Pairs Shortest Path) bulmak için kullanılır. Negatif kenar ağırlıklarını desteklemesiyle Dijkstra algoritmasından ayrılır.\n\n                 \n\n\n\n\nAlgoritmanın Mantığı\n\nD(k)[i][j] ifadesi, ara düğüm olarak sadece {1, 2, . . . , k} kümesindeki düğümlerin kullanılmasına izin verildiğinde, i’den j’ye olan en kısa yolu temsil eder. Yineleme bağıntısı:\n\nD(k)[i][j] = min(D(k−1)[i][j],\tD(k−1)[i][k] + D(k−1)[k][j])\n\nUygulama ve Karşılaştırma\n\nAlgoritma üç iç içe döngüden oluşur ve zaman karmaşıklığı O(N 3)’tür. Yoğun (Dense) graflarda oldukça verimlidir. Negatif döngülerin tespit edilmesinde (ör- neğin finansal arbitraj fırsatlarında) kullanılabilir.\n\nTablo 2: Floyd-Warshall ve Dijkstra Karşılaştırması\n\nTablo 3: Bellman-Ford, Floyd-Marshall Dijkstra Algoitmalaırının en kısa yol (shortest path) algoritmasının performans karşılaştırmasını gösteren grafik. X : node/vertex Y: Geçen süre\nSonuç\n\nBu raporda incelenen Dinamik Programlama paradigması, optimal altyapı ve örtüşen alt problemler özelliklerine sahip karmaşık problemlerin çözümünde vazgeçilmez bir araçtır. Bellman’ın çalışmalarından günümüze, bu yöntem algoritmik düşüncenin temel taşlarından biri haline gelmiştir. 0/1 Sırt Çantası ile kaynak optimizasyonunda, LCS ile genetik analizde, Matris Zincir Çarpımı ile hesaplama verimliliğinde ve Floyd-Warshall ile ağ analizinde sunduğu çözümler, DP’nin çok yönlülüğünü kanıtlamaktadır.\n\nMuhammet Yusuf AYAR \nYazılım Mühendisliği\n230502030\n\n\nKaynaklar\n\nBellman, R. (1957). Dynamic Programming. Princeton University Press.\n\nCormen, T. H., Leiserson, C. E., Rivest, R. L., & Stein, C. (2009). Introduction to Algorithms (3rd ed.). MIT Press.\n\nKleinberg, J., & Tardos, É. (2006). Algorithm Design. Pearson Education.\n\nSniedovich, M. (2010). Dynamic Programming: Foundations and Principles\n(2nd ed.). Taylor & Francis.\n\nDasgupta, S., Papadimitriou, C. H., & Vazirani, U. V. (2008). Algorithms. McGraw-Hill Higher Education.\n\nSedgewick, R., & Wayne, K. (2011). Algorithms (4th ed.). Addison-Wesley Pro- fessional.\n\nMartello, S., & Toth, P. (1990). Knapsack Problems: Algorithms and Computer Implementations. John Wiley & Sons.\n\nHirschberg, D. S. (1975). A linear space algorithm for computing maxi- mal common subsequences. Communications of the ACM, 18(6), 341–343. https://doi.org/10.1145/360825.360861\n\nFloyd, R. W. (1962). Algorithm 97: Shortest path. Communications of the ACM, 5(6), 345.	2026-07-23 08:05:27.895248+00	1510c907-5201-4b52-95a3-69585912bafc
30cf22d0-c58c-4322-8a76-6cfc39bc1cb6	documents/Dinamik_Programlama_Raporu_2e9WDd8.docx	Dinamik Programlama Raporu.docx	Dinamik Programlama ve Örnek Algoritma Analizleri\nGiriş ve Tarihsel Arka Plan\n\nBilgisayar bilimleri ve yöneylem araştırmaları literatüründe, karmaşık karar problemlerinin çözümünde kullanılan en güçlü paradigmalardan biri Dinamik Programlama (Dynamic Programming - DP) yöntemidir. Bu yaklaşım, özünde karma- şık ve büyük ölçekli problemleri, daha küçük, yönetilebilir ve birbirini tekrar eden alt problemlere bölerek çözen bir optimizasyon stratejisidir [1, 2]. Dinamik programlamanın temel felsefesi, hesaplama kaynaklarının verimli kullanımına dayanır; bir alt problem bir kez çözüldüğünde, elde edilen sonuç saklanır ve gelecekte aynı alt problemle karşılaşıldığında yeniden hesaplama yapılmadan bu saklanan değer kullanılır. Bu süreç, literatürde ”hafızalama” (memoization) veya ”tablolama” (tabulation) olarak adlandırılır [3, 4].\n\nDinamik programlama terimi, 1950’li yıllarda matematikçi Richard Bellman tarafından literatüre kazandırılmıştır. Bellman, o dönemde RAND Corporation’da çalışırken, çok aşamalı karar süreçleri üzerine yaptığı araştırmaları tanımlamak için bu ismi seçmiştir. İlginç bir tarihsel detay olarak, ”programlama” kelimesi burada bilgisayar kodlamasını değil, askeri ve endüstriyel lojistikte kullanılan ”çizelgeleme” veya ”planlama” kavramını ifade etmektedir. Bellman, ”dinamik” kelimesini ise, araştırmalarının durağan olmayan, zamanla değişen doğasını vurgulamak ve o dönemde matematiksel araştırmalara fon sağlayan kurumların te- orik matematiğe olan mesafeli duruşunu aşmak amacıyla, kulağa etkileyici gelen bir terim olarak tercih etmiştir [1, 5]. Bellman’ın 1957 yılında yayınlanan ”Dynamic Programming” adlı eseri, bu alanın temel taşı olarak kabul edilmekte ve optimizasyon teorisinde bir dönüm noktası sayılmaktadır [5, 6].\n\nDinamik programlama, özellikle ”Optimal Altyapı” (Optimal Substructure) ve ”Örtüşen Alt Problemler” (Overlapping Subproblems) özelliklerini taşıyan problemlerin çözümünde etkilidir. Bu yöntem, biyoinformatikten (DNA dizileme) ağ yönlendirme protokollerine, finansal portföy yönetiminden robotik hareket planla- maya kadar geniş bir uygulama yelpazesine sahiptir. Bu rapor, dinamik program- lamanın teorik temellerini, temel algoritmalarını (Sırt Çantası, En Uzun Ortak Alt Dizi, Matris Zincir Çarpımı, Floyd-Warshall) ve bu algoritmaların karmaşlık analizlerini derinlemesine incelemeyi amaçlamaktadır.\n\nDinamik Programlamanın Teorik Temelleri\n\nBir problemin dinamik programlama ile çözülebilmesi için sağlaması gereken iki kritik özellik bulunmaktadır. Bu özelliklerin varlığı, problemin özyineli (re- cursive) bir yapıda olduğunu ve bu yapının verimli bir şekilde optimize edilebi- leceğini garanti eder.\n\nOptimal Altyapı (Optimal Substructure)\n\nOptimal altyapı özelliği, bir problemin global optimal çözümünün, o problemin alt problemlerinin optimal çözümleri kullanılarak inşa edilebileceğini ifade eder. Bu prensip, Bellman’ın ”Optimallik Prensibi” (Principle of Optimality) ile formüle edilmiştir. Bellman’a göre, optimal bir politika, başlangıç durumu ve ilk karar ne olursa olsun, geri kalan kararların ilk karardan doğan duruma göre optimal bir politika oluşturması özelliğine sahiptir [2].\n\nMatematiksel olarak ifade etmek gerekirse, eğer bir problem P , P1, P2, . . . , Pk alt problemlerinden oluşuyorsa ve P ’nin optimal çözümü S, Pi alt problemlerinin optimal çözümleri Si’yi içeriyorsa, bu problem optimal altyapıya sahiptir. Bu özel- lik, genellikle ”kes-ve-yapıştır” (cut-and-paste) tekniği ile kanıtlanır. Örneğin, bir çizgede u ve v düğümleri arasındaki en kısa yol problemi ele alındığında, eğer bu yol x düğümünden geçiyorsa, u → x arasındaki yol da u ile x arasındaki en kısa yol olmalıdır. Eğer u → x arasında daha kısa bir yol bulunsaydı, bu yeni yol kullanılarak u → v arasındaki toplam yol kısaltılabilirdi, bu da başlangıçtaki ”en kısa yol” varsayımıyla çelişirdi. Bu mantıksal çıkarım, problemin daha kü- çük parçalara bölünerek (Divide and Conquer) çözülebileceğini gösterir. Ancak dinamik programlamayı ”Böl ve Yönet”ten ayıran temel fark, ikinci özellik olan örtüşen alt problemlerdir [4].\n\n\nÖrtüşen Alt Problemler (Overlapping Subproblems)\n\nÖrtüşen alt problemler özelliği, bir problemin çözümü sırasında aynı alt problemlerin tekrar tekrar çözülmesi gerektiğini belirtir. Özyineli bir algoritma, aynı girdiye sahip alt problemleri birden fazla kez çağırıyorsa, bu problem örtüşen alt problemlere sahiptir. Bu durum, dinamik programlamanın verimlilik sağladığı ana noktadır.\nKlasik bir örnek olarak Fibonacci serisinin hesaplanması verilebilir. F (n) = F (n− 1) + F (n − 2) bağıntısı ile tanımlanan seride, F (5) hesaplanırken F (3) değeri hem F (4)’ün hesaplanmasında hem de doğrudan F (5)’in alt dalı olarak hesaplanmasında kullanılır. n değeri büyüdükçe, tekrarlanan hesaplamaların sayısı üstel ola- rak artar (O(2n)). Dinamik programlama, her bir alt problemin sonucunu bir tab- loda saklayarak bu tekrarları engeller ve zaman karmaşıklığını lineer seviyeye (O(n)) indirir. Böl ve Yönet algoritmalarında (örneğin Merge Sort) ise alt problemler genellikle ayrıktır (disjoint) ve her biri bağımsız olarak çözülür; bu nedenle sonuçları saklamaya gerek duyulmaz.\n\nUygulama Yöntemleri: Memoization ve Tabulation\n\nDinamik programlama çözümleri iki ana yaklaşım ile kodlanabilir:\n\nYukarıdan-Aşağıya (Top-Down) Yaklaşım (Memoization): Bu yöntemde prob- lem, doğal özyineli yapısı korunarak kodlanır. Ancak, fonksiyon her çağrıldığında, hesaplanan sonucun daha önce hesaplanıp hesaplanmadığı bir veri yapısında (dizi veya hash tablosu) kontrol edilir. Eğer sonuç mevcutsa, yeniden hesaplama yapılmadan bu değer döndürülür; değilse hesaplama yapılır ve sonuç saklanır [3].\n\nAşağıdan-Yukarıya (Bottom-Up) Yaklaşım (Tabulation): Bu yöntemde ise özyineleme yerine iteratif döngüler kullanılır. En küçük alt problemden (temel durum) başlanarak, sonuçlar bir tabloya (genellikle matris veya dizi) sırasıyla doldurulur. Büyük problemin çözümü, tablonun son hücresinde elde edilir. Bu yöntem yığın taşması (stack overflow) riskini ortadan kaldırır ve bellek erişim desenleri açısından genellikle daha verimlidir.\n\n\n\n\n\nAlgoritma Analizi: 0/1 Sırt Çantası Problemi\n\nSırt çantası problemi, kombinatoryal optimizasyonun en temel problemlerinden biridir ve kaynak tahsisi problemlerinin modellenmesinde kritik rol oynar.\n\nProblem Tanımı ve Matematiksel Model\n\n0/1 Sırt Çantası probleminde, bir hırsızın W kapasiteli bir sırt çantası ve n adet nesnesi olduğu varsayılır. Her i. nesnenin bir ağırlığı (wi) ve bir değeri (vi) vardır.\nAmaç, toplam ağırlığı kapasiteyi aşmayacak şekilde (Σ wixi ≤ W ) toplam değeri\n(Σ vixi) maksimize etmektir. Buradaki kısıt, her nesnenin ya tam olarak alınması\n(xi = 1) ya da hiç alınmamasıdır (xi = 0); nesneler parçalanamaz. Bu özellik, problemi ”Kesirli Sırt Çantası” (Fractional Knapsack) probleminden ayırır. Kesirli versiyon, birim ağırlık başına düşen değere göre sıralama yapan açgözlü (greedy) yaklaşım ile çözülebilirken, 0/1 versiyonunda açgözlü yaklaşım optimal sonucu garanti etmez [7].\n\nDinamik Programlama Çözümü ve Yineleme Bağıntısı”\n\nProblemin çözümü için V [i][w] şeklinde iki boyutlu bir durum tanımlanır. Bu ifade, ilk i nesne arasından seçim yapılarak, maksimum w ağırlık kapasitesi ile elde edilebilecek en yüksek değeri temsil eder. Her nesne için iki karar durumu mevcut- tur: Nesneyi almama veya nesneyi alma.\n\nYineleme bağıntısı (recurrence relation) şöyledir:\nTemel durumlar: V [w] = 0 (Hiç nesne yoksa) ve V [i] = 0 (Kapasite 0 ise).\n\nAlgoritma Analizi ve Karmaşıklık\n\nBu problemi çözmek için (n + 1) × (W + 1) boyutunda bir tablo oluşturulur. Tablonun her hücresi sabit zamanda (O(1)) doldurulur.\n\nZaman Karmaşıklığı: O(n · W ). Burada n nesne sayısı, W ise kapasitedir. Bu karmaşıklık ”sözde-polinom” (pseudo-polynomial) olarak adlandırılır. Çünkü W değeri, girdinin boyutu (bit sayısı) ile değil, sayısal değeriyle orantılıdır.\n\nUzay Karmaşıklığı: Standart çözümde O(n·W ) bellek alanı gerekir. Ancak, V [i][w] değerini hesaplamak için sadece bir önceki satıra (V [i − 1]) ihtiyaç duyulduğun- dan, uzay karmaşıklığı iki satırlık bir dizi kullanılarak O(W ) seviyesine düşürülebilir.\nÖrnek Senaryo: Adım Adım İşleyiş\n\nAşağıdaki verilerle bir örnek senaryo inceleyelim: Kapasite (W ): 4. Nesne 1: (2kg, 12), Nesne 2: (1kg, 10), Nesne 3: (3kg, 20).\n\nTablo 1: 0/1 Sırt Çantası Problemi Çözüm Tablosu\n\n\nSonuç olarak maksimum değer 30 olarak bulunur (Nesne 2 ve Nesne 3 seçilerek).\n\nAlgoritma Analizi: En Uzun Ortak Alt Dizi (LCS)\n\nEn Uzun Ortak Alt Dizi (LCS) problemi, diziler arasındaki benzerliği ölçmek için kullanılan temel bir algoritmadır. Bu problem, karakterlerin ardışık olma zorunluluğu olmadan (ancak sırası korunarak) iki dizide de bulunan en uzun karakter dizisini bulmayı amaçlar.\n\nBiyoinformatik ve Diğer Uygulama Alanları\n\nLCS algoritması, teorik bilgisayar bilimlerinin ötesinde, özellikle biyoinformatik alanında hayati bir öneme sahiptir. DNA, RNA ve protein dizileri arasındaki genetik akrabalığı tespit etmek, evrimsel ilişkileri analiz etmek veya genetik mutasyonları belirlemek için bu dizilerin hizalanması gerekir. Ayrıca, yazılım mühendisliğinde versiyon kontrol sistemleri (Git vb.), dosyalar arasındaki değişiklikleri tespit etmek için LCS kullanır [8].\n\n\nDinamik Programlama ile Çözüm\n\nİki dizi X ve Y için yineleme bağıntısı (c[i, j] tablosu uzunlukları tutar):\n\n\n\nKarmaşıklık Analizi\n\nStandart DP tablolama yöntemi ile LCS probleminin zaman karmaşıklığı O(m × n)’dir. Uzay karmaşıklığı da tablonun tamamının saklanması durumunda O(m × n)’dir. Çok büyük veri setlerinde bellek kullanımını azaltmak için Hirschberg Algoritması kullanılır. Hirschberg Algoritması, ”Böl ve Yönet” stratejisini kullanarak uzay karmaşıklığını lineer seviyeye (O(min(m, n))) indirir [9].\n\nAlgoritma Analizi: Matris Zincir Çarpımı\n\nMatris Zincir Çarpımı problemi, bir dizi matrisin çarpılması gerektiğinde, toplam skaler çarpım sayısını minimize edecek parantezleme sırasının bulunması problemidir. Matris çarpımı ilişkiseldir ancak çarpım sırası hesaplama maliye- tini dramatik şekilde değiştirir. \n\nDinamik Programlama Çözümü\n\nProblem, bir zinciri daha küçük iki zincire bölme mantığına dayanır. Yineleme bağıntısı (m[i, j] minimum çarpım sayısını tutar): \n\nKarmaşıklık Analizi\n\nAlgoritma, matris zincir uzunluğu L = 2’den n’e kadar artacak şekilde tabloyu doldurur. Toplam zaman karmaşıklığı O(n3)’tür. Uzay karmaşıklığı ise O(n2)’dir.\n\nAlgoritma Analizi: Floyd-Warshall Algoritması\n\nFloyd-Warshall algoritması, ağırlıklı bir grafikteki tüm düğüm çiftleri arasındaki en kısa yolu (All-Pairs Shortest Path) bulmak için kullanılır. Negatif kenar ağırlıklarını desteklemesiyle Dijkstra algoritmasından ayrılır.\n\n                 \n\n\n\n\nAlgoritmanın Mantığı\n\nD(k)[i][j] ifadesi, ara düğüm olarak sadece {1, 2, . . . , k} kümesindeki düğümlerin kullanılmasına izin verildiğinde, i’den j’ye olan en kısa yolu temsil eder. Yineleme bağıntısı:\n\nD(k)[i][j] = min(D(k−1)[i][j],\tD(k−1)[i][k] + D(k−1)[k][j])\n\nUygulama ve Karşılaştırma\n\nAlgoritma üç iç içe döngüden oluşur ve zaman karmaşıklığı O(N 3)’tür. Yoğun (Dense) graflarda oldukça verimlidir. Negatif döngülerin tespit edilmesinde (ör- neğin finansal arbitraj fırsatlarında) kullanılabilir.\n\nTablo 2: Floyd-Warshall ve Dijkstra Karşılaştırması\n\nTablo 3: Bellman-Ford, Floyd-Marshall Dijkstra Algoitmalaırının en kısa yol (shortest path) algoritmasının performans karşılaştırmasını gösteren grafik. X : node/vertex Y: Geçen süre\nSonuç\n\nBu raporda incelenen Dinamik Programlama paradigması, optimal altyapı ve örtüşen alt problemler özelliklerine sahip karmaşık problemlerin çözümünde vazgeçilmez bir araçtır. Bellman’ın çalışmalarından günümüze, bu yöntem algoritmik düşüncenin temel taşlarından biri haline gelmiştir. 0/1 Sırt Çantası ile kaynak optimizasyonunda, LCS ile genetik analizde, Matris Zincir Çarpımı ile hesaplama verimliliğinde ve Floyd-Warshall ile ağ analizinde sunduğu çözümler, DP’nin çok yönlülüğünü kanıtlamaktadır.\n\nMuhammet Yusuf AYAR \nYazılım Mühendisliği\n230502030\n\n\nKaynaklar\n\nBellman, R. (1957). Dynamic Programming. Princeton University Press.\n\nCormen, T. H., Leiserson, C. E., Rivest, R. L., & Stein, C. (2009). Introduction to Algorithms (3rd ed.). MIT Press.\n\nKleinberg, J., & Tardos, É. (2006). Algorithm Design. Pearson Education.\n\nSniedovich, M. (2010). Dynamic Programming: Foundations and Principles\n(2nd ed.). Taylor & Francis.\n\nDasgupta, S., Papadimitriou, C. H., & Vazirani, U. V. (2008). Algorithms. McGraw-Hill Higher Education.\n\nSedgewick, R., & Wayne, K. (2011). Algorithms (4th ed.). Addison-Wesley Pro- fessional.\n\nMartello, S., & Toth, P. (1990). Knapsack Problems: Algorithms and Computer Implementations. John Wiley & Sons.\n\nHirschberg, D. S. (1975). A linear space algorithm for computing maxi- mal common subsequences. Communications of the ACM, 18(6), 341–343. https://doi.org/10.1145/360825.360861\n\nFloyd, R. W. (1962). Algorithm 97: Shortest path. Communications of the ACM, 5(6), 345.	2026-07-23 08:10:14.431435+00	1510c907-5201-4b52-95a3-69585912bafc
89be9d2e-5e5f-48ea-b92a-003e0c2249e3	documents/Dinamik_Programlama_Raporu_2O13oqb.docx	Dinamik Programlama Raporu.docx	Dinamik Programlama ve Örnek Algoritma Analizleri\nGiriş ve Tarihsel Arka Plan\n\nBilgisayar bilimleri ve yöneylem araştırmaları literatüründe, karmaşık karar problemlerinin çözümünde kullanılan en güçlü paradigmalardan biri Dinamik Programlama (Dynamic Programming - DP) yöntemidir. Bu yaklaşım, özünde karma- şık ve büyük ölçekli problemleri, daha küçük, yönetilebilir ve birbirini tekrar eden alt problemlere bölerek çözen bir optimizasyon stratejisidir [1, 2]. Dinamik programlamanın temel felsefesi, hesaplama kaynaklarının verimli kullanımına dayanır; bir alt problem bir kez çözüldüğünde, elde edilen sonuç saklanır ve gelecekte aynı alt problemle karşılaşıldığında yeniden hesaplama yapılmadan bu saklanan değer kullanılır. Bu süreç, literatürde ”hafızalama” (memoization) veya ”tablolama” (tabulation) olarak adlandırılır [3, 4].\n\nDinamik programlama terimi, 1950’li yıllarda matematikçi Richard Bellman tarafından literatüre kazandırılmıştır. Bellman, o dönemde RAND Corporation’da çalışırken, çok aşamalı karar süreçleri üzerine yaptığı araştırmaları tanımlamak için bu ismi seçmiştir. İlginç bir tarihsel detay olarak, ”programlama” kelimesi burada bilgisayar kodlamasını değil, askeri ve endüstriyel lojistikte kullanılan ”çizelgeleme” veya ”planlama” kavramını ifade etmektedir. Bellman, ”dinamik” kelimesini ise, araştırmalarının durağan olmayan, zamanla değişen doğasını vurgulamak ve o dönemde matematiksel araştırmalara fon sağlayan kurumların te- orik matematiğe olan mesafeli duruşunu aşmak amacıyla, kulağa etkileyici gelen bir terim olarak tercih etmiştir [1, 5]. Bellman’ın 1957 yılında yayınlanan ”Dynamic Programming” adlı eseri, bu alanın temel taşı olarak kabul edilmekte ve optimizasyon teorisinde bir dönüm noktası sayılmaktadır [5, 6].\n\nDinamik programlama, özellikle ”Optimal Altyapı” (Optimal Substructure) ve ”Örtüşen Alt Problemler” (Overlapping Subproblems) özelliklerini taşıyan problemlerin çözümünde etkilidir. Bu yöntem, biyoinformatikten (DNA dizileme) ağ yönlendirme protokollerine, finansal portföy yönetiminden robotik hareket planla- maya kadar geniş bir uygulama yelpazesine sahiptir. Bu rapor, dinamik program- lamanın teorik temellerini, temel algoritmalarını (Sırt Çantası, En Uzun Ortak Alt Dizi, Matris Zincir Çarpımı, Floyd-Warshall) ve bu algoritmaların karmaşlık analizlerini derinlemesine incelemeyi amaçlamaktadır.\n\nDinamik Programlamanın Teorik Temelleri\n\nBir problemin dinamik programlama ile çözülebilmesi için sağlaması gereken iki kritik özellik bulunmaktadır. Bu özelliklerin varlığı, problemin özyineli (re- cursive) bir yapıda olduğunu ve bu yapının verimli bir şekilde optimize edilebi- leceğini garanti eder.\n\nOptimal Altyapı (Optimal Substructure)\n\nOptimal altyapı özelliği, bir problemin global optimal çözümünün, o problemin alt problemlerinin optimal çözümleri kullanılarak inşa edilebileceğini ifade eder. Bu prensip, Bellman’ın ”Optimallik Prensibi” (Principle of Optimality) ile formüle edilmiştir. Bellman’a göre, optimal bir politika, başlangıç durumu ve ilk karar ne olursa olsun, geri kalan kararların ilk karardan doğan duruma göre optimal bir politika oluşturması özelliğine sahiptir [2].\n\nMatematiksel olarak ifade etmek gerekirse, eğer bir problem P , P1, P2, . . . , Pk alt problemlerinden oluşuyorsa ve P ’nin optimal çözümü S, Pi alt problemlerinin optimal çözümleri Si’yi içeriyorsa, bu problem optimal altyapıya sahiptir. Bu özel- lik, genellikle ”kes-ve-yapıştır” (cut-and-paste) tekniği ile kanıtlanır. Örneğin, bir çizgede u ve v düğümleri arasındaki en kısa yol problemi ele alındığında, eğer bu yol x düğümünden geçiyorsa, u → x arasındaki yol da u ile x arasındaki en kısa yol olmalıdır. Eğer u → x arasında daha kısa bir yol bulunsaydı, bu yeni yol kullanılarak u → v arasındaki toplam yol kısaltılabilirdi, bu da başlangıçtaki ”en kısa yol” varsayımıyla çelişirdi. Bu mantıksal çıkarım, problemin daha kü- çük parçalara bölünerek (Divide and Conquer) çözülebileceğini gösterir. Ancak dinamik programlamayı ”Böl ve Yönet”ten ayıran temel fark, ikinci özellik olan örtüşen alt problemlerdir [4].\n\n\nÖrtüşen Alt Problemler (Overlapping Subproblems)\n\nÖrtüşen alt problemler özelliği, bir problemin çözümü sırasında aynı alt problemlerin tekrar tekrar çözülmesi gerektiğini belirtir. Özyineli bir algoritma, aynı girdiye sahip alt problemleri birden fazla kez çağırıyorsa, bu problem örtüşen alt problemlere sahiptir. Bu durum, dinamik programlamanın verimlilik sağladığı ana noktadır.\nKlasik bir örnek olarak Fibonacci serisinin hesaplanması verilebilir. F (n) = F (n− 1) + F (n − 2) bağıntısı ile tanımlanan seride, F (5) hesaplanırken F (3) değeri hem F (4)’ün hesaplanmasında hem de doğrudan F (5)’in alt dalı olarak hesaplanmasında kullanılır. n değeri büyüdükçe, tekrarlanan hesaplamaların sayısı üstel ola- rak artar (O(2n)). Dinamik programlama, her bir alt problemin sonucunu bir tab- loda saklayarak bu tekrarları engeller ve zaman karmaşıklığını lineer seviyeye (O(n)) indirir. Böl ve Yönet algoritmalarında (örneğin Merge Sort) ise alt problemler genellikle ayrıktır (disjoint) ve her biri bağımsız olarak çözülür; bu nedenle sonuçları saklamaya gerek duyulmaz.\n\nUygulama Yöntemleri: Memoization ve Tabulation\n\nDinamik programlama çözümleri iki ana yaklaşım ile kodlanabilir:\n\nYukarıdan-Aşağıya (Top-Down) Yaklaşım (Memoization): Bu yöntemde prob- lem, doğal özyineli yapısı korunarak kodlanır. Ancak, fonksiyon her çağrıldığında, hesaplanan sonucun daha önce hesaplanıp hesaplanmadığı bir veri yapısında (dizi veya hash tablosu) kontrol edilir. Eğer sonuç mevcutsa, yeniden hesaplama yapılmadan bu değer döndürülür; değilse hesaplama yapılır ve sonuç saklanır [3].\n\nAşağıdan-Yukarıya (Bottom-Up) Yaklaşım (Tabulation): Bu yöntemde ise özyineleme yerine iteratif döngüler kullanılır. En küçük alt problemden (temel durum) başlanarak, sonuçlar bir tabloya (genellikle matris veya dizi) sırasıyla doldurulur. Büyük problemin çözümü, tablonun son hücresinde elde edilir. Bu yöntem yığın taşması (stack overflow) riskini ortadan kaldırır ve bellek erişim desenleri açısından genellikle daha verimlidir.\n\n\n\n\n\nAlgoritma Analizi: 0/1 Sırt Çantası Problemi\n\nSırt çantası problemi, kombinatoryal optimizasyonun en temel problemlerinden biridir ve kaynak tahsisi problemlerinin modellenmesinde kritik rol oynar.\n\nProblem Tanımı ve Matematiksel Model\n\n0/1 Sırt Çantası probleminde, bir hırsızın W kapasiteli bir sırt çantası ve n adet nesnesi olduğu varsayılır. Her i. nesnenin bir ağırlığı (wi) ve bir değeri (vi) vardır.\nAmaç, toplam ağırlığı kapasiteyi aşmayacak şekilde (Σ wixi ≤ W ) toplam değeri\n(Σ vixi) maksimize etmektir. Buradaki kısıt, her nesnenin ya tam olarak alınması\n(xi = 1) ya da hiç alınmamasıdır (xi = 0); nesneler parçalanamaz. Bu özellik, problemi ”Kesirli Sırt Çantası” (Fractional Knapsack) probleminden ayırır. Kesirli versiyon, birim ağırlık başına düşen değere göre sıralama yapan açgözlü (greedy) yaklaşım ile çözülebilirken, 0/1 versiyonunda açgözlü yaklaşım optimal sonucu garanti etmez [7].\n\nDinamik Programlama Çözümü ve Yineleme Bağıntısı”\n\nProblemin çözümü için V [i][w] şeklinde iki boyutlu bir durum tanımlanır. Bu ifade, ilk i nesne arasından seçim yapılarak, maksimum w ağırlık kapasitesi ile elde edilebilecek en yüksek değeri temsil eder. Her nesne için iki karar durumu mevcut- tur: Nesneyi almama veya nesneyi alma.\n\nYineleme bağıntısı (recurrence relation) şöyledir:\nTemel durumlar: V [w] = 0 (Hiç nesne yoksa) ve V [i] = 0 (Kapasite 0 ise).\n\nAlgoritma Analizi ve Karmaşıklık\n\nBu problemi çözmek için (n + 1) × (W + 1) boyutunda bir tablo oluşturulur. Tablonun her hücresi sabit zamanda (O(1)) doldurulur.\n\nZaman Karmaşıklığı: O(n · W ). Burada n nesne sayısı, W ise kapasitedir. Bu karmaşıklık ”sözde-polinom” (pseudo-polynomial) olarak adlandırılır. Çünkü W değeri, girdinin boyutu (bit sayısı) ile değil, sayısal değeriyle orantılıdır.\n\nUzay Karmaşıklığı: Standart çözümde O(n·W ) bellek alanı gerekir. Ancak, V [i][w] değerini hesaplamak için sadece bir önceki satıra (V [i − 1]) ihtiyaç duyulduğun- dan, uzay karmaşıklığı iki satırlık bir dizi kullanılarak O(W ) seviyesine düşürülebilir.\nÖrnek Senaryo: Adım Adım İşleyiş\n\nAşağıdaki verilerle bir örnek senaryo inceleyelim: Kapasite (W ): 4. Nesne 1: (2kg, 12), Nesne 2: (1kg, 10), Nesne 3: (3kg, 20).\n\nTablo 1: 0/1 Sırt Çantası Problemi Çözüm Tablosu\n\n\nSonuç olarak maksimum değer 30 olarak bulunur (Nesne 2 ve Nesne 3 seçilerek).\n\nAlgoritma Analizi: En Uzun Ortak Alt Dizi (LCS)\n\nEn Uzun Ortak Alt Dizi (LCS) problemi, diziler arasındaki benzerliği ölçmek için kullanılan temel bir algoritmadır. Bu problem, karakterlerin ardışık olma zorunluluğu olmadan (ancak sırası korunarak) iki dizide de bulunan en uzun karakter dizisini bulmayı amaçlar.\n\nBiyoinformatik ve Diğer Uygulama Alanları\n\nLCS algoritması, teorik bilgisayar bilimlerinin ötesinde, özellikle biyoinformatik alanında hayati bir öneme sahiptir. DNA, RNA ve protein dizileri arasındaki genetik akrabalığı tespit etmek, evrimsel ilişkileri analiz etmek veya genetik mutasyonları belirlemek için bu dizilerin hizalanması gerekir. Ayrıca, yazılım mühendisliğinde versiyon kontrol sistemleri (Git vb.), dosyalar arasındaki değişiklikleri tespit etmek için LCS kullanır [8].\n\n\nDinamik Programlama ile Çözüm\n\nİki dizi X ve Y için yineleme bağıntısı (c[i, j] tablosu uzunlukları tutar):\n\n\n\nKarmaşıklık Analizi\n\nStandart DP tablolama yöntemi ile LCS probleminin zaman karmaşıklığı O(m × n)’dir. Uzay karmaşıklığı da tablonun tamamının saklanması durumunda O(m × n)’dir. Çok büyük veri setlerinde bellek kullanımını azaltmak için Hirschberg Algoritması kullanılır. Hirschberg Algoritması, ”Böl ve Yönet” stratejisini kullanarak uzay karmaşıklığını lineer seviyeye (O(min(m, n))) indirir [9].\n\nAlgoritma Analizi: Matris Zincir Çarpımı\n\nMatris Zincir Çarpımı problemi, bir dizi matrisin çarpılması gerektiğinde, toplam skaler çarpım sayısını minimize edecek parantezleme sırasının bulunması problemidir. Matris çarpımı ilişkiseldir ancak çarpım sırası hesaplama maliye- tini dramatik şekilde değiştirir. \n\nDinamik Programlama Çözümü\n\nProblem, bir zinciri daha küçük iki zincire bölme mantığına dayanır. Yineleme bağıntısı (m[i, j] minimum çarpım sayısını tutar): \n\nKarmaşıklık Analizi\n\nAlgoritma, matris zincir uzunluğu L = 2’den n’e kadar artacak şekilde tabloyu doldurur. Toplam zaman karmaşıklığı O(n3)’tür. Uzay karmaşıklığı ise O(n2)’dir.\n\nAlgoritma Analizi: Floyd-Warshall Algoritması\n\nFloyd-Warshall algoritması, ağırlıklı bir grafikteki tüm düğüm çiftleri arasındaki en kısa yolu (All-Pairs Shortest Path) bulmak için kullanılır. Negatif kenar ağırlıklarını desteklemesiyle Dijkstra algoritmasından ayrılır.\n\n                 \n\n\n\n\nAlgoritmanın Mantığı\n\nD(k)[i][j] ifadesi, ara düğüm olarak sadece {1, 2, . . . , k} kümesindeki düğümlerin kullanılmasına izin verildiğinde, i’den j’ye olan en kısa yolu temsil eder. Yineleme bağıntısı:\n\nD(k)[i][j] = min(D(k−1)[i][j],\tD(k−1)[i][k] + D(k−1)[k][j])\n\nUygulama ve Karşılaştırma\n\nAlgoritma üç iç içe döngüden oluşur ve zaman karmaşıklığı O(N 3)’tür. Yoğun (Dense) graflarda oldukça verimlidir. Negatif döngülerin tespit edilmesinde (ör- neğin finansal arbitraj fırsatlarında) kullanılabilir.\n\nTablo 2: Floyd-Warshall ve Dijkstra Karşılaştırması\n\nTablo 3: Bellman-Ford, Floyd-Marshall Dijkstra Algoitmalaırının en kısa yol (shortest path) algoritmasının performans karşılaştırmasını gösteren grafik. X : node/vertex Y: Geçen süre\nSonuç\n\nBu raporda incelenen Dinamik Programlama paradigması, optimal altyapı ve örtüşen alt problemler özelliklerine sahip karmaşık problemlerin çözümünde vazgeçilmez bir araçtır. Bellman’ın çalışmalarından günümüze, bu yöntem algoritmik düşüncenin temel taşlarından biri haline gelmiştir. 0/1 Sırt Çantası ile kaynak optimizasyonunda, LCS ile genetik analizde, Matris Zincir Çarpımı ile hesaplama verimliliğinde ve Floyd-Warshall ile ağ analizinde sunduğu çözümler, DP’nin çok yönlülüğünü kanıtlamaktadır.\n\nMuhammet Yusuf AYAR \nYazılım Mühendisliği\n230502030\n\n\nKaynaklar\n\nBellman, R. (1957). Dynamic Programming. Princeton University Press.\n\nCormen, T. H., Leiserson, C. E., Rivest, R. L., & Stein, C. (2009). Introduction to Algorithms (3rd ed.). MIT Press.\n\nKleinberg, J., & Tardos, É. (2006). Algorithm Design. Pearson Education.\n\nSniedovich, M. (2010). Dynamic Programming: Foundations and Principles\n(2nd ed.). Taylor & Francis.\n\nDasgupta, S., Papadimitriou, C. H., & Vazirani, U. V. (2008). Algorithms. McGraw-Hill Higher Education.\n\nSedgewick, R., & Wayne, K. (2011). Algorithms (4th ed.). Addison-Wesley Pro- fessional.\n\nMartello, S., & Toth, P. (1990). Knapsack Problems: Algorithms and Computer Implementations. John Wiley & Sons.\n\nHirschberg, D. S. (1975). A linear space algorithm for computing maxi- mal common subsequences. Communications of the ACM, 18(6), 341–343. https://doi.org/10.1145/360825.360861\n\nFloyd, R. W. (1962). Algorithm 97: Shortest path. Communications of the ACM, 5(6), 345.	2026-07-23 08:11:42.294254+00	d11c8839-de3e-4621-bdf2-7b5fbc53eabc
\.


--
-- Data for Name: documents_globaldocument; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.documents_globaldocument (id, file, filename, extracted_text, created_at) FROM stdin;
4a595877-59da-4f44-8e34-36be76356932	global_documents/TOFAS_KALIP_YAPIM_ŞARTNAMESİ_P26_zhQQ6rf_C7XuzCG.pdf	TOFAS_KALIP_YAPIM_ŞARTNAMESİ_P26_zhQQ6rf.pdf	--- [SAYFA 1 KALIP ŞEMASI VE TEKNİK ANALİZİ] ---\nBu belge, **TOFAŞ Türk Otomobil Fabrikası A.Ş.** tarafından yayınlanmış olan **"TOFAŞ Kalıp Yapım Şartnamesi (PUBLICATION 26)"** dokümanının kapak sayfasıdır. Bu şartname; Fiat, Lancia, Alfa Romeo ve Jeep (Stellantis/FCA Grubu) araç projelerinde kullanılacak plastik enjeksiyon ve sac şekillendirme kalıplarının tasarım, imalat, malzeme, tolerans ve kabul kriterlerini belirleyen temel mühendislik standardıdır.\n\nArka planda izometrik olarak verilen **3D CAD izometrik kalıp montaj çizimi** ve kapakta yer alan teknik detayların uzman mühendislik analizi aşağıda maddeler halinde açıklanmıştır:\n\n---\n\n### 1. Görseldeki Kalıp Montaj Çiziminin (CAD) Teknik Analizi\n\nArka planda tel kafes (wireframe) ve saydam katı modelleme şeklinde gösterilen montaj, **büyük boyutlu bir otomotiv plastik enjeksiyon kalıbına** (örneğin: Tampon, Torpido/Göğüs, Kapı Paneli veya Şasi Muhafaza parçası kalıbı) aittir.\n\nKalıp iki ana yarıdan (Üst/Dişi ve Alt/Erkek taraf) oluşmaktadır:\n\n1. **Kalıp Hamili ve Gövde Plakaları (Mold Base / Plates):**\n   * **Üst Bağlama Plakası (Top Clamping Plate) & Dişi Taraf (Cavity Side):** Parçanın dış yüzey görünümünü (A-Class yüzey) oluşturan dişi çelik bloğun monte edildiği üst kısım.\n   * **Alt Bağlama Plakası (Bottom Clamping Plate) & Erkek Taraf (Core Side):** Parçanın iç bağlantı detaylarını, nervürleri (ribs) ve klips yuvalarını oluşturan alt erkek çelik blok.\n   * **Destek Plakaları ve Paraleller (Riser Blocks / Support Pillars):** Kalıplama basıncına (tonajına) karşı kalıbın esnemesini önleyen yüksek dayanımlı destek blokları.\n\n2. **Mekanik Maça ve Kızak Sistemleri (Side Cores / Slides / Lifters):**\n   * Çizimde kalıbın yan taraflarında görülen girintili-çıkıntılı yapılar, kalıplama yönüne dik (ters açılı / undercut) detayları çıkarmak için kullanılan **hidrolik veya mekanik maça (slider) sistemleridir**.\n   * Bu sistemler, kalıp açılma ekseninden farklı açılarda hareket ederek karmaşık geometrilerin kalıptan sorunsuz ayrılmasını sağlar.\n\n3. **Kılavuzlama ve Merkezleme Elemanları (Guiding & Centering Systems):**\n   * Kalıbın iki yarısının (Core & Cavity) mikron seviyesinde hassasiyetle kapanmasını sağlayan **Kılavuz Kolonlar (Guide Pins)** ve **Kılavuz Burçlar (Guide Bushings)**.\n   * Yan yükleri karşılamak ve kalıp kapama hassasiyetini korumak için köşe alanlarına yerleştirilmiş **Açılı Kam Merkezlemeler (Incline Centering Blocks / Side Locks)**.\n\n4. **Çıkarma / İtici Sistemi (Ejection System):**\n   * Alt grupta yer alan kare ve ızgara formundaki yapı, **İtici Plaka Paketidir (Ejector Plate Assembly)**.\n   * Plastik parça soğuduktan sonra kalıp içinden itici pimler (ejector pins), kovan iticiler veya maça iticiler vasıtasıyla parçayı deforme etmeden fırlatmayı sağlar.\n\n5. **Kaldırma ve Taşıma Detayları (Handling & Safety Equipment):**\n   * Kalıp plakalarının köşelerinde yer alan vida delikleri ve çıkıntılar, **Taşıma Ayboltu (Eyebolt) Yuvaları** ve nakliye sırasında kalıbın açılmasını önleyen **Emniyet Kilit Lamaları (Safety Straps)** içindir.\n\n---\n\n### 2. TOFAŞ Kalıp Yapım Şartnamesi (Publication 26) Standardının Kapsamı\n\nBu şartname dokümanı, imalatçı tedarikçilere (Kalıphanelere) şu teknik zorunlulukları şart koşar:\n\n* **Malzeme ve Isıl İşlem Standartları:**\n  * Kalıp çekirdek çelikleri (Örn: 1.2738, 1.2311, 1.2343 veya P20/H13 muadili ön sertleştirilmiş/ısıl işlem görmüş çelikler).\n  * Çekirdek sertlik değerleri (örneğin 38-42 HRC veya 50-54 HRC) ve nitrasyon/kaplama (TiN, DLC vb.) gereksinimleri.\n  * Sürtünme plakaları için kendinden yağlamalı bronz (grafitli bronz) kullanımı.\n\n* **Geometrik Toleranslar ve Yüzey Kalitesi:**\n  * A-Class (görünen) yüzeyler için **VDI 3400** elektro-erozyon (EDM) dokusu veya **Mold-Tech** desen/tekstür standartları.\n  * Kalıp kapama yüzeyleri (Parting Line) için **0.01 mm - 0.02 mm** aralığında çapak önleyici sızdırmazlık toleransları.\n\n* **Termal Yönetim (Soğutma / Isıtma Kanalları):**\n  * Kalıp içinde türbülanslı akış sağlayacak soğutma kanalı çapları, kanallar arası mesafeler ve rekor bağlantı standartları (Hasco, Staubli vb. hızlı bağlantı elemanları).\n\n* **Standart Eleman Kullanımı:**\n  * Bakım ve yedek parça kolaylığı için kalıp içi elemanların (itici pimler, kılavuzlar, yaylar) ISO/DIN standartlarında (DME, Hasco, Meusburger vb.) seçilmesi zorunluluğu.\n\n---\n\n### 3. Genel Kurumsal Bilgiler\n* **Yayın Adı:** Publication 26\n* **Sınıflandırma:** Genel / Public (Kamuya açık genel teknik standart seviyesi)\n* **Bağlı Şirket / Grup:** Koç Holding & Stellantis (Fiat Chrysler Automobiles) ortaklığı.\n	2026-07-23 09:52:50.984157+00
\.


--
-- Data for Name: prompts_systemprompt; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.prompts_systemprompt (id, name, content, is_active, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: rag_documentchunk; Type: TABLE DATA; Schema: public; Owner: chatbot_user
--

COPY public.rag_documentchunk (id, text, embedding, created_at, conversation_id, document_id, global_document_id) FROM stdin;
d4a007e4-7ceb-473e-9769-e93cf65a675e	Dinamik Programlama ve Örnek Algoritma Analizleri Giriş ve Tarihsel Arka Plan Bilgisayar bilimleri ve yöneylem araştırmaları literatüründe, karmaşık karar problemlerinin çözümünde kullanılan en güçlü paradigmalardan biri Dinamik Programlama (Dynamic Programming - DP) yöntemidir. Bu yaklaşım, özünde karma- şık ve büyük ölçekli problemleri, daha küçük, yönetilebilir ve birbirini tekrar eden alt problemlere bölerek çözen bir optimizasyon stratejisidir [1, 2]. Dinamik programlamanın temel felsefesi, hesaplama kaynaklarının verimli kullanımına dayanır; bir alt problem bir kez çözüldüğünde, elde edilen sonuç saklanır ve gelecekte aynı alt problemle karşılaşıldığında yeniden hesaplama yapılmadan bu saklanan değer kullanılır. Bu süreç, literatürde ”hafızalama” (memoization) veya ”tablolama” (tabulation) olarak adlandırılır [3, 4]. Dinamik programlama terimi, 1950’li yıllarda matematikçi Richard Bellman tarafından literatüre kazandırılmıştır. Bellman, o dönemde RAND Corporation’da çalışırken, çok aşamalı karar süreçleri üzerine yaptığı araştırmaları tanımlamak için bu ismi seçmiştir. İlginç bir tarihsel detay olarak, ”programlama” kelimesi burada bilgisayar kodlamasını değil, askeri ve endüstriyel lojistikte kullanılan ”çizelgeleme” veya ”planlama” kavramını ifade etmektedir. Bellman, ”dinamik” kelimesini ise, araştırmalarının durağan olmayan, zamanla değişen doğasını vurgulamak ve o dönemde matematiksel araştırmalara fon sağlayan kurumların te- orik matematiğe olan mesafeli duruşunu aşmak amacıyla, kulağa etkileyici gelen bir terim olarak tercih etmiştir [1, 5]. Bellman’ın 1957 yılında yayınlanan ”Dynamic Programming” adlı eseri, bu alanın temel taşı olarak kabul edilmekte ve optimizasyon teorisinde bir dönüm noktası sayılmaktadır [5, 6]. Dinamik programlama, özellikle ”Optimal Altyapı” (Optimal Substructure) ve ”Örtüşen Alt Problemler” (Overlapping Subproblems) özelliklerini taşıyan problemlerin çözümünde etkilidir. Bu yöntem, biyoinformatikten (DNA dizileme) ağ yönlendirme protokollerine, finansal portföy yönetiminden robotik hareket planla- maya kadar geniş bir uygulama yelpazesine sahiptir. Bu rapor, dinamik program- lamanın teorik temellerini, temel algoritmalarını (Sırt Çantası, En Uzun Ortak Alt Dizi, Matris Zincir Çarpımı, Floyd-Warshall) ve bu algoritmaların karmaşlık analizlerini derinlemesine incelemeyi amaçlamaktadır. Dinamik Programlamanın Teorik Temelleri Bir problemin dinamik programlama ile çözülebilmesi için sağlaması gereken iki kritik özellik bulunmaktadır. Bu özelliklerin	[-0.31823882,0.10536066,0.0045299046,-0.10002,-0.25419497,-0.23191558,-0.107809864,0.0602204,-0.061925482,0.011974368,-0.04722999,0.37874258,0.14816451,-0.1370807,-0.059515677,0.053729635,0.1086372,0.0689433,-0.087418914,0.025795575,-0.22030473,-0.21246655,-0.038740307,-0.11569159,-0.16084078,0.19731511,0.11203801,-0.027101561,0.16227292,-0.22707152,0.11056317,0.2843808,0.30403227,0.019878384,-0.18800335,0.055092648,-0.1087031,0.1918279,-0.01760087,-0.08469697,-0.013509839,0.19163367,0.067730784,-0.062411886,0.021158934,-0.13146235,-0.03016201,0.086561054,-0.18526036,0.018407831,-0.19311263,0.051632542,0.059847128,-0.2259025,0.13378987,0.051639676,0.33363485,0.01161328,-0.23545288,0.035567768,0.05399339,0.07826231,0.112768754,-0.0030257283,0.24916914,-0.08761648,0.22639555,0.14072807,0.1280892,0.037268125,-0.23895861,-0.05877244,-0.066282615,0.029710175,0.0907654,-0.071789935,-0.04588785,-0.13357297,0.15716495,0.011325394,0.22389597,-0.042220257,-0.06565945,-0.19534522,0.012468638,0.0018715985,0.06800563,0.054460734,0.2033326,0.11974506,0.09765801,0.042857595,-0.027739111,-0.054126337,-0.0034822444,0.18412668,0.13364492,-0.09916834,0.050602756,0.41569734,-0.07901296,-0.09666793,-0.008267128,-0.09390302,0.2406674,0.020873645,0.117140174,-0.18810908,-0.12951624,-0.22281447,0.06816865,0.0409011,0.124469034,0.0027916515,-0.03512288,0.043293737,-0.12943383,0.049090117,-0.039209105,0.016390955,-0.092444465,-0.09140831,0.17117155,0.26644832,0.21058834,-0.13525994,-0.29100025,-0.2610985,-0.11233048,-0.29473782,0.22261308,0.050309725,-0.09646906,0.025106262,0.16771467,-0.014188023,0.08956832,-0.01924585,-0.06727681,0.0248364,-0.08837793,0.17885335,0.2168608,-0.09681168,-0.28405505,0.19335541,-0.016334794,-0.10126586,0.13042076,-0.030491564,0.18250266,-0.19540326,0.092182346,0.09542183,0.16272159,0.10692379,0.09336392,-0.19401863,-0.12259895,0.07273015,-0.1566871,0.23007198,0.13780461,0.0458761,-0.075608015,0.023313874,0.05872343,-0.10002772,0.15553842,0.027721686,0.05632268,-0.10506409,-0.1687899,-0.0070640706,0.16800858,-0.09506701,-0.2364018,-0.1820839,0.06567553,0.06403585,0.3781578,-0.063404724,0.115268975,0.0120091485,0.067166954,0.010103935,0.03187202,0.15914254,-0.3228704,0.022633603,-0.10028191,-0.19847158,0.11326401,-0.13741644,-0.057144776,-0.34011227,0.5157875,0.15363531,0.12750652,0.16209438,-0.10236569,-0.028675895,-0.2025128,-0.17033169,-0.09632715,-0.17681243,-0.21370663,-0.14370565,-0.14520079,0.2584239,0.030111887,0.1132627,-0.15420102,0.20194902,0.0018755789,0.00020095869,-0.18208659,-0.016450498,-0.048602436,-0.036076233,0.13785917,0.053574882,0.2659545,-0.10945901,-0.29712054,0.07992649,-0.25219077,-0.0446582,-0.18878955,-0.001440122,-0.3390836,-0.30458304,0.0010474779,-0.09953379,-0.25903553,-0.11516702,0.004051446,0.11034688,0.19464396,-0.01262637,-0.01060806,-0.22087361,0.07551686,-0.056207586,0.10889144,0.20598315,-0.41680816,-0.09229233,0.22255747,0.09482944,-0.0054666502,-0.11395634,0.010144666,0.013102053,-0.0934562,-0.056354567,-0.03014262,0.21921638,0.034233972,0.14397046,0.007927017,0.057856455,0.0020330474,-0.024449982,-0.06686407,-0.14714064,-0.08174356,0.1918605,0.027031723,0.10756961,-0.30940855,0.22878417,0.17392468,0.12184556,-0.046496317,-0.13480268,0.05210823,-0.3663664,-0.07194978,-0.079253554,0.056097846,-0.058912046,0.036569063,-0.011409078,-0.18515795,-0.06671293,0.07122512,0.15271634,-0.4107399,0.024541274,-0.010946801,-0.0031910026,-0.20630296,-0.29014084,-0.024369758,0.0737563,-0.0739304,0.122835115,-0.04256687,0.060951516,0.19499905,0.12617505,0.037416022,-0.02591253,-0.049459558,-0.12536609,0.1917246,-0.027438339,-0.31179437,-0.035102233,-0.10586,-0.21417218,-0.07921293,0.0039513004,0.029446865,-0.07566508,-0.24884294,0.2018628,0.15569581,-0.18726179,0.067618854,-0.20042583,-0.010330061,0.05863784,0.21664558,0.07562277,-0.046519,0.3403844,0.033096433,0.001960116,0.068021916,0.051456243,-0.027663805,0.17190287,0.08136296,0.15084043,-0.047114983,0.33007106,-0.11332264,-0.0128003135,0.31015253,0.082374096,-0.34966308,0.020723347,-0.050957166,0.106829494,0.19647513,0.033645913,-0.011870995,-0.084762506,0.10700578,0.11329823,-0.11737909,0.037340626,0.17995422,0.09816093,0.004588324,0.1550002,0.08740461,0.07848328,0.15671004,0.20191419,-0.13253303,0.011715621,0.0044921655,-0.10782302,-0.123479754,-0.19745016,0.1363937,0.065561675,-0.014287418,0.092012055,0.06840736,0.032450635,0.15005279,0.025499798,-0.11103509,-0.063722454,-0.1102961,0.04524914,-0.21024191,0.1497374,-0.010278824,-0.02691871]	2026-07-23 08:10:15.78882+00	1510c907-5201-4b52-95a3-69585912bafc	30cf22d0-c58c-4322-8a76-6cfc39bc1cb6	\N
40d54c84-8c54-43f5-bbc4-7c20a9088962	uygulama yelpazesine sahiptir. Bu rapor, dinamik program- lamanın teorik temellerini, temel algoritmalarını (Sırt Çantası, En Uzun Ortak Alt Dizi, Matris Zincir Çarpımı, Floyd-Warshall) ve bu algoritmaların karmaşlık analizlerini derinlemesine incelemeyi amaçlamaktadır. Dinamik Programlamanın Teorik Temelleri Bir problemin dinamik programlama ile çözülebilmesi için sağlaması gereken iki kritik özellik bulunmaktadır. Bu özelliklerin varlığı, problemin özyineli (re- cursive) bir yapıda olduğunu ve bu yapının verimli bir şekilde optimize edilebi- leceğini garanti eder. Optimal Altyapı (Optimal Substructure) Optimal altyapı özelliği, bir problemin global optimal çözümünün, o problemin alt problemlerinin optimal çözümleri kullanılarak inşa edilebileceğini ifade eder. Bu prensip, Bellman’ın ”Optimallik Prensibi” (Principle of Optimality) ile formüle edilmiştir. Bellman’a göre, optimal bir politika, başlangıç durumu ve ilk karar ne olursa olsun, geri kalan kararların ilk karardan doğan duruma göre optimal bir politika oluşturması özelliğine sahiptir [2]. Matematiksel olarak ifade etmek gerekirse, eğer bir problem P , P1, P2, . . . , Pk alt problemlerinden oluşuyorsa ve P ’nin optimal çözümü S, Pi alt problemlerinin optimal çözümleri Si’yi içeriyorsa, bu problem optimal altyapıya sahiptir. Bu özel- lik, genellikle ”kes-ve-yapıştır” (cut-and-paste) tekniği ile kanıtlanır. Örneğin, bir çizgede u ve v düğümleri arasındaki en kısa yol problemi ele alındığında, eğer bu yol x düğümünden geçiyorsa, u → x arasındaki yol da u ile x arasındaki en kısa yol olmalıdır. Eğer u → x arasında daha kısa bir yol bulunsaydı, bu yeni yol kullanılarak u → v arasındaki toplam yol kısaltılabilirdi, bu da başlangıçtaki ”en kısa yol” varsayımıyla çelişirdi. Bu mantıksal çıkarım, problemin daha kü- çük parçalara bölünerek (Divide and Conquer) çözülebileceğini gösterir. Ancak dinamik programlamayı ”Böl ve Yönet”ten ayıran temel fark, ikinci özellik olan örtüşen alt problemlerdir [4]. Örtüşen Alt Problemler (Overlapping Subproblems) Örtüşen alt problemler özelliği, bir problemin çözümü sırasında aynı alt problemlerin tekrar tekrar çözülmesi gerektiğini belirtir. Özyineli bir algoritma, aynı girdiye sahip alt problemleri	[-0.3160425,0.032109343,-0.07721437,-0.0123194065,-0.08328738,-0.07632279,-0.17882168,0.07284808,-0.16418661,-0.135121,0.026363615,0.16776185,0.07993074,-0.006905539,-0.089248136,-0.044348523,-0.01001913,0.13547853,-0.009588908,0.068372644,0.00083842594,-0.17075539,0.070265934,-0.030130127,-0.21533853,0.18191144,0.16921835,-0.03372047,0.1441633,-0.3096177,0.05100184,0.37073383,0.046043415,0.071447,-0.17317978,0.05725635,-0.038855575,0.052435596,-0.13620323,0.08962045,0.043126017,0.1163478,0.15908308,-0.03868144,0.05221524,-0.18919265,-0.044936046,-0.07124213,-0.13751215,-0.1395291,-0.26142594,-0.05700248,0.17323518,-0.09613381,0.068986945,0.08396248,0.19471425,-0.09321076,-0.051262803,-0.072170325,0.11103847,-0.02750583,-0.011989988,-0.005354097,0.28904206,0.025586449,0.09184101,0.15135081,0.14668338,0.062503256,-0.3778613,0.025798354,-0.15990329,-0.16223663,0.031703576,0.01506734,-0.11472744,-0.034275282,0.11935047,0.025368059,0.2522619,0.0534311,-0.05154401,0.014114702,-0.11738572,0.062924005,-0.022897623,-0.20437706,-0.11657123,-0.004918351,0.1887497,-0.016809624,-0.030350937,0.046113174,0.18846203,0.20074849,0.096769586,-0.35351533,0.19998074,0.3756213,-0.06742319,-0.12852375,0.0707012,0.064283416,0.055008076,-0.036509685,0.06544836,-0.14358056,-0.10696654,-0.1279608,0.19821194,0.081422344,-0.0070830854,0.011204073,0.108883865,-0.053286027,-0.12596893,0.17090884,-0.05542927,0.09335878,0.0072168196,-0.08450307,0.2181279,0.07024106,0.18952166,-0.17353931,-0.29640144,-0.14492491,-0.09505008,-0.26012734,0.08190476,-0.009003424,-0.051680133,0.010024061,0.10338106,0.13780111,0.061021693,0.023406118,-0.10293421,0.24997562,-0.20370637,0.01047219,0.19230846,-0.016869701,-0.19666658,0.17663866,-0.06088943,-0.08793449,0.105166644,0.2329927,0.19373232,-0.30503204,0.25031835,0.04829747,0.1073051,0.18575796,0.05456584,-0.11909432,-0.019075189,0.11290498,-0.07042004,0.2575338,0.22466879,0.06836072,-0.16738111,0.017794497,0.13402522,-0.20903924,0.19295956,0.04866288,0.044303056,-0.079879925,-0.11263288,0.01224504,0.20622203,-0.019055836,-0.10751416,-0.15704946,0.0074979654,0.21993066,0.20453858,-0.112763196,0.19975488,0.106922105,0.038883112,0.079791024,0.059505817,0.10910857,-0.24223952,0.1416437,-0.028440489,-0.15875793,0.04502566,-0.013922609,-0.09678698,-0.2860344,0.44005886,0.19345412,-0.20412338,0.0757953,-0.22286579,0.20823228,-0.22790848,-0.13805585,-0.16052616,-0.25572482,-0.15200548,-0.08587375,-0.15460324,0.095677845,0.0021615876,0.07855366,-0.2783491,0.1398916,-0.10357355,0.022367707,-0.14058797,-0.21777816,-0.04215544,-0.08870198,0.07572149,0.19299757,0.27618766,-0.23929234,-0.3174048,-0.08368383,-0.34376714,-0.055356078,-0.0763129,0.039061975,-0.23591578,-0.22430137,-0.05433055,0.04212608,-0.053094305,-0.061158627,-0.18059747,0.055510923,0.24568677,-0.21625155,-0.115911715,-0.1334005,0.13047265,-0.116552286,0.12450941,0.2324516,-0.21057826,-0.16494916,0.18020011,0.16375853,0.11453912,-0.19582543,0.012439778,0.004770131,-0.02708684,-0.14351474,-0.07850256,0.32772017,0.059398845,0.0868607,0.04071608,0.031494293,0.12906039,-0.0034223588,-0.037268594,0.027647976,0.04787051,0.17685974,-0.058188155,0.15725636,-0.09477085,0.05162124,0.14498068,0.05091631,-0.101221755,-0.017226297,0.016016869,-0.26998264,-0.13501921,0.025562536,0.0065272665,-0.016167931,0.04669488,-0.15462105,-0.08567342,-0.14344928,-0.08075061,0.11816685,-0.34487998,-0.11799683,-0.10778,-0.12965478,-0.17330499,-0.14414252,-0.046649344,0.09585504,-0.12992159,0.1414139,-0.052941848,0.09587175,0.07684674,0.14237551,-0.18611032,-0.07872944,0.069928855,-0.09374386,0.14903443,0.05980294,-0.07127499,-0.022707798,0.018984364,-0.061083347,0.058197454,0.08402606,0.023503654,-0.15154123,-0.2714477,0.1922344,0.18727487,-0.24742824,0.13663138,-0.22278853,-0.12822695,-0.038736984,0.1767452,0.17441505,-0.21728122,0.1453159,-0.10945322,0.13806419,0.13191333,0.1372289,-0.13477029,-0.03274923,0.026563294,0.2296346,-0.16916722,0.3408031,0.038459174,0.09064745,0.3230405,0.027342543,-0.26889116,0.052210264,-0.10618484,-0.04548929,0.18293816,0.16830087,0.119634435,0.0222273,0.11045522,0.13599455,-0.05859071,0.019707337,0.027684698,0.20559491,0.025545467,0.22767612,0.006114999,0.13277708,0.15451139,0.06140543,-0.050899856,0.016767617,0.018384093,-0.038498037,-0.14654672,-0.15925181,0.11189573,0.18039794,-0.12760538,0.059321404,0.07085228,0.08121449,0.08214089,0.13696527,-0.15235664,-0.14845498,-0.02331639,-0.07168366,-0.28780317,0.1481572,0.014484966,0.007470149]	2026-07-23 08:10:15.789227+00	1510c907-5201-4b52-95a3-69585912bafc	30cf22d0-c58c-4322-8a76-6cfc39bc1cb6	\N
f426760d-a027-4510-ad91-92ba663dc490	(Divide and Conquer) çözülebileceğini gösterir. Ancak dinamik programlamayı ”Böl ve Yönet”ten ayıran temel fark, ikinci özellik olan örtüşen alt problemlerdir [4]. Örtüşen Alt Problemler (Overlapping Subproblems) Örtüşen alt problemler özelliği, bir problemin çözümü sırasında aynı alt problemlerin tekrar tekrar çözülmesi gerektiğini belirtir. Özyineli bir algoritma, aynı girdiye sahip alt problemleri birden fazla kez çağırıyorsa, bu problem örtüşen alt problemlere sahiptir. Bu durum, dinamik programlamanın verimlilik sağladığı ana noktadır. Klasik bir örnek olarak Fibonacci serisinin hesaplanması verilebilir. F (n) = F (n− 1) + F (n − 2) bağıntısı ile tanımlanan seride, F (5) hesaplanırken F (3) değeri hem F (4)’ün hesaplanmasında hem de doğrudan F (5)’in alt dalı olarak hesaplanmasında kullanılır. n değeri büyüdükçe, tekrarlanan hesaplamaların sayısı üstel ola- rak artar (O(2n)). Dinamik programlama, her bir alt problemin sonucunu bir tab- loda saklayarak bu tekrarları engeller ve zaman karmaşıklığını lineer seviyeye (O(n)) indirir. Böl ve Yönet algoritmalarında (örneğin Merge Sort) ise alt problemler genellikle ayrıktır (disjoint) ve her biri bağımsız olarak çözülür; bu nedenle sonuçları saklamaya gerek duyulmaz. Uygulama Yöntemleri: Memoization ve Tabulation Dinamik programlama çözümleri iki ana yaklaşım ile kodlanabilir: Yukarıdan-Aşağıya (Top-Down) Yaklaşım (Memoization): Bu yöntemde prob- lem, doğal özyineli yapısı korunarak kodlanır. Ancak, fonksiyon her çağrıldığında, hesaplanan sonucun daha önce hesaplanıp hesaplanmadığı bir veri yapısında (dizi veya hash tablosu) kontrol edilir. Eğer sonuç mevcutsa, yeniden hesaplama yapılmadan bu değer döndürülür; değilse hesaplama yapılır ve sonuç saklanır [3]. Aşağıdan-Yukarıya (Bottom-Up) Yaklaşım (Tabulation): Bu yöntemde ise özyineleme yerine iteratif döngüler kullanılır. En küçük alt problemden (temel durum) başlanarak, sonuçlar bir tabloya (genellikle matris veya dizi) sırasıyla doldurulur. Büyük problemin çözümü, tablonun son hücresinde elde edilir. Bu yöntem yığın taşması (stack overflow) riskini ortadan kaldırır ve bellek erişim desenleri açısından genellikle daha verimlidir. Algoritma Analizi: 0/1 Sırt Çantası Problemi Sırt çantası problemi, kombinatoryal optimizasyonun en temel problemlerinden biridir ve kaynak tahsisi	[-0.08177414,-0.010478099,-0.005167801,0.0071670087,-0.12208918,-0.23791783,-0.05936212,0.09750032,-0.040684924,-0.11961549,0.03892853,0.2822374,0.21709721,-0.05363569,0.092573866,0.22231483,-0.018958893,0.05323253,-0.33929452,-0.025218666,-0.1803034,-0.35151792,-0.14397232,0.013624001,-0.1919848,0.1640249,0.029746974,0.050762042,0.19644484,-0.19891185,0.10418029,0.33770037,0.037997555,-0.16297683,-0.12375265,-0.018982705,-0.27270812,0.12775657,-0.20818847,0.07962982,0.019905746,0.12614791,0.05812525,-0.26534456,-0.028932085,-0.14600924,-0.11780331,-0.011523187,-0.12648126,-0.16307962,-0.17488341,0.012349397,-0.040010493,-0.12710196,0.057282805,0.028941028,0.073638745,0.061577026,-0.20810503,0.08856809,0.21426493,-0.014945494,0.01852252,-0.04743196,0.33048636,-0.28003028,0.18354407,0.12336851,-0.009213359,0.20990822,-0.1092115,-0.012490609,-0.13318448,-0.08653933,-0.022681195,-0.09784312,-0.036344822,-0.021758823,0.11197805,0.064162426,0.11516841,0.020981543,-0.10649033,-0.10662154,-0.052921485,-0.029683407,0.14432012,-0.08509751,0.059228458,0.03797724,0.11420028,0.04895625,0.1553988,-0.035077095,0.17523831,0.18244271,0.10497855,0.034288485,0.051626813,0.4282878,-0.16520931,-0.05679188,-0.00052958634,0.07927659,0.28415802,0.0671235,0.13116828,-0.2719996,-0.107825994,-0.13665766,0.09973289,0.10032981,0.08537683,0.16141142,-0.060781732,-0.100797944,0.04051784,0.13583371,-0.015829168,0.027760819,0.017572442,-0.17255212,0.22146231,0.13935147,0.29550686,-0.16624263,-0.2459662,-0.29239905,-0.065763034,-0.49579635,0.23644671,-0.105352804,0.0031063973,0.04753726,0.15630057,0.055548582,0.06904036,0.059503224,-0.04581707,0.21476942,-0.10192646,0.04849352,0.19683583,0.05786952,-0.12299584,0.21760836,-0.09850098,0.010907894,0.11308326,-0.029094517,0.016521743,-0.11890547,0.08321685,-0.07586584,0.07206601,0.08422875,0.014483601,-0.10795076,-0.05160297,0.13860527,-0.062519535,0.28849176,0.10189968,-0.034238607,-0.060163666,0.10159397,-0.023918835,-0.024107834,0.12775482,0.055785865,0.0299477,-0.02494151,0.020956328,-0.23796505,0.10263138,-0.014392553,-0.24664381,0.0007870705,-0.023752235,0.09250657,0.19724661,-0.083958544,-0.0004862249,-0.06913818,-0.010771237,-0.00013476796,0.06509306,0.17285492,-0.25672168,0.019936724,-0.032996856,-0.15552554,0.2192866,0.09690785,-0.008394472,-0.2104645,0.5001864,0.08081487,-0.027395599,0.052896257,-0.15520622,0.19362247,0.10909875,-0.10909688,-0.16118433,-0.22078289,0.032420762,-0.1847899,-0.20231733,0.055648565,-0.04688658,0.015508087,-0.20132843,0.15086983,-0.077441745,-0.017057098,-0.084495015,0.1166952,-0.048272077,-0.049136113,0.025217704,0.23872219,0.50724256,-0.129585,-0.2981321,0.100853935,-0.27132112,-0.12458773,-0.3682059,0.06856286,-0.091191135,-0.33168566,-0.10060587,-0.01196188,-0.053378347,-0.0798987,-0.05105794,0.19620863,0.21011685,-0.14159332,0.044077512,-0.04135862,0.042472605,0.005295044,0.049185395,0.41082433,-0.24707039,-0.29581857,0.10189663,0.12581912,0.033888135,-0.07687462,-0.02892629,0.05157625,-0.15326586,0.010234665,-0.0042036516,0.21829765,-0.0329471,0.070501514,-0.10358094,-0.11597602,0.10758582,0.062510684,-0.042750124,-0.04561359,-0.056511305,0.066358685,0.023352722,0.11736583,-0.24695577,-0.027059222,0.105166905,-0.0073761875,-0.12856886,-0.11060291,-0.10464956,-0.19404428,-0.13061078,-0.088169895,0.049976844,0.05889135,-0.027077436,-0.14805068,0.14371009,-0.1296001,0.091338575,0.15590893,-0.13720547,-0.0065522986,-0.12080554,-0.15475897,0.007454564,-0.27491152,-0.055009197,-0.010762029,-0.10704532,-0.14879699,-0.09327114,0.18403268,0.12526226,0.23386236,-0.042471122,-0.07749693,-0.15050259,-0.046071142,0.10114762,0.04314257,-0.32695615,-0.13763016,0.099878065,-0.19743475,-0.110995315,0.022933688,0.06943363,-0.11526692,-0.16863236,0.18832704,0.18233773,-0.07018407,0.1636647,-0.19814189,-0.08953473,-0.09533905,0.22344217,0.0005662758,-0.21021685,0.2437379,-0.011288615,0.3192147,0.08841476,0.22284845,-0.0033729072,-0.07920541,0.051980186,0.09712876,-0.17089207,0.41732955,-0.018091949,0.16071281,0.25953224,0.06281701,-0.3395121,0.24346916,-0.10238206,0.07657534,0.2422406,0.032649018,-0.10433453,-0.119942755,0.19642396,0.06481441,-0.069524646,0.2746289,0.18673968,0.03484799,-0.07743886,0.18247104,-0.03955225,0.012687476,0.204746,-0.085704796,-0.06407346,0.03030049,0.021211877,-0.109979,-0.18306725,-0.15422693,0.08817308,0.07902033,-0.16548717,0.21852568,-0.045006126,0.03647753,0.14741792,-0.15453406,-0.05369077,-0.040370528,-0.08485422,0.03130372,-0.25580952,0.32032645,0.2426818,-0.06537471]	2026-07-23 08:10:15.789595+00	1510c907-5201-4b52-95a3-69585912bafc	30cf22d0-c58c-4322-8a76-6cfc39bc1cb6	\N
a5e7397b-65fd-416f-b9a0-530d29d31c24	tabloya (genellikle matris veya dizi) sırasıyla doldurulur. Büyük problemin çözümü, tablonun son hücresinde elde edilir. Bu yöntem yığın taşması (stack overflow) riskini ortadan kaldırır ve bellek erişim desenleri açısından genellikle daha verimlidir. Algoritma Analizi: 0/1 Sırt Çantası Problemi Sırt çantası problemi, kombinatoryal optimizasyonun en temel problemlerinden biridir ve kaynak tahsisi problemlerinin modellenmesinde kritik rol oynar. Problem Tanımı ve Matematiksel Model 0/1 Sırt Çantası probleminde, bir hırsızın W kapasiteli bir sırt çantası ve n adet nesnesi olduğu varsayılır. Her i. nesnenin bir ağırlığı (wi) ve bir değeri (vi) vardır. Amaç, toplam ağırlığı kapasiteyi aşmayacak şekilde (Σ wixi ≤ W ) toplam değeri (Σ vixi) maksimize etmektir. Buradaki kısıt, her nesnenin ya tam olarak alınması (xi = 1) ya da hiç alınmamasıdır (xi = 0); nesneler parçalanamaz. Bu özellik, problemi ”Kesirli Sırt Çantası” (Fractional Knapsack) probleminden ayırır. Kesirli versiyon, birim ağırlık başına düşen değere göre sıralama yapan açgözlü (greedy) yaklaşım ile çözülebilirken, 0/1 versiyonunda açgözlü yaklaşım optimal sonucu garanti etmez [7]. Dinamik Programlama Çözümü ve Yineleme Bağıntısı” Problemin çözümü için V [i][w] şeklinde iki boyutlu bir durum tanımlanır. Bu ifade, ilk i nesne arasından seçim yapılarak, maksimum w ağırlık kapasitesi ile elde edilebilecek en yüksek değeri temsil eder. Her nesne için iki karar durumu mevcut- tur: Nesneyi almama veya nesneyi alma. Yineleme bağıntısı (recurrence relation) şöyledir: Temel durumlar: V [w] = 0 (Hiç nesne yoksa) ve V [i] = 0 (Kapasite 0 ise). Algoritma Analizi ve Karmaşıklık Bu problemi çözmek için (n + 1) × (W + 1) boyutunda bir tablo oluşturulur. Tablonun her hücresi sabit zamanda (O(1)) doldurulur. Zaman Karmaşıklığı: O(n · W ). Burada n nesne sayısı, W ise kapasitedir. Bu karmaşıklık ”sözde-polinom” (pseudo-polynomial) olarak adlandırılır. Çünkü W değeri, girdinin boyutu (bit sayısı) ile değil, sayısal değeriyle orantılıdır. Uzay Karmaşıklığı: Standart çözümde O(n·W ) bellek alanı gerekir. Ancak, V [i][w]	[-0.10838616,0.1487535,-0.12081199,-0.13264793,-0.015722495,-0.22814108,0.099792615,0.24320553,-0.0020341638,0.0054316735,-0.021268003,0.099076964,0.20254801,0.041519023,-0.08717852,0.03876016,0.020342533,-0.092106536,-0.0891598,-0.05780054,-0.18681765,-0.2847102,0.05679159,-0.013272564,-0.2059397,0.2161564,-0.053233415,-0.05334615,0.11505852,-0.25658128,0.17612894,0.2608011,0.30521107,-0.13452393,0.03049337,0.0018641171,-0.1813738,0.16276324,-0.06360739,0.04960629,-0.13740234,0.2529295,0.13657625,-0.013439436,0.19519956,-0.12794748,-0.09241601,-0.14483528,-0.033971887,-0.24951036,-0.1291644,0.025976988,-0.005474822,-0.19567317,-0.093388066,0.20605154,0.15285178,-0.238754,-0.3005922,0.0999137,0.20784521,0.019639008,0.09118588,-0.08689545,0.35651055,-0.13003784,0.29013795,0.15951177,0.11244239,0.30199328,-0.1869352,0.0086960085,-0.09517269,-0.11190197,0.13159811,0.09256466,-0.10174909,-0.02253969,0.19364092,0.10156553,-0.027377527,-0.0862461,0.10931179,-0.0974812,-0.120538,0.03753144,0.12935641,0.062583275,-0.10088761,-0.11456016,0.14519054,-0.046519928,-0.078465946,0.07928029,0.052231517,0.13171676,0.079250276,0.060269244,0.0003418564,0.38265884,-0.046517998,0.06716118,0.027470045,-0.21833667,0.19441634,0.04374986,0.051676136,-0.20590147,0.027218105,-0.14853518,-0.010589492,0.082385615,0.20623392,0.32537106,-0.05866368,0.020027416,0.02869043,0.066949725,-0.009360006,0.15989658,0.02362068,-0.10972814,0.10460109,0.20480499,-0.02703612,-0.32126212,-0.32994297,-0.23903179,-0.019278668,-0.24458885,0.19026709,-0.13678189,-0.1253483,-0.11156027,-0.03984676,-0.016636565,0.056174826,0.14754827,-0.09025501,-0.08649586,-0.03804213,0.14826715,0.3026387,0.04086042,-0.24934891,0.2923329,-0.13754375,-0.1265403,0.10188899,-0.2094099,0.10479955,-0.1381818,0.22381024,0.092752755,-0.021999829,0.072653085,0.05210516,-0.07254627,-0.22331,0.13024879,-0.18079211,0.24304675,0.0534992,-0.09326181,-0.03734191,0.15296797,0.031132922,-0.13848253,0.035793778,0.052301407,0.29686847,-0.16686578,-0.16988628,-0.12953506,0.15383175,-0.07063113,-0.23791787,-0.03764101,0.024530886,-0.1614208,0.041846294,-0.08668072,-0.034164373,-0.07244393,0.029476847,-0.1642877,0.13436945,0.075969696,-0.14149274,-0.04291887,-0.1934453,-0.037361424,0.18877313,0.1272381,-0.09175169,-0.18590844,0.24395727,0.0074324715,-0.055012535,-0.035260722,-0.11371457,0.0717479,-0.29283962,-0.085989654,0.07551493,-0.069024734,-0.048170652,-0.21450044,-0.041491665,0.047629964,0.03412412,-0.22950672,-0.23694684,0.00083585526,0.014968643,-0.016671382,0.07218775,-0.0037433011,-0.111521885,0.05653098,-0.010344116,0.061690364,0.25551105,-0.2042884,-0.32500863,-0.1309645,-0.10539722,-0.09365014,-0.041400198,0.096204415,-0.027513808,-0.26398787,0.1513401,0.010523378,-0.3283207,0.06576988,0.0020290753,0.15288582,0.10912487,-0.29925567,0.098748855,-0.07504846,0.071904376,-0.045330584,0.007983104,0.34805954,-0.18644436,-0.077418804,-0.013581287,0.13181457,-0.17210916,-0.12847629,0.07557534,-0.018294148,-0.24259895,-0.11207354,0.016144585,0.2698076,0.005397841,0.12669429,0.22120269,-0.030892085,0.1646306,-0.013885682,-0.058897227,-0.12666042,-0.09553157,0.007848046,0.13676152,-0.06671244,-0.13895625,-0.04207295,0.16867575,0.08764651,0.032343052,-0.024550032,0.07757948,-0.08560739,0.01794314,0.23448625,0.18003349,-0.08061094,0.016320746,-0.10287415,0.084035486,-0.13027072,0.09009981,-0.11506444,-0.041329242,0.0408204,-0.10057674,-0.019211695,-0.17357634,-0.1346289,-0.1160723,0.040551566,-0.0113749495,0.13679636,-0.09221617,0.1925606,-0.13933638,0.10676826,-0.0041751415,-0.18074428,-0.15023562,0.03857102,0.16545235,0.17669012,0.18057323,-0.16438776,0.023275543,-0.2400378,-0.23121534,-0.047517482,-0.041776076,-0.17095494,-0.1090491,0.33204854,0.1271001,-0.22056416,0.07527916,-0.24097745,0.095917225,0.03131899,0.17574683,0.07577371,-0.01663096,0.18550012,0.16390188,0.08775321,0.15765437,0.04623825,-0.104753055,0.10537804,-0.13960853,0.10210484,-0.061689794,0.29065832,-0.12356432,-0.18320441,0.23696367,0.029305996,-0.31225157,0.019821106,0.068444274,0.101782285,0.24749653,0.32376957,-0.06945109,-0.18418136,0.089278445,-0.023767699,-0.15413415,0.33449322,0.19502096,0.08740203,-0.0395781,0.20599912,-0.03818634,-0.047518503,0.035888847,-0.039658755,-0.17533234,0.07586571,0.019962467,-0.04699401,-0.16616486,-0.10079955,0.06559959,0.14049318,-0.12455859,0.08010703,0.03563213,0.16746424,0.25811753,-0.033147495,-0.025941946,-0.07398943,0.13083032,0.10554286,-0.12840027,0.05796448,0.13162953,-0.0036459737]	2026-07-23 08:10:15.789898+00	1510c907-5201-4b52-95a3-69585912bafc	30cf22d0-c58c-4322-8a76-6cfc39bc1cb6	\N
9f6728ba-78fd-476c-91b7-ac58a232ac53	Tablonun her hücresi sabit zamanda (O(1)) doldurulur. Zaman Karmaşıklığı: O(n · W ). Burada n nesne sayısı, W ise kapasitedir. Bu karmaşıklık ”sözde-polinom” (pseudo-polynomial) olarak adlandırılır. Çünkü W değeri, girdinin boyutu (bit sayısı) ile değil, sayısal değeriyle orantılıdır. Uzay Karmaşıklığı: Standart çözümde O(n·W ) bellek alanı gerekir. Ancak, V [i][w] değerini hesaplamak için sadece bir önceki satıra (V [i − 1]) ihtiyaç duyulduğun- dan, uzay karmaşıklığı iki satırlık bir dizi kullanılarak O(W ) seviyesine düşürülebilir. Örnek Senaryo: Adım Adım İşleyiş Aşağıdaki verilerle bir örnek senaryo inceleyelim: Kapasite (W ): 4. Nesne 1: (2kg, 12), Nesne 2: (1kg, 10), Nesne 3: (3kg, 20). Tablo 1: 0/1 Sırt Çantası Problemi Çözüm Tablosu Sonuç olarak maksimum değer 30 olarak bulunur (Nesne 2 ve Nesne 3 seçilerek). Algoritma Analizi: En Uzun Ortak Alt Dizi (LCS) En Uzun Ortak Alt Dizi (LCS) problemi, diziler arasındaki benzerliği ölçmek için kullanılan temel bir algoritmadır. Bu problem, karakterlerin ardışık olma zorunluluğu olmadan (ancak sırası korunarak) iki dizide de bulunan en uzun karakter dizisini bulmayı amaçlar. Biyoinformatik ve Diğer Uygulama Alanları LCS algoritması, teorik bilgisayar bilimlerinin ötesinde, özellikle biyoinformatik alanında hayati bir öneme sahiptir. DNA, RNA ve protein dizileri arasındaki genetik akrabalığı tespit etmek, evrimsel ilişkileri analiz etmek veya genetik mutasyonları belirlemek için bu dizilerin hizalanması gerekir. Ayrıca, yazılım mühendisliğinde versiyon kontrol sistemleri (Git vb.), dosyalar arasındaki değişiklikleri tespit etmek için LCS kullanır [8]. Dinamik Programlama ile Çözüm İki dizi X ve Y için yineleme bağıntısı (c[i, j] tablosu uzunlukları tutar): Karmaşıklık Analizi Standart DP tablolama yöntemi ile LCS probleminin zaman karmaşıklığı O(m × n)’dir. Uzay karmaşıklığı da tablonun tamamının saklanması durumunda O(m × n)’dir. Çok büyük veri setlerinde bellek kullanımını azaltmak için Hirschberg Algoritması kullanılır. Hirschberg Algoritması, ”Böl ve Yönet” stratejisini kullanarak uzay karmaşıklığını lineer seviyeye (O(min(m, n))) indirir [9]. Algoritma Analizi: Matris Zincir Çarpımı Matris Zincir Çarpımı	[-0.09088898,0.13689516,-0.014033627,0.06993317,-0.26436898,-0.03674462,0.20378992,0.2808755,0.17530812,-0.006070379,0.11000925,-0.2833383,0.10293837,0.1571783,-0.22319962,-0.024046777,-0.01358569,-0.064296775,-0.45171413,0.00046990393,0.26390618,-0.10815084,-0.16251597,0.013051786,0.13639542,0.1529267,-0.25030372,-0.035570364,0.14130598,-0.017153505,0.12796825,0.3677188,0.24533413,0.03772589,-0.1466937,0.066538416,0.04500548,-0.082758166,0.05459334,0.17458159,-0.056670543,0.20699766,0.018968329,0.25324917,0.16583484,0.13608602,-0.16071886,-0.110638,-0.08015657,-0.10340467,0.016939022,0.24155773,-0.14051841,0.21679124,-0.16771956,0.11419949,0.058720037,-0.117726594,-0.08047527,-0.08387385,0.06819313,0.057710752,-0.030336922,0.018990021,0.049570695,-0.0623317,0.20833299,-0.09914951,0.10920875,0.26258647,0.03021575,0.109116234,-0.108837776,-0.11259192,0.21509793,0.24891008,-0.1922808,-0.14910865,0.12705895,0.13168311,0.04352273,-0.09938552,0.06297475,-0.025727201,-0.13721934,0.0140093025,0.15680178,0.09005928,-0.021034915,-0.08406239,0.0071319663,-0.052665867,-0.31510603,0.087566555,0.06981037,-0.048438564,0.07768999,-0.06864341,0.025512386,0.29308772,-0.066374905,0.1387968,-0.17729235,-0.045802996,0.027701437,0.019801188,-0.08665702,-0.10686214,-0.03953187,0.06980382,0.14128321,-0.07000097,0.033505682,0.26576182,0.14657171,-0.17271964,0.08637334,0.057626855,0.17514075,0.18508442,-0.029420555,-0.03879206,-0.070482135,0.15655302,0.04138179,-0.3748522,0.010051119,0.0061368505,-0.16504014,0.0518528,0.26415703,-0.14560033,-0.0845156,0.37058067,-0.091989204,0.10057613,0.18929432,0.038925417,-0.31476402,0.14406794,0.069912024,0.2636349,0.28676018,-0.027643656,0.017179076,0.30412954,0.13979529,-0.08958512,0.23875627,-0.016040035,-0.0064746225,-0.047259677,0.031270232,-0.25746796,-0.020902772,0.0061615626,-0.019729303,-0.11524937,-0.29902497,0.1457114,-0.024749117,0.031196112,0.14232396,0.028257541,-0.17059727,0.2589056,0.036095794,-0.1450829,-0.08086719,0.06565484,0.23371224,-0.087674215,-0.0127609,-0.1225235,0.2681757,-0.16485196,-0.3192476,0.026683219,0.10672599,-0.0073451684,-0.24431688,-0.05805428,0.27190146,-0.07588276,-0.04209967,0.18244174,0.013681493,0.18153578,-0.14326175,-0.08449281,0.22663778,0.052008983,0.0017493821,0.05829251,-0.16937241,-0.2856513,0.19683874,0.05632882,-0.05202569,-0.08321938,-0.23743221,0.032237805,-0.19164924,-0.10136719,0.2684876,-0.106018506,-0.2684498,0.051544607,-0.2054607,0.10153953,-0.2002315,-0.29694024,-0.3376903,-0.13979095,-0.06815381,0.05943649,-0.08808447,-0.18498023,0.0051369066,-0.19419636,0.025702085,-0.19289556,-0.26133955,-0.1445395,-0.25870594,-0.093693845,-0.26276526,0.017945189,0.021657243,0.041942563,-0.13978992,-0.1631889,0.031968895,-0.08124768,-0.055230837,0.008129016,-0.11398274,0.19649902,-0.026249912,-0.15578365,-0.05930603,-0.13050157,0.15191123,-0.0703419,0.0977197,0.06602026,-0.21126112,-0.107353896,0.040059645,0.110558555,-0.21714662,0.016507272,0.012219755,-0.023751026,-0.17598334,-0.34286836,0.10703271,0.24477354,0.117019564,-0.06935221,0.38004354,-0.010699959,0.03950856,0.089375004,0.041098136,0.057614636,0.24240807,0.16229129,0.12500922,0.02822446,0.064341106,-0.076375276,0.13950038,0.05318118,-0.01898272,-0.1122174,0.07159148,-0.20625708,-0.18084472,-0.021631796,-0.15153237,-0.0472508,0.1300059,-0.18879026,0.13861415,-0.21979578,0.21361879,0.35118178,-0.21717717,-0.083171956,-0.039865203,0.049825862,-0.29916698,-0.08327927,0.042201083,0.12241118,0.12156069,-0.046440706,-0.44321966,0.027766867,0.017701525,0.088171095,0.00981428,0.004302014,-0.17305985,0.11354291,0.26237184,0.0349996,0.02048549,0.021882206,0.20716316,-0.09627697,0.022293305,0.06679438,0.06297935,0.12251976,-0.25703126,0.21093915,0.120695315,-0.08821655,-0.1460414,-0.2023745,-0.18207607,-0.19822799,0.32124197,-0.053218372,0.02376023,-0.14290158,0.06860158,0.28678215,0.376789,-0.12718326,-0.18145981,-0.0836414,0.0050028265,0.22658832,-0.13447629,-0.014904074,-0.010571834,0.16425326,0.13998066,0.119959995,-0.2157474,0.015623309,-0.08280332,0.14209065,0.05460616,0.23403929,-0.24995355,-0.05869274,0.20264688,0.042715196,-0.11324177,0.17663823,-0.09737684,-0.169972,-0.067371614,-0.004706254,-0.07101405,0.08754488,-0.022870775,-0.17004131,-0.030903425,0.18428934,0.20397583,-0.051801354,-0.064358294,-0.009458136,-0.10886575,0.21739295,-0.2397384,0.24963538,-0.07110227,-0.055623334,-0.08005226,-0.006605543,0.027898643,-0.104687884,0.14952992,-0.08276344,-0.19413318,0.03496698,0.03057385,-0.12276785]	2026-07-23 08:10:15.790104+00	1510c907-5201-4b52-95a3-69585912bafc	30cf22d0-c58c-4322-8a76-6cfc39bc1cb6	\N
6061de1d-1563-4aae-b3f1-9ced847e3862	probleminin zaman karmaşıklığı O(m × n)’dir. Uzay karmaşıklığı da tablonun tamamının saklanması durumunda O(m × n)’dir. Çok büyük veri setlerinde bellek kullanımını azaltmak için Hirschberg Algoritması kullanılır. Hirschberg Algoritması, ”Böl ve Yönet” stratejisini kullanarak uzay karmaşıklığını lineer seviyeye (O(min(m, n))) indirir [9]. Algoritma Analizi: Matris Zincir Çarpımı Matris Zincir Çarpımı problemi, bir dizi matrisin çarpılması gerektiğinde, toplam skaler çarpım sayısını minimize edecek parantezleme sırasının bulunması problemidir. Matris çarpımı ilişkiseldir ancak çarpım sırası hesaplama maliye- tini dramatik şekilde değiştirir. Dinamik Programlama Çözümü Problem, bir zinciri daha küçük iki zincire bölme mantığına dayanır. Yineleme bağıntısı (m[i, j] minimum çarpım sayısını tutar): Karmaşıklık Analizi Algoritma, matris zincir uzunluğu L = 2’den n’e kadar artacak şekilde tabloyu doldurur. Toplam zaman karmaşıklığı O(n3)’tür. Uzay karmaşıklığı ise O(n2)’dir. Algoritma Analizi: Floyd-Warshall Algoritması Floyd-Warshall algoritması, ağırlıklı bir grafikteki tüm düğüm çiftleri arasındaki en kısa yolu (All-Pairs Shortest Path) bulmak için kullanılır. Negatif kenar ağırlıklarını desteklemesiyle Dijkstra algoritmasından ayrılır. Algoritmanın Mantığı D(k)[i][j] ifadesi, ara düğüm olarak sadece {1, 2, . . . , k} kümesindeki düğümlerin kullanılmasına izin verildiğinde, i’den j’ye olan en kısa yolu temsil eder. Yineleme bağıntısı: D(k)[i][j] = min(D(k−1)[i][j], D(k−1)[i][k] + D(k−1)[k][j]) Uygulama ve Karşılaştırma Algoritma üç iç içe döngüden oluşur ve zaman karmaşıklığı O(N 3)’tür. Yoğun (Dense) graflarda oldukça verimlidir. Negatif döngülerin tespit edilmesinde (ör- neğin finansal arbitraj fırsatlarında) kullanılabilir. Tablo 2: Floyd-Warshall ve Dijkstra Karşılaştırması Tablo 3: Bellman-Ford, Floyd-Marshall Dijkstra Algoitmalaırının en kısa yol (shortest path) algoritmasının performans karşılaştırmasını gösteren grafik. X : node/vertex Y: Geçen süre Sonuç Bu raporda incelenen Dinamik Programlama paradigması, optimal altyapı ve örtüşen alt problemler özelliklerine sahip karmaşık problemlerin çözümünde vazgeçilmez bir araçtır. Bellman’ın çalışmalarından günümüze, bu yöntem algoritmik düşüncenin temel taşlarından biri haline gelmiştir. 0/1 Sırt Çantası ile kaynak optimizasyonunda, LCS ile genetik analizde, Matris Zincir Çarpımı ile hesaplama verimliliğinde ve Floyd-Warshall ile ağ analizinde sunduğu çözümler,	[-0.10081112,0.0278348,0.09207362,0.13386719,-0.14957221,-0.06488234,0.017151147,0.018876014,0.0783602,-0.13750848,-0.028661426,0.045556903,0.16246435,-0.1983068,-0.10983518,0.029431788,0.05862851,-0.008434948,-0.28129408,0.03995409,0.024944909,-0.1552947,0.010331621,0.049764007,-0.058232848,0.17969358,-0.12989034,-0.09862314,0.12128204,-0.120861344,0.12445216,0.29124552,0.54947376,-0.08988686,0.11108805,-0.12721106,-0.06975157,0.06864348,-0.010697978,0.19472688,-0.124242,0.33622146,0.048162363,0.17661595,0.19427323,-0.061637133,-0.13570862,-0.04311714,-0.18749775,-0.010112571,-0.17979495,0.129215,0.12007644,-0.00023389468,-0.2869356,0.07217732,0.0437011,-0.05069553,-0.19855903,0.021965982,0.2560841,0.08426003,0.050048575,-0.075395614,0.31036133,0.05234242,0.3648157,0.056676604,0.24589102,0.143196,-0.09289151,0.16358623,-0.20478314,0.03411005,0.20645505,-0.023019437,-0.16764018,-0.21485284,0.22915523,0.09621537,-0.036259864,0.033107013,-0.09630653,-0.13621439,-0.04812568,-0.0900752,0.06585949,0.025304064,0.07733367,-0.0126974955,0.13867128,-0.07917163,-0.1819048,0.0440145,-0.011475466,-0.028961418,-0.07446667,-0.122780666,0.04318906,0.38822466,0.034968633,0.0774479,-0.02818887,-0.006417201,0.042412717,0.20581639,0.032382645,-0.13147318,-0.14282127,-0.07613675,0.18281794,9.019859e-06,0.039018996,0.24627478,0.15299398,-0.11551638,0.106484935,0.14281642,0.009621858,0.17559916,-0.22294715,-0.21864103,-0.019904027,0.3722183,0.03883857,-0.34013262,-0.44430614,-0.09158639,-0.14693308,-0.15859182,0.031215008,-0.118782245,0.03492316,0.30441666,-0.13259676,0.12053527,0.14218463,0.05591157,-0.12408703,0.0011464339,-0.15399085,0.12657394,0.38862047,-0.09056009,0.06629319,0.34864405,-0.10575512,-0.054438103,0.16327764,-0.05663122,-0.13242015,-0.18557389,0.33363345,0.033403575,0.0523486,-0.117676504,0.019683197,-0.12369847,-0.3963847,0.20893721,-0.15190698,0.11734331,0.22130132,-0.052663185,-0.04463528,0.15580583,-0.01984741,-0.12131908,0.06382164,0.02408272,0.20736487,-0.15472655,0.03148172,-0.21259058,0.41067064,-0.090831295,-0.098303035,-0.075552374,0.1171434,-0.028889745,-0.06671156,-0.19711114,0.28147098,-0.022883244,0.0407172,0.028759655,0.11567472,0.22668254,-0.27018234,-0.12196731,0.16333936,0.13838564,0.25152755,0.03455839,-0.20247546,-0.14252003,0.23589064,0.17517874,-0.12529162,-0.012489058,-0.13349389,0.09598116,-0.25001276,-0.20421687,0.08040391,-0.21837594,-0.12015061,-0.15123843,-0.13138095,0.27179405,-0.17876683,-0.22490886,-0.47274026,0.011793373,-0.12242093,0.017620273,0.17885762,-0.10855186,0.017455256,-0.09141797,0.05022598,0.01748846,-0.04916036,-0.11031046,-0.2521694,-0.25119418,-0.2696539,-0.18783726,-0.08321595,0.050924856,-0.20243299,-0.27930954,0.06693374,-0.16746739,-0.26633787,-0.004499401,-0.11620966,-0.055763803,0.062888235,-0.23858434,-0.018094894,-0.043423124,-0.06174002,-0.16535296,0.09441263,0.074202165,-0.18932071,-0.25066656,0.0027108975,0.19461285,-0.13664573,-0.008976573,-0.0054393504,0.11285783,-0.28112686,-0.25740165,0.19387138,0.12074678,0.19928408,0.067283705,0.31228924,-0.057843067,-0.013490484,0.03630249,-0.025959611,0.066659726,0.17587565,0.12485056,0.11174248,0.17469391,-0.114030406,0.017239774,0.12967446,-0.04081302,-0.08880791,-0.08779943,0.13122007,-0.1950995,-0.20756558,0.124757655,-0.10594342,0.023357652,0.11327742,-0.02787757,0.074046254,-0.21110305,-0.078120485,0.14482988,-0.12346432,0.018386174,0.07975224,-0.11943257,-0.3436106,-0.059932336,0.05921487,0.030798977,0.08616883,0.14988457,-0.32406348,0.11236115,0.17660683,0.13810486,0.10745897,-0.030989388,-0.11162328,-0.014238151,0.24019387,0.09560178,0.07377112,0.1501128,0.21360202,-0.21945319,-0.08307436,0.114172086,0.010816105,-0.07496471,-0.1978256,0.18628466,0.253697,-0.16642395,0.054248903,-0.209922,-0.12715,-0.0679531,0.39659354,-0.21469568,-0.2051644,0.13552895,0.24054503,0.24733368,0.29608187,-0.049921222,-0.27450222,0.04751783,0.03777063,0.06044462,0.020143794,0.074791715,-0.0027094837,0.061824266,0.13472794,0.07627285,-0.17704695,0.012088915,-0.006837528,0.17042543,0.2816184,0.27770486,-0.27551395,-0.09865086,0.10043627,-0.060415618,-0.07918123,0.22042583,0.02871846,0.18786246,0.03045537,0.04405819,-0.07520996,-0.040420894,0.017705357,-0.12571499,-0.15921324,0.11507754,0.14365834,-0.12695567,-0.20686206,-0.021542748,0.03126226,0.3002611,-0.23476863,0.053933997,-0.10673688,0.19506025,0.048197106,-0.11225304,0.0387759,-0.1272363,0.066329405,0.09404913,-0.14442988,-0.08934522,-0.1855528,-0.17398457]	2026-07-23 08:10:15.790324+00	1510c907-5201-4b52-95a3-69585912bafc	30cf22d0-c58c-4322-8a76-6cfc39bc1cb6	\N
46407a6b-5a98-4562-97ef-565608185f96	paradigması, optimal altyapı ve örtüşen alt problemler özelliklerine sahip karmaşık problemlerin çözümünde vazgeçilmez bir araçtır. Bellman’ın çalışmalarından günümüze, bu yöntem algoritmik düşüncenin temel taşlarından biri haline gelmiştir. 0/1 Sırt Çantası ile kaynak optimizasyonunda, LCS ile genetik analizde, Matris Zincir Çarpımı ile hesaplama verimliliğinde ve Floyd-Warshall ile ağ analizinde sunduğu çözümler, DP’nin çok yönlülüğünü kanıtlamaktadır. Muhammet Yusuf AYAR Yazılım Mühendisliği 230502030 Kaynaklar Bellman, R. (1957). Dynamic Programming. Princeton University Press. Cormen, T. H., Leiserson, C. E., Rivest, R. L., & Stein, C. (2009). Introduction to Algorithms (3rd ed.). MIT Press. Kleinberg, J., & Tardos, É. (2006). Algorithm Design. Pearson Education. Sniedovich, M. (2010). Dynamic Programming: Foundations and Principles (2nd ed.). Taylor & Francis. Dasgupta, S., Papadimitriou, C. H., & Vazirani, U. V. (2008). Algorithms. McGraw-Hill Higher Education. Sedgewick, R., & Wayne, K. (2011). Algorithms (4th ed.). Addison-Wesley Pro- fessional. Martello, S., & Toth, P. (1990). Knapsack Problems: Algorithms and Computer Implementations. John Wiley & Sons. Hirschberg, D. S. (1975). A linear space algorithm for computing maxi- mal common subsequences. Communications of the ACM, 18(6), 341–343. https://doi.org/10.1145/360825.360861 Floyd, R. W. (1962). Algorithm 97: Shortest path. Communications of the ACM, 5(6), 345.	[-0.28197944,-0.10105085,-0.120275855,-0.0509211,-0.26457274,-0.022870576,-0.08474071,0.11701738,-0.14406498,0.06271735,0.11799198,0.12895152,0.01720008,-0.04657173,-0.14273572,0.16007642,-0.16371316,-0.13033043,-0.048581768,-0.050629083,-0.09458039,-0.21012872,-0.0014051697,-0.12800276,-0.15295021,0.12836738,0.16099492,0.052626602,0.085868105,-0.20035923,0.10579075,0.22820053,0.299771,-0.0076110847,-0.11225784,0.0685579,0.052354798,0.1769355,-0.044218533,0.029918091,-0.054067515,0.17190424,0.18013802,0.018477904,0.091814525,-0.072075665,-0.043140642,0.08101948,-0.12836564,-0.27079973,-0.18481474,0.00066168234,0.05921464,-0.24978977,0.056841105,0.23499231,0.20518056,-0.037945073,-0.16188559,-0.0072482466,0.20358941,-0.033873077,-0.0758974,-0.08172049,0.32943526,0.033761274,0.21797535,-0.10896914,0.045011513,0.20344208,-0.31183034,-0.08700855,0.0029483775,-0.14239073,0.16502386,0.020793863,0.073455006,-0.09902052,0.19470988,-0.014042426,0.24140161,0.0825573,0.031691242,0.06444043,-0.11378332,0.039762765,0.06886913,-0.11776695,0.023647565,-0.06284141,0.046770733,-0.08607711,-0.14214645,-0.069796085,0.058313213,0.21929933,0.104285575,-0.006859991,0.07651984,0.2954909,-0.06768358,-0.054326233,-0.074660644,-0.28913003,0.11703353,0.05451023,-0.16088764,-0.12970221,0.006351061,-0.22009143,0.13187572,0.119381264,0.013535486,0.20572051,0.059003115,-0.15645404,-0.11617051,0.06725981,0.08334974,0.03916409,-0.10279783,-0.06633498,0.28644234,0.18365729,0.13103221,-0.1104479,-0.30101776,-0.26552138,-0.052349694,-0.16951065,0.08326839,0.03447975,-0.09056981,0.09847764,0.004671162,-0.033520337,0.16879106,0.08984244,-0.11974589,0.026304524,-0.17204054,0.09703543,0.37472728,0.1903325,-0.1618548,0.18695547,-0.055742875,-0.119967654,0.01693549,-0.037109453,0.13073468,-0.33636358,0.23860598,0.10379499,0.2427008,0.097720526,0.071530014,-0.030762654,-0.022293933,0.1946454,-0.17920624,0.14262962,0.14850476,-0.020850187,-0.078335345,-0.08844016,0.056324866,-0.13703103,0.039680257,0.122691885,0.19993016,-0.13596922,-0.055712424,-0.038689256,-0.0024058996,0.018576423,-0.16360152,0.05786866,-0.038537513,0.08965628,0.2800369,-0.1642622,0.09431177,-0.12203503,-0.019285753,0.0934071,0.14194456,0.31867215,-0.21397166,-0.2227817,-0.09634417,-0.016101338,0.17074907,-0.022954581,-0.14310269,-0.390242,0.3422554,0.12661578,-0.038401168,0.012306615,-0.26103312,0.17370126,-0.25853974,-0.17301905,-0.026410058,-0.07698598,-0.090468936,-0.047823712,-0.16243151,0.25240067,0.058407694,-0.11874971,-0.17737755,-0.03812561,-0.11150596,0.015872113,0.01015318,-0.08945311,-0.18048018,0.007380815,-0.07682369,0.1299154,0.08844569,-0.18442883,-0.4015865,-0.056915537,-0.13618983,-0.05154875,-0.021205474,0.06451765,-0.14955813,-0.16452253,0.2126061,0.054283056,-0.12833624,-0.07782706,0.04744247,0.12251048,0.03721136,-0.0837088,-0.08746356,-0.29543337,0.13614587,-0.067113124,0.17004979,0.23789743,-0.21350473,0.020201989,0.10102193,0.30449873,-0.20192042,-0.13292842,-0.0172171,-0.083251506,-0.09495858,-0.082879715,-0.07429857,0.18717586,0.08763811,0.23670189,0.30974445,-0.0078322645,-0.03862038,0.03180777,0.011635411,-0.062968396,-0.19153304,0.083071806,0.19475749,0.012885064,-0.17148122,0.095360145,-0.01996336,0.06862313,-0.09171507,-0.032673966,0.108351305,-0.15724318,-0.07339744,0.17691737,0.120863795,0.0058431453,0.0062715523,-0.02411028,-0.029888289,-0.1561569,0.08615558,0.07906389,-0.21990949,0.100922406,-0.0906756,-0.13065861,-0.23465268,-0.040907945,-0.118164964,0.07483953,0.028125409,0.09605278,-0.1067012,0.10063544,0.012964411,0.15590636,-0.030670907,-0.19835544,0.010612493,-0.030255089,0.16787545,0.073355675,-0.010395569,-0.009737544,0.10567258,-0.26016632,-0.05581794,0.00047163642,0.025413219,-0.15952379,-0.33176798,0.25290316,0.1998585,-0.17374487,0.14655034,-0.0056747864,-0.1234251,-0.005640574,0.21306257,0.14926459,-0.031474162,0.20955122,-0.022118673,0.054193635,0.101827934,0.16537197,-0.099243514,0.1257247,0.047335118,0.13929261,-0.14598997,0.33896732,-0.16024067,0.015597711,0.5006899,0.15943591,-0.2628815,0.04465889,-0.022831138,0.01387397,0.17390285,0.32485515,-0.021126484,-0.008788353,0.049866967,-0.056268103,-0.1368021,0.1055763,0.10099427,0.039011307,-0.15234299,0.115420304,-0.011787798,-0.14356567,0.08774662,0.082699075,-0.29150528,0.081535384,0.05651566,-0.011131398,-0.1518905,-0.015050589,0.08424306,0.10806916,-0.09501104,0.15934281,0.015082835,0.020773202,0.007071007,-0.02730674,0.053677093,-0.13247529,-0.14568025,-0.09954328,-0.18497062,0.10462694,0.1263991,-0.116745405]	2026-07-23 08:10:15.790517+00	1510c907-5201-4b52-95a3-69585912bafc	30cf22d0-c58c-4322-8a76-6cfc39bc1cb6	\N
9de85800-36f2-425d-a1b8-f810868b7035	Dinamik Programlama ve Örnek Algoritma Analizleri Giriş ve Tarihsel Arka Plan Bilgisayar bilimleri ve yöneylem araştırmaları literatüründe, karmaşık karar problemlerinin çözümünde kullanılan en güçlü paradigmalardan biri Dinamik Programlama (Dynamic Programming - DP) yöntemidir. Bu yaklaşım, özünde karma- şık ve büyük ölçekli problemleri, daha küçük, yönetilebilir ve birbirini tekrar eden alt problemlere bölerek çözen bir optimizasyon stratejisidir [1, 2]. Dinamik programlamanın temel felsefesi, hesaplama kaynaklarının verimli kullanımına dayanır; bir alt problem bir kez çözüldüğünde, elde edilen sonuç saklanır ve gelecekte aynı alt problemle karşılaşıldığında yeniden hesaplama yapılmadan bu saklanan değer kullanılır. Bu süreç, literatürde ”hafızalama” (memoization) veya ”tablolama” (tabulation) olarak adlandırılır [3, 4]. Dinamik programlama terimi, 1950’li yıllarda matematikçi Richard Bellman tarafından literatüre kazandırılmıştır. Bellman, o dönemde RAND Corporation’da çalışırken, çok aşamalı karar süreçleri üzerine yaptığı araştırmaları tanımlamak için bu ismi seçmiştir. İlginç bir tarihsel detay olarak, ”programlama” kelimesi burada bilgisayar kodlamasını değil, askeri ve endüstriyel lojistikte kullanılan ”çizelgeleme” veya ”planlama” kavramını ifade etmektedir. Bellman, ”dinamik” kelimesini ise, araştırmalarının durağan olmayan, zamanla değişen doğasını vurgulamak ve o dönemde matematiksel araştırmalara fon sağlayan kurumların te- orik matematiğe olan mesafeli duruşunu aşmak amacıyla, kulağa etkileyici gelen bir terim olarak tercih etmiştir [1, 5]. Bellman’ın 1957 yılında yayınlanan ”Dynamic Programming” adlı eseri, bu alanın temel taşı olarak kabul edilmekte ve optimizasyon teorisinde bir dönüm noktası sayılmaktadır [5, 6]. Dinamik programlama, özellikle ”Optimal Altyapı” (Optimal Substructure) ve ”Örtüşen Alt Problemler” (Overlapping Subproblems) özelliklerini taşıyan problemlerin çözümünde etkilidir. Bu yöntem, biyoinformatikten (DNA dizileme) ağ yönlendirme protokollerine, finansal portföy yönetiminden robotik hareket planla- maya kadar geniş bir uygulama yelpazesine sahiptir. Bu rapor, dinamik program- lamanın teorik temellerini, temel algoritmalarını (Sırt Çantası, En Uzun Ortak Alt Dizi, Matris Zincir Çarpımı, Floyd-Warshall) ve bu algoritmaların karmaşlık analizlerini derinlemesine incelemeyi amaçlamaktadır. Dinamik Programlamanın Teorik Temelleri Bir problemin dinamik programlama ile çözülebilmesi için sağlaması gereken iki kritik özellik bulunmaktadır. Bu özelliklerin	[-0.31823882,0.10536066,0.0045299046,-0.10002,-0.25419497,-0.23191558,-0.107809864,0.0602204,-0.061925482,0.011974368,-0.04722999,0.37874258,0.14816451,-0.1370807,-0.059515677,0.053729635,0.1086372,0.0689433,-0.087418914,0.025795575,-0.22030473,-0.21246655,-0.038740307,-0.11569159,-0.16084078,0.19731511,0.11203801,-0.027101561,0.16227292,-0.22707152,0.11056317,0.2843808,0.30403227,0.019878384,-0.18800335,0.055092648,-0.1087031,0.1918279,-0.01760087,-0.08469697,-0.013509839,0.19163367,0.067730784,-0.062411886,0.021158934,-0.13146235,-0.03016201,0.086561054,-0.18526036,0.018407831,-0.19311263,0.051632542,0.059847128,-0.2259025,0.13378987,0.051639676,0.33363485,0.01161328,-0.23545288,0.035567768,0.05399339,0.07826231,0.112768754,-0.0030257283,0.24916914,-0.08761648,0.22639555,0.14072807,0.1280892,0.037268125,-0.23895861,-0.05877244,-0.066282615,0.029710175,0.0907654,-0.071789935,-0.04588785,-0.13357297,0.15716495,0.011325394,0.22389597,-0.042220257,-0.06565945,-0.19534522,0.012468638,0.0018715985,0.06800563,0.054460734,0.2033326,0.11974506,0.09765801,0.042857595,-0.027739111,-0.054126337,-0.0034822444,0.18412668,0.13364492,-0.09916834,0.050602756,0.41569734,-0.07901296,-0.09666793,-0.008267128,-0.09390302,0.2406674,0.020873645,0.117140174,-0.18810908,-0.12951624,-0.22281447,0.06816865,0.0409011,0.124469034,0.0027916515,-0.03512288,0.043293737,-0.12943383,0.049090117,-0.039209105,0.016390955,-0.092444465,-0.09140831,0.17117155,0.26644832,0.21058834,-0.13525994,-0.29100025,-0.2610985,-0.11233048,-0.29473782,0.22261308,0.050309725,-0.09646906,0.025106262,0.16771467,-0.014188023,0.08956832,-0.01924585,-0.06727681,0.0248364,-0.08837793,0.17885335,0.2168608,-0.09681168,-0.28405505,0.19335541,-0.016334794,-0.10126586,0.13042076,-0.030491564,0.18250266,-0.19540326,0.092182346,0.09542183,0.16272159,0.10692379,0.09336392,-0.19401863,-0.12259895,0.07273015,-0.1566871,0.23007198,0.13780461,0.0458761,-0.075608015,0.023313874,0.05872343,-0.10002772,0.15553842,0.027721686,0.05632268,-0.10506409,-0.1687899,-0.0070640706,0.16800858,-0.09506701,-0.2364018,-0.1820839,0.06567553,0.06403585,0.3781578,-0.063404724,0.115268975,0.0120091485,0.067166954,0.010103935,0.03187202,0.15914254,-0.3228704,0.022633603,-0.10028191,-0.19847158,0.11326401,-0.13741644,-0.057144776,-0.34011227,0.5157875,0.15363531,0.12750652,0.16209438,-0.10236569,-0.028675895,-0.2025128,-0.17033169,-0.09632715,-0.17681243,-0.21370663,-0.14370565,-0.14520079,0.2584239,0.030111887,0.1132627,-0.15420102,0.20194902,0.0018755789,0.00020095869,-0.18208659,-0.016450498,-0.048602436,-0.036076233,0.13785917,0.053574882,0.2659545,-0.10945901,-0.29712054,0.07992649,-0.25219077,-0.0446582,-0.18878955,-0.001440122,-0.3390836,-0.30458304,0.0010474779,-0.09953379,-0.25903553,-0.11516702,0.004051446,0.11034688,0.19464396,-0.01262637,-0.01060806,-0.22087361,0.07551686,-0.056207586,0.10889144,0.20598315,-0.41680816,-0.09229233,0.22255747,0.09482944,-0.0054666502,-0.11395634,0.010144666,0.013102053,-0.0934562,-0.056354567,-0.03014262,0.21921638,0.034233972,0.14397046,0.007927017,0.057856455,0.0020330474,-0.024449982,-0.06686407,-0.14714064,-0.08174356,0.1918605,0.027031723,0.10756961,-0.30940855,0.22878417,0.17392468,0.12184556,-0.046496317,-0.13480268,0.05210823,-0.3663664,-0.07194978,-0.079253554,0.056097846,-0.058912046,0.036569063,-0.011409078,-0.18515795,-0.06671293,0.07122512,0.15271634,-0.4107399,0.024541274,-0.010946801,-0.0031910026,-0.20630296,-0.29014084,-0.024369758,0.0737563,-0.0739304,0.122835115,-0.04256687,0.060951516,0.19499905,0.12617505,0.037416022,-0.02591253,-0.049459558,-0.12536609,0.1917246,-0.027438339,-0.31179437,-0.035102233,-0.10586,-0.21417218,-0.07921293,0.0039513004,0.029446865,-0.07566508,-0.24884294,0.2018628,0.15569581,-0.18726179,0.067618854,-0.20042583,-0.010330061,0.05863784,0.21664558,0.07562277,-0.046519,0.3403844,0.033096433,0.001960116,0.068021916,0.051456243,-0.027663805,0.17190287,0.08136296,0.15084043,-0.047114983,0.33007106,-0.11332264,-0.0128003135,0.31015253,0.082374096,-0.34966308,0.020723347,-0.050957166,0.106829494,0.19647513,0.033645913,-0.011870995,-0.084762506,0.10700578,0.11329823,-0.11737909,0.037340626,0.17995422,0.09816093,0.004588324,0.1550002,0.08740461,0.07848328,0.15671004,0.20191419,-0.13253303,0.011715621,0.0044921655,-0.10782302,-0.123479754,-0.19745016,0.1363937,0.065561675,-0.014287418,0.092012055,0.06840736,0.032450635,0.15005279,0.025499798,-0.11103509,-0.063722454,-0.1102961,0.04524914,-0.21024191,0.1497374,-0.010278824,-0.02691871]	2026-07-23 08:11:42.503231+00	d11c8839-de3e-4621-bdf2-7b5fbc53eabc	89be9d2e-5e5f-48ea-b92a-003e0c2249e3	\N
10c5bb06-1327-452f-94af-46a0416bad7c	uygulama yelpazesine sahiptir. Bu rapor, dinamik program- lamanın teorik temellerini, temel algoritmalarını (Sırt Çantası, En Uzun Ortak Alt Dizi, Matris Zincir Çarpımı, Floyd-Warshall) ve bu algoritmaların karmaşlık analizlerini derinlemesine incelemeyi amaçlamaktadır. Dinamik Programlamanın Teorik Temelleri Bir problemin dinamik programlama ile çözülebilmesi için sağlaması gereken iki kritik özellik bulunmaktadır. Bu özelliklerin varlığı, problemin özyineli (re- cursive) bir yapıda olduğunu ve bu yapının verimli bir şekilde optimize edilebi- leceğini garanti eder. Optimal Altyapı (Optimal Substructure) Optimal altyapı özelliği, bir problemin global optimal çözümünün, o problemin alt problemlerinin optimal çözümleri kullanılarak inşa edilebileceğini ifade eder. Bu prensip, Bellman’ın ”Optimallik Prensibi” (Principle of Optimality) ile formüle edilmiştir. Bellman’a göre, optimal bir politika, başlangıç durumu ve ilk karar ne olursa olsun, geri kalan kararların ilk karardan doğan duruma göre optimal bir politika oluşturması özelliğine sahiptir [2]. Matematiksel olarak ifade etmek gerekirse, eğer bir problem P , P1, P2, . . . , Pk alt problemlerinden oluşuyorsa ve P ’nin optimal çözümü S, Pi alt problemlerinin optimal çözümleri Si’yi içeriyorsa, bu problem optimal altyapıya sahiptir. Bu özel- lik, genellikle ”kes-ve-yapıştır” (cut-and-paste) tekniği ile kanıtlanır. Örneğin, bir çizgede u ve v düğümleri arasındaki en kısa yol problemi ele alındığında, eğer bu yol x düğümünden geçiyorsa, u → x arasındaki yol da u ile x arasındaki en kısa yol olmalıdır. Eğer u → x arasında daha kısa bir yol bulunsaydı, bu yeni yol kullanılarak u → v arasındaki toplam yol kısaltılabilirdi, bu da başlangıçtaki ”en kısa yol” varsayımıyla çelişirdi. Bu mantıksal çıkarım, problemin daha kü- çük parçalara bölünerek (Divide and Conquer) çözülebileceğini gösterir. Ancak dinamik programlamayı ”Böl ve Yönet”ten ayıran temel fark, ikinci özellik olan örtüşen alt problemlerdir [4]. Örtüşen Alt Problemler (Overlapping Subproblems) Örtüşen alt problemler özelliği, bir problemin çözümü sırasında aynı alt problemlerin tekrar tekrar çözülmesi gerektiğini belirtir. Özyineli bir algoritma, aynı girdiye sahip alt problemleri	[-0.3160425,0.032109343,-0.07721437,-0.0123194065,-0.08328738,-0.07632279,-0.17882168,0.07284808,-0.16418661,-0.135121,0.026363615,0.16776185,0.07993074,-0.006905539,-0.089248136,-0.044348523,-0.01001913,0.13547853,-0.009588908,0.068372644,0.00083842594,-0.17075539,0.070265934,-0.030130127,-0.21533853,0.18191144,0.16921835,-0.03372047,0.1441633,-0.3096177,0.05100184,0.37073383,0.046043415,0.071447,-0.17317978,0.05725635,-0.038855575,0.052435596,-0.13620323,0.08962045,0.043126017,0.1163478,0.15908308,-0.03868144,0.05221524,-0.18919265,-0.044936046,-0.07124213,-0.13751215,-0.1395291,-0.26142594,-0.05700248,0.17323518,-0.09613381,0.068986945,0.08396248,0.19471425,-0.09321076,-0.051262803,-0.072170325,0.11103847,-0.02750583,-0.011989988,-0.005354097,0.28904206,0.025586449,0.09184101,0.15135081,0.14668338,0.062503256,-0.3778613,0.025798354,-0.15990329,-0.16223663,0.031703576,0.01506734,-0.11472744,-0.034275282,0.11935047,0.025368059,0.2522619,0.0534311,-0.05154401,0.014114702,-0.11738572,0.062924005,-0.022897623,-0.20437706,-0.11657123,-0.004918351,0.1887497,-0.016809624,-0.030350937,0.046113174,0.18846203,0.20074849,0.096769586,-0.35351533,0.19998074,0.3756213,-0.06742319,-0.12852375,0.0707012,0.064283416,0.055008076,-0.036509685,0.06544836,-0.14358056,-0.10696654,-0.1279608,0.19821194,0.081422344,-0.0070830854,0.011204073,0.108883865,-0.053286027,-0.12596893,0.17090884,-0.05542927,0.09335878,0.0072168196,-0.08450307,0.2181279,0.07024106,0.18952166,-0.17353931,-0.29640144,-0.14492491,-0.09505008,-0.26012734,0.08190476,-0.009003424,-0.051680133,0.010024061,0.10338106,0.13780111,0.061021693,0.023406118,-0.10293421,0.24997562,-0.20370637,0.01047219,0.19230846,-0.016869701,-0.19666658,0.17663866,-0.06088943,-0.08793449,0.105166644,0.2329927,0.19373232,-0.30503204,0.25031835,0.04829747,0.1073051,0.18575796,0.05456584,-0.11909432,-0.019075189,0.11290498,-0.07042004,0.2575338,0.22466879,0.06836072,-0.16738111,0.017794497,0.13402522,-0.20903924,0.19295956,0.04866288,0.044303056,-0.079879925,-0.11263288,0.01224504,0.20622203,-0.019055836,-0.10751416,-0.15704946,0.0074979654,0.21993066,0.20453858,-0.112763196,0.19975488,0.106922105,0.038883112,0.079791024,0.059505817,0.10910857,-0.24223952,0.1416437,-0.028440489,-0.15875793,0.04502566,-0.013922609,-0.09678698,-0.2860344,0.44005886,0.19345412,-0.20412338,0.0757953,-0.22286579,0.20823228,-0.22790848,-0.13805585,-0.16052616,-0.25572482,-0.15200548,-0.08587375,-0.15460324,0.095677845,0.0021615876,0.07855366,-0.2783491,0.1398916,-0.10357355,0.022367707,-0.14058797,-0.21777816,-0.04215544,-0.08870198,0.07572149,0.19299757,0.27618766,-0.23929234,-0.3174048,-0.08368383,-0.34376714,-0.055356078,-0.0763129,0.039061975,-0.23591578,-0.22430137,-0.05433055,0.04212608,-0.053094305,-0.061158627,-0.18059747,0.055510923,0.24568677,-0.21625155,-0.115911715,-0.1334005,0.13047265,-0.116552286,0.12450941,0.2324516,-0.21057826,-0.16494916,0.18020011,0.16375853,0.11453912,-0.19582543,0.012439778,0.004770131,-0.02708684,-0.14351474,-0.07850256,0.32772017,0.059398845,0.0868607,0.04071608,0.031494293,0.12906039,-0.0034223588,-0.037268594,0.027647976,0.04787051,0.17685974,-0.058188155,0.15725636,-0.09477085,0.05162124,0.14498068,0.05091631,-0.101221755,-0.017226297,0.016016869,-0.26998264,-0.13501921,0.025562536,0.0065272665,-0.016167931,0.04669488,-0.15462105,-0.08567342,-0.14344928,-0.08075061,0.11816685,-0.34487998,-0.11799683,-0.10778,-0.12965478,-0.17330499,-0.14414252,-0.046649344,0.09585504,-0.12992159,0.1414139,-0.052941848,0.09587175,0.07684674,0.14237551,-0.18611032,-0.07872944,0.069928855,-0.09374386,0.14903443,0.05980294,-0.07127499,-0.022707798,0.018984364,-0.061083347,0.058197454,0.08402606,0.023503654,-0.15154123,-0.2714477,0.1922344,0.18727487,-0.24742824,0.13663138,-0.22278853,-0.12822695,-0.038736984,0.1767452,0.17441505,-0.21728122,0.1453159,-0.10945322,0.13806419,0.13191333,0.1372289,-0.13477029,-0.03274923,0.026563294,0.2296346,-0.16916722,0.3408031,0.038459174,0.09064745,0.3230405,0.027342543,-0.26889116,0.052210264,-0.10618484,-0.04548929,0.18293816,0.16830087,0.119634435,0.0222273,0.11045522,0.13599455,-0.05859071,0.019707337,0.027684698,0.20559491,0.025545467,0.22767612,0.006114999,0.13277708,0.15451139,0.06140543,-0.050899856,0.016767617,0.018384093,-0.038498037,-0.14654672,-0.15925181,0.11189573,0.18039794,-0.12760538,0.059321404,0.07085228,0.08121449,0.08214089,0.13696527,-0.15235664,-0.14845498,-0.02331639,-0.07168366,-0.28780317,0.1481572,0.014484966,0.007470149]	2026-07-23 08:11:42.503443+00	d11c8839-de3e-4621-bdf2-7b5fbc53eabc	89be9d2e-5e5f-48ea-b92a-003e0c2249e3	\N
e91d24f1-3768-4f7f-8892-0597c9c1194e	(Divide and Conquer) çözülebileceğini gösterir. Ancak dinamik programlamayı ”Böl ve Yönet”ten ayıran temel fark, ikinci özellik olan örtüşen alt problemlerdir [4]. Örtüşen Alt Problemler (Overlapping Subproblems) Örtüşen alt problemler özelliği, bir problemin çözümü sırasında aynı alt problemlerin tekrar tekrar çözülmesi gerektiğini belirtir. Özyineli bir algoritma, aynı girdiye sahip alt problemleri birden fazla kez çağırıyorsa, bu problem örtüşen alt problemlere sahiptir. Bu durum, dinamik programlamanın verimlilik sağladığı ana noktadır. Klasik bir örnek olarak Fibonacci serisinin hesaplanması verilebilir. F (n) = F (n− 1) + F (n − 2) bağıntısı ile tanımlanan seride, F (5) hesaplanırken F (3) değeri hem F (4)’ün hesaplanmasında hem de doğrudan F (5)’in alt dalı olarak hesaplanmasında kullanılır. n değeri büyüdükçe, tekrarlanan hesaplamaların sayısı üstel ola- rak artar (O(2n)). Dinamik programlama, her bir alt problemin sonucunu bir tab- loda saklayarak bu tekrarları engeller ve zaman karmaşıklığını lineer seviyeye (O(n)) indirir. Böl ve Yönet algoritmalarında (örneğin Merge Sort) ise alt problemler genellikle ayrıktır (disjoint) ve her biri bağımsız olarak çözülür; bu nedenle sonuçları saklamaya gerek duyulmaz. Uygulama Yöntemleri: Memoization ve Tabulation Dinamik programlama çözümleri iki ana yaklaşım ile kodlanabilir: Yukarıdan-Aşağıya (Top-Down) Yaklaşım (Memoization): Bu yöntemde prob- lem, doğal özyineli yapısı korunarak kodlanır. Ancak, fonksiyon her çağrıldığında, hesaplanan sonucun daha önce hesaplanıp hesaplanmadığı bir veri yapısında (dizi veya hash tablosu) kontrol edilir. Eğer sonuç mevcutsa, yeniden hesaplama yapılmadan bu değer döndürülür; değilse hesaplama yapılır ve sonuç saklanır [3]. Aşağıdan-Yukarıya (Bottom-Up) Yaklaşım (Tabulation): Bu yöntemde ise özyineleme yerine iteratif döngüler kullanılır. En küçük alt problemden (temel durum) başlanarak, sonuçlar bir tabloya (genellikle matris veya dizi) sırasıyla doldurulur. Büyük problemin çözümü, tablonun son hücresinde elde edilir. Bu yöntem yığın taşması (stack overflow) riskini ortadan kaldırır ve bellek erişim desenleri açısından genellikle daha verimlidir. Algoritma Analizi: 0/1 Sırt Çantası Problemi Sırt çantası problemi, kombinatoryal optimizasyonun en temel problemlerinden biridir ve kaynak tahsisi	[-0.08177414,-0.010478099,-0.005167801,0.0071670087,-0.12208918,-0.23791783,-0.05936212,0.09750032,-0.040684924,-0.11961549,0.03892853,0.2822374,0.21709721,-0.05363569,0.092573866,0.22231483,-0.018958893,0.05323253,-0.33929452,-0.025218666,-0.1803034,-0.35151792,-0.14397232,0.013624001,-0.1919848,0.1640249,0.029746974,0.050762042,0.19644484,-0.19891185,0.10418029,0.33770037,0.037997555,-0.16297683,-0.12375265,-0.018982705,-0.27270812,0.12775657,-0.20818847,0.07962982,0.019905746,0.12614791,0.05812525,-0.26534456,-0.028932085,-0.14600924,-0.11780331,-0.011523187,-0.12648126,-0.16307962,-0.17488341,0.012349397,-0.040010493,-0.12710196,0.057282805,0.028941028,0.073638745,0.061577026,-0.20810503,0.08856809,0.21426493,-0.014945494,0.01852252,-0.04743196,0.33048636,-0.28003028,0.18354407,0.12336851,-0.009213359,0.20990822,-0.1092115,-0.012490609,-0.13318448,-0.08653933,-0.022681195,-0.09784312,-0.036344822,-0.021758823,0.11197805,0.064162426,0.11516841,0.020981543,-0.10649033,-0.10662154,-0.052921485,-0.029683407,0.14432012,-0.08509751,0.059228458,0.03797724,0.11420028,0.04895625,0.1553988,-0.035077095,0.17523831,0.18244271,0.10497855,0.034288485,0.051626813,0.4282878,-0.16520931,-0.05679188,-0.00052958634,0.07927659,0.28415802,0.0671235,0.13116828,-0.2719996,-0.107825994,-0.13665766,0.09973289,0.10032981,0.08537683,0.16141142,-0.060781732,-0.100797944,0.04051784,0.13583371,-0.015829168,0.027760819,0.017572442,-0.17255212,0.22146231,0.13935147,0.29550686,-0.16624263,-0.2459662,-0.29239905,-0.065763034,-0.49579635,0.23644671,-0.105352804,0.0031063973,0.04753726,0.15630057,0.055548582,0.06904036,0.059503224,-0.04581707,0.21476942,-0.10192646,0.04849352,0.19683583,0.05786952,-0.12299584,0.21760836,-0.09850098,0.010907894,0.11308326,-0.029094517,0.016521743,-0.11890547,0.08321685,-0.07586584,0.07206601,0.08422875,0.014483601,-0.10795076,-0.05160297,0.13860527,-0.062519535,0.28849176,0.10189968,-0.034238607,-0.060163666,0.10159397,-0.023918835,-0.024107834,0.12775482,0.055785865,0.0299477,-0.02494151,0.020956328,-0.23796505,0.10263138,-0.014392553,-0.24664381,0.0007870705,-0.023752235,0.09250657,0.19724661,-0.083958544,-0.0004862249,-0.06913818,-0.010771237,-0.00013476796,0.06509306,0.17285492,-0.25672168,0.019936724,-0.032996856,-0.15552554,0.2192866,0.09690785,-0.008394472,-0.2104645,0.5001864,0.08081487,-0.027395599,0.052896257,-0.15520622,0.19362247,0.10909875,-0.10909688,-0.16118433,-0.22078289,0.032420762,-0.1847899,-0.20231733,0.055648565,-0.04688658,0.015508087,-0.20132843,0.15086983,-0.077441745,-0.017057098,-0.084495015,0.1166952,-0.048272077,-0.049136113,0.025217704,0.23872219,0.50724256,-0.129585,-0.2981321,0.100853935,-0.27132112,-0.12458773,-0.3682059,0.06856286,-0.091191135,-0.33168566,-0.10060587,-0.01196188,-0.053378347,-0.0798987,-0.05105794,0.19620863,0.21011685,-0.14159332,0.044077512,-0.04135862,0.042472605,0.005295044,0.049185395,0.41082433,-0.24707039,-0.29581857,0.10189663,0.12581912,0.033888135,-0.07687462,-0.02892629,0.05157625,-0.15326586,0.010234665,-0.0042036516,0.21829765,-0.0329471,0.070501514,-0.10358094,-0.11597602,0.10758582,0.062510684,-0.042750124,-0.04561359,-0.056511305,0.066358685,0.023352722,0.11736583,-0.24695577,-0.027059222,0.105166905,-0.0073761875,-0.12856886,-0.11060291,-0.10464956,-0.19404428,-0.13061078,-0.088169895,0.049976844,0.05889135,-0.027077436,-0.14805068,0.14371009,-0.1296001,0.091338575,0.15590893,-0.13720547,-0.0065522986,-0.12080554,-0.15475897,0.007454564,-0.27491152,-0.055009197,-0.010762029,-0.10704532,-0.14879699,-0.09327114,0.18403268,0.12526226,0.23386236,-0.042471122,-0.07749693,-0.15050259,-0.046071142,0.10114762,0.04314257,-0.32695615,-0.13763016,0.099878065,-0.19743475,-0.110995315,0.022933688,0.06943363,-0.11526692,-0.16863236,0.18832704,0.18233773,-0.07018407,0.1636647,-0.19814189,-0.08953473,-0.09533905,0.22344217,0.0005662758,-0.21021685,0.2437379,-0.011288615,0.3192147,0.08841476,0.22284845,-0.0033729072,-0.07920541,0.051980186,0.09712876,-0.17089207,0.41732955,-0.018091949,0.16071281,0.25953224,0.06281701,-0.3395121,0.24346916,-0.10238206,0.07657534,0.2422406,0.032649018,-0.10433453,-0.119942755,0.19642396,0.06481441,-0.069524646,0.2746289,0.18673968,0.03484799,-0.07743886,0.18247104,-0.03955225,0.012687476,0.204746,-0.085704796,-0.06407346,0.03030049,0.021211877,-0.109979,-0.18306725,-0.15422693,0.08817308,0.07902033,-0.16548717,0.21852568,-0.045006126,0.03647753,0.14741792,-0.15453406,-0.05369077,-0.040370528,-0.08485422,0.03130372,-0.25580952,0.32032645,0.2426818,-0.06537471]	2026-07-23 08:11:42.503632+00	d11c8839-de3e-4621-bdf2-7b5fbc53eabc	89be9d2e-5e5f-48ea-b92a-003e0c2249e3	\N
9e2b0a14-16cd-4c0f-8da6-9f103f1c5d13	tabloya (genellikle matris veya dizi) sırasıyla doldurulur. Büyük problemin çözümü, tablonun son hücresinde elde edilir. Bu yöntem yığın taşması (stack overflow) riskini ortadan kaldırır ve bellek erişim desenleri açısından genellikle daha verimlidir. Algoritma Analizi: 0/1 Sırt Çantası Problemi Sırt çantası problemi, kombinatoryal optimizasyonun en temel problemlerinden biridir ve kaynak tahsisi problemlerinin modellenmesinde kritik rol oynar. Problem Tanımı ve Matematiksel Model 0/1 Sırt Çantası probleminde, bir hırsızın W kapasiteli bir sırt çantası ve n adet nesnesi olduğu varsayılır. Her i. nesnenin bir ağırlığı (wi) ve bir değeri (vi) vardır. Amaç, toplam ağırlığı kapasiteyi aşmayacak şekilde (Σ wixi ≤ W ) toplam değeri (Σ vixi) maksimize etmektir. Buradaki kısıt, her nesnenin ya tam olarak alınması (xi = 1) ya da hiç alınmamasıdır (xi = 0); nesneler parçalanamaz. Bu özellik, problemi ”Kesirli Sırt Çantası” (Fractional Knapsack) probleminden ayırır. Kesirli versiyon, birim ağırlık başına düşen değere göre sıralama yapan açgözlü (greedy) yaklaşım ile çözülebilirken, 0/1 versiyonunda açgözlü yaklaşım optimal sonucu garanti etmez [7]. Dinamik Programlama Çözümü ve Yineleme Bağıntısı” Problemin çözümü için V [i][w] şeklinde iki boyutlu bir durum tanımlanır. Bu ifade, ilk i nesne arasından seçim yapılarak, maksimum w ağırlık kapasitesi ile elde edilebilecek en yüksek değeri temsil eder. Her nesne için iki karar durumu mevcut- tur: Nesneyi almama veya nesneyi alma. Yineleme bağıntısı (recurrence relation) şöyledir: Temel durumlar: V [w] = 0 (Hiç nesne yoksa) ve V [i] = 0 (Kapasite 0 ise). Algoritma Analizi ve Karmaşıklık Bu problemi çözmek için (n + 1) × (W + 1) boyutunda bir tablo oluşturulur. Tablonun her hücresi sabit zamanda (O(1)) doldurulur. Zaman Karmaşıklığı: O(n · W ). Burada n nesne sayısı, W ise kapasitedir. Bu karmaşıklık ”sözde-polinom” (pseudo-polynomial) olarak adlandırılır. Çünkü W değeri, girdinin boyutu (bit sayısı) ile değil, sayısal değeriyle orantılıdır. Uzay Karmaşıklığı: Standart çözümde O(n·W ) bellek alanı gerekir. Ancak, V [i][w]	[-0.10838616,0.1487535,-0.12081199,-0.13264793,-0.015722495,-0.22814108,0.099792615,0.24320553,-0.0020341638,0.0054316735,-0.021268003,0.099076964,0.20254801,0.041519023,-0.08717852,0.03876016,0.020342533,-0.092106536,-0.0891598,-0.05780054,-0.18681765,-0.2847102,0.05679159,-0.013272564,-0.2059397,0.2161564,-0.053233415,-0.05334615,0.11505852,-0.25658128,0.17612894,0.2608011,0.30521107,-0.13452393,0.03049337,0.0018641171,-0.1813738,0.16276324,-0.06360739,0.04960629,-0.13740234,0.2529295,0.13657625,-0.013439436,0.19519956,-0.12794748,-0.09241601,-0.14483528,-0.033971887,-0.24951036,-0.1291644,0.025976988,-0.005474822,-0.19567317,-0.093388066,0.20605154,0.15285178,-0.238754,-0.3005922,0.0999137,0.20784521,0.019639008,0.09118588,-0.08689545,0.35651055,-0.13003784,0.29013795,0.15951177,0.11244239,0.30199328,-0.1869352,0.0086960085,-0.09517269,-0.11190197,0.13159811,0.09256466,-0.10174909,-0.02253969,0.19364092,0.10156553,-0.027377527,-0.0862461,0.10931179,-0.0974812,-0.120538,0.03753144,0.12935641,0.062583275,-0.10088761,-0.11456016,0.14519054,-0.046519928,-0.078465946,0.07928029,0.052231517,0.13171676,0.079250276,0.060269244,0.0003418564,0.38265884,-0.046517998,0.06716118,0.027470045,-0.21833667,0.19441634,0.04374986,0.051676136,-0.20590147,0.027218105,-0.14853518,-0.010589492,0.082385615,0.20623392,0.32537106,-0.05866368,0.020027416,0.02869043,0.066949725,-0.009360006,0.15989658,0.02362068,-0.10972814,0.10460109,0.20480499,-0.02703612,-0.32126212,-0.32994297,-0.23903179,-0.019278668,-0.24458885,0.19026709,-0.13678189,-0.1253483,-0.11156027,-0.03984676,-0.016636565,0.056174826,0.14754827,-0.09025501,-0.08649586,-0.03804213,0.14826715,0.3026387,0.04086042,-0.24934891,0.2923329,-0.13754375,-0.1265403,0.10188899,-0.2094099,0.10479955,-0.1381818,0.22381024,0.092752755,-0.021999829,0.072653085,0.05210516,-0.07254627,-0.22331,0.13024879,-0.18079211,0.24304675,0.0534992,-0.09326181,-0.03734191,0.15296797,0.031132922,-0.13848253,0.035793778,0.052301407,0.29686847,-0.16686578,-0.16988628,-0.12953506,0.15383175,-0.07063113,-0.23791787,-0.03764101,0.024530886,-0.1614208,0.041846294,-0.08668072,-0.034164373,-0.07244393,0.029476847,-0.1642877,0.13436945,0.075969696,-0.14149274,-0.04291887,-0.1934453,-0.037361424,0.18877313,0.1272381,-0.09175169,-0.18590844,0.24395727,0.0074324715,-0.055012535,-0.035260722,-0.11371457,0.0717479,-0.29283962,-0.085989654,0.07551493,-0.069024734,-0.048170652,-0.21450044,-0.041491665,0.047629964,0.03412412,-0.22950672,-0.23694684,0.00083585526,0.014968643,-0.016671382,0.07218775,-0.0037433011,-0.111521885,0.05653098,-0.010344116,0.061690364,0.25551105,-0.2042884,-0.32500863,-0.1309645,-0.10539722,-0.09365014,-0.041400198,0.096204415,-0.027513808,-0.26398787,0.1513401,0.010523378,-0.3283207,0.06576988,0.0020290753,0.15288582,0.10912487,-0.29925567,0.098748855,-0.07504846,0.071904376,-0.045330584,0.007983104,0.34805954,-0.18644436,-0.077418804,-0.013581287,0.13181457,-0.17210916,-0.12847629,0.07557534,-0.018294148,-0.24259895,-0.11207354,0.016144585,0.2698076,0.005397841,0.12669429,0.22120269,-0.030892085,0.1646306,-0.013885682,-0.058897227,-0.12666042,-0.09553157,0.007848046,0.13676152,-0.06671244,-0.13895625,-0.04207295,0.16867575,0.08764651,0.032343052,-0.024550032,0.07757948,-0.08560739,0.01794314,0.23448625,0.18003349,-0.08061094,0.016320746,-0.10287415,0.084035486,-0.13027072,0.09009981,-0.11506444,-0.041329242,0.0408204,-0.10057674,-0.019211695,-0.17357634,-0.1346289,-0.1160723,0.040551566,-0.0113749495,0.13679636,-0.09221617,0.1925606,-0.13933638,0.10676826,-0.0041751415,-0.18074428,-0.15023562,0.03857102,0.16545235,0.17669012,0.18057323,-0.16438776,0.023275543,-0.2400378,-0.23121534,-0.047517482,-0.041776076,-0.17095494,-0.1090491,0.33204854,0.1271001,-0.22056416,0.07527916,-0.24097745,0.095917225,0.03131899,0.17574683,0.07577371,-0.01663096,0.18550012,0.16390188,0.08775321,0.15765437,0.04623825,-0.104753055,0.10537804,-0.13960853,0.10210484,-0.061689794,0.29065832,-0.12356432,-0.18320441,0.23696367,0.029305996,-0.31225157,0.019821106,0.068444274,0.101782285,0.24749653,0.32376957,-0.06945109,-0.18418136,0.089278445,-0.023767699,-0.15413415,0.33449322,0.19502096,0.08740203,-0.0395781,0.20599912,-0.03818634,-0.047518503,0.035888847,-0.039658755,-0.17533234,0.07586571,0.019962467,-0.04699401,-0.16616486,-0.10079955,0.06559959,0.14049318,-0.12455859,0.08010703,0.03563213,0.16746424,0.25811753,-0.033147495,-0.025941946,-0.07398943,0.13083032,0.10554286,-0.12840027,0.05796448,0.13162953,-0.0036459737]	2026-07-23 08:11:42.503816+00	d11c8839-de3e-4621-bdf2-7b5fbc53eabc	89be9d2e-5e5f-48ea-b92a-003e0c2249e3	\N
684a4786-da06-4dac-aabb-4b88cd66af5d	Tablonun her hücresi sabit zamanda (O(1)) doldurulur. Zaman Karmaşıklığı: O(n · W ). Burada n nesne sayısı, W ise kapasitedir. Bu karmaşıklık ”sözde-polinom” (pseudo-polynomial) olarak adlandırılır. Çünkü W değeri, girdinin boyutu (bit sayısı) ile değil, sayısal değeriyle orantılıdır. Uzay Karmaşıklığı: Standart çözümde O(n·W ) bellek alanı gerekir. Ancak, V [i][w] değerini hesaplamak için sadece bir önceki satıra (V [i − 1]) ihtiyaç duyulduğun- dan, uzay karmaşıklığı iki satırlık bir dizi kullanılarak O(W ) seviyesine düşürülebilir. Örnek Senaryo: Adım Adım İşleyiş Aşağıdaki verilerle bir örnek senaryo inceleyelim: Kapasite (W ): 4. Nesne 1: (2kg, 12), Nesne 2: (1kg, 10), Nesne 3: (3kg, 20). Tablo 1: 0/1 Sırt Çantası Problemi Çözüm Tablosu Sonuç olarak maksimum değer 30 olarak bulunur (Nesne 2 ve Nesne 3 seçilerek). Algoritma Analizi: En Uzun Ortak Alt Dizi (LCS) En Uzun Ortak Alt Dizi (LCS) problemi, diziler arasındaki benzerliği ölçmek için kullanılan temel bir algoritmadır. Bu problem, karakterlerin ardışık olma zorunluluğu olmadan (ancak sırası korunarak) iki dizide de bulunan en uzun karakter dizisini bulmayı amaçlar. Biyoinformatik ve Diğer Uygulama Alanları LCS algoritması, teorik bilgisayar bilimlerinin ötesinde, özellikle biyoinformatik alanında hayati bir öneme sahiptir. DNA, RNA ve protein dizileri arasındaki genetik akrabalığı tespit etmek, evrimsel ilişkileri analiz etmek veya genetik mutasyonları belirlemek için bu dizilerin hizalanması gerekir. Ayrıca, yazılım mühendisliğinde versiyon kontrol sistemleri (Git vb.), dosyalar arasındaki değişiklikleri tespit etmek için LCS kullanır [8]. Dinamik Programlama ile Çözüm İki dizi X ve Y için yineleme bağıntısı (c[i, j] tablosu uzunlukları tutar): Karmaşıklık Analizi Standart DP tablolama yöntemi ile LCS probleminin zaman karmaşıklığı O(m × n)’dir. Uzay karmaşıklığı da tablonun tamamının saklanması durumunda O(m × n)’dir. Çok büyük veri setlerinde bellek kullanımını azaltmak için Hirschberg Algoritması kullanılır. Hirschberg Algoritması, ”Böl ve Yönet” stratejisini kullanarak uzay karmaşıklığını lineer seviyeye (O(min(m, n))) indirir [9]. Algoritma Analizi: Matris Zincir Çarpımı Matris Zincir Çarpımı	[-0.09088898,0.13689516,-0.014033627,0.06993317,-0.26436898,-0.03674462,0.20378992,0.2808755,0.17530812,-0.006070379,0.11000925,-0.2833383,0.10293837,0.1571783,-0.22319962,-0.024046777,-0.01358569,-0.064296775,-0.45171413,0.00046990393,0.26390618,-0.10815084,-0.16251597,0.013051786,0.13639542,0.1529267,-0.25030372,-0.035570364,0.14130598,-0.017153505,0.12796825,0.3677188,0.24533413,0.03772589,-0.1466937,0.066538416,0.04500548,-0.082758166,0.05459334,0.17458159,-0.056670543,0.20699766,0.018968329,0.25324917,0.16583484,0.13608602,-0.16071886,-0.110638,-0.08015657,-0.10340467,0.016939022,0.24155773,-0.14051841,0.21679124,-0.16771956,0.11419949,0.058720037,-0.117726594,-0.08047527,-0.08387385,0.06819313,0.057710752,-0.030336922,0.018990021,0.049570695,-0.0623317,0.20833299,-0.09914951,0.10920875,0.26258647,0.03021575,0.109116234,-0.108837776,-0.11259192,0.21509793,0.24891008,-0.1922808,-0.14910865,0.12705895,0.13168311,0.04352273,-0.09938552,0.06297475,-0.025727201,-0.13721934,0.0140093025,0.15680178,0.09005928,-0.021034915,-0.08406239,0.0071319663,-0.052665867,-0.31510603,0.087566555,0.06981037,-0.048438564,0.07768999,-0.06864341,0.025512386,0.29308772,-0.066374905,0.1387968,-0.17729235,-0.045802996,0.027701437,0.019801188,-0.08665702,-0.10686214,-0.03953187,0.06980382,0.14128321,-0.07000097,0.033505682,0.26576182,0.14657171,-0.17271964,0.08637334,0.057626855,0.17514075,0.18508442,-0.029420555,-0.03879206,-0.070482135,0.15655302,0.04138179,-0.3748522,0.010051119,0.0061368505,-0.16504014,0.0518528,0.26415703,-0.14560033,-0.0845156,0.37058067,-0.091989204,0.10057613,0.18929432,0.038925417,-0.31476402,0.14406794,0.069912024,0.2636349,0.28676018,-0.027643656,0.017179076,0.30412954,0.13979529,-0.08958512,0.23875627,-0.016040035,-0.0064746225,-0.047259677,0.031270232,-0.25746796,-0.020902772,0.0061615626,-0.019729303,-0.11524937,-0.29902497,0.1457114,-0.024749117,0.031196112,0.14232396,0.028257541,-0.17059727,0.2589056,0.036095794,-0.1450829,-0.08086719,0.06565484,0.23371224,-0.087674215,-0.0127609,-0.1225235,0.2681757,-0.16485196,-0.3192476,0.026683219,0.10672599,-0.0073451684,-0.24431688,-0.05805428,0.27190146,-0.07588276,-0.04209967,0.18244174,0.013681493,0.18153578,-0.14326175,-0.08449281,0.22663778,0.052008983,0.0017493821,0.05829251,-0.16937241,-0.2856513,0.19683874,0.05632882,-0.05202569,-0.08321938,-0.23743221,0.032237805,-0.19164924,-0.10136719,0.2684876,-0.106018506,-0.2684498,0.051544607,-0.2054607,0.10153953,-0.2002315,-0.29694024,-0.3376903,-0.13979095,-0.06815381,0.05943649,-0.08808447,-0.18498023,0.0051369066,-0.19419636,0.025702085,-0.19289556,-0.26133955,-0.1445395,-0.25870594,-0.093693845,-0.26276526,0.017945189,0.021657243,0.041942563,-0.13978992,-0.1631889,0.031968895,-0.08124768,-0.055230837,0.008129016,-0.11398274,0.19649902,-0.026249912,-0.15578365,-0.05930603,-0.13050157,0.15191123,-0.0703419,0.0977197,0.06602026,-0.21126112,-0.107353896,0.040059645,0.110558555,-0.21714662,0.016507272,0.012219755,-0.023751026,-0.17598334,-0.34286836,0.10703271,0.24477354,0.117019564,-0.06935221,0.38004354,-0.010699959,0.03950856,0.089375004,0.041098136,0.057614636,0.24240807,0.16229129,0.12500922,0.02822446,0.064341106,-0.076375276,0.13950038,0.05318118,-0.01898272,-0.1122174,0.07159148,-0.20625708,-0.18084472,-0.021631796,-0.15153237,-0.0472508,0.1300059,-0.18879026,0.13861415,-0.21979578,0.21361879,0.35118178,-0.21717717,-0.083171956,-0.039865203,0.049825862,-0.29916698,-0.08327927,0.042201083,0.12241118,0.12156069,-0.046440706,-0.44321966,0.027766867,0.017701525,0.088171095,0.00981428,0.004302014,-0.17305985,0.11354291,0.26237184,0.0349996,0.02048549,0.021882206,0.20716316,-0.09627697,0.022293305,0.06679438,0.06297935,0.12251976,-0.25703126,0.21093915,0.120695315,-0.08821655,-0.1460414,-0.2023745,-0.18207607,-0.19822799,0.32124197,-0.053218372,0.02376023,-0.14290158,0.06860158,0.28678215,0.376789,-0.12718326,-0.18145981,-0.0836414,0.0050028265,0.22658832,-0.13447629,-0.014904074,-0.010571834,0.16425326,0.13998066,0.119959995,-0.2157474,0.015623309,-0.08280332,0.14209065,0.05460616,0.23403929,-0.24995355,-0.05869274,0.20264688,0.042715196,-0.11324177,0.17663823,-0.09737684,-0.169972,-0.067371614,-0.004706254,-0.07101405,0.08754488,-0.022870775,-0.17004131,-0.030903425,0.18428934,0.20397583,-0.051801354,-0.064358294,-0.009458136,-0.10886575,0.21739295,-0.2397384,0.24963538,-0.07110227,-0.055623334,-0.08005226,-0.006605543,0.027898643,-0.104687884,0.14952992,-0.08276344,-0.19413318,0.03496698,0.03057385,-0.12276785]	2026-07-23 08:11:42.504+00	d11c8839-de3e-4621-bdf2-7b5fbc53eabc	89be9d2e-5e5f-48ea-b92a-003e0c2249e3	\N
a969154f-39d5-48b7-aa38-9c5fc0b6fbe3	probleminin zaman karmaşıklığı O(m × n)’dir. Uzay karmaşıklığı da tablonun tamamının saklanması durumunda O(m × n)’dir. Çok büyük veri setlerinde bellek kullanımını azaltmak için Hirschberg Algoritması kullanılır. Hirschberg Algoritması, ”Böl ve Yönet” stratejisini kullanarak uzay karmaşıklığını lineer seviyeye (O(min(m, n))) indirir [9]. Algoritma Analizi: Matris Zincir Çarpımı Matris Zincir Çarpımı problemi, bir dizi matrisin çarpılması gerektiğinde, toplam skaler çarpım sayısını minimize edecek parantezleme sırasının bulunması problemidir. Matris çarpımı ilişkiseldir ancak çarpım sırası hesaplama maliye- tini dramatik şekilde değiştirir. Dinamik Programlama Çözümü Problem, bir zinciri daha küçük iki zincire bölme mantığına dayanır. Yineleme bağıntısı (m[i, j] minimum çarpım sayısını tutar): Karmaşıklık Analizi Algoritma, matris zincir uzunluğu L = 2’den n’e kadar artacak şekilde tabloyu doldurur. Toplam zaman karmaşıklığı O(n3)’tür. Uzay karmaşıklığı ise O(n2)’dir. Algoritma Analizi: Floyd-Warshall Algoritması Floyd-Warshall algoritması, ağırlıklı bir grafikteki tüm düğüm çiftleri arasındaki en kısa yolu (All-Pairs Shortest Path) bulmak için kullanılır. Negatif kenar ağırlıklarını desteklemesiyle Dijkstra algoritmasından ayrılır. Algoritmanın Mantığı D(k)[i][j] ifadesi, ara düğüm olarak sadece {1, 2, . . . , k} kümesindeki düğümlerin kullanılmasına izin verildiğinde, i’den j’ye olan en kısa yolu temsil eder. Yineleme bağıntısı: D(k)[i][j] = min(D(k−1)[i][j], D(k−1)[i][k] + D(k−1)[k][j]) Uygulama ve Karşılaştırma Algoritma üç iç içe döngüden oluşur ve zaman karmaşıklığı O(N 3)’tür. Yoğun (Dense) graflarda oldukça verimlidir. Negatif döngülerin tespit edilmesinde (ör- neğin finansal arbitraj fırsatlarında) kullanılabilir. Tablo 2: Floyd-Warshall ve Dijkstra Karşılaştırması Tablo 3: Bellman-Ford, Floyd-Marshall Dijkstra Algoitmalaırının en kısa yol (shortest path) algoritmasının performans karşılaştırmasını gösteren grafik. X : node/vertex Y: Geçen süre Sonuç Bu raporda incelenen Dinamik Programlama paradigması, optimal altyapı ve örtüşen alt problemler özelliklerine sahip karmaşık problemlerin çözümünde vazgeçilmez bir araçtır. Bellman’ın çalışmalarından günümüze, bu yöntem algoritmik düşüncenin temel taşlarından biri haline gelmiştir. 0/1 Sırt Çantası ile kaynak optimizasyonunda, LCS ile genetik analizde, Matris Zincir Çarpımı ile hesaplama verimliliğinde ve Floyd-Warshall ile ağ analizinde sunduğu çözümler,	[-0.10081112,0.0278348,0.09207362,0.13386719,-0.14957221,-0.06488234,0.017151147,0.018876014,0.0783602,-0.13750848,-0.028661426,0.045556903,0.16246435,-0.1983068,-0.10983518,0.029431788,0.05862851,-0.008434948,-0.28129408,0.03995409,0.024944909,-0.1552947,0.010331621,0.049764007,-0.058232848,0.17969358,-0.12989034,-0.09862314,0.12128204,-0.120861344,0.12445216,0.29124552,0.54947376,-0.08988686,0.11108805,-0.12721106,-0.06975157,0.06864348,-0.010697978,0.19472688,-0.124242,0.33622146,0.048162363,0.17661595,0.19427323,-0.061637133,-0.13570862,-0.04311714,-0.18749775,-0.010112571,-0.17979495,0.129215,0.12007644,-0.00023389468,-0.2869356,0.07217732,0.0437011,-0.05069553,-0.19855903,0.021965982,0.2560841,0.08426003,0.050048575,-0.075395614,0.31036133,0.05234242,0.3648157,0.056676604,0.24589102,0.143196,-0.09289151,0.16358623,-0.20478314,0.03411005,0.20645505,-0.023019437,-0.16764018,-0.21485284,0.22915523,0.09621537,-0.036259864,0.033107013,-0.09630653,-0.13621439,-0.04812568,-0.0900752,0.06585949,0.025304064,0.07733367,-0.0126974955,0.13867128,-0.07917163,-0.1819048,0.0440145,-0.011475466,-0.028961418,-0.07446667,-0.122780666,0.04318906,0.38822466,0.034968633,0.0774479,-0.02818887,-0.006417201,0.042412717,0.20581639,0.032382645,-0.13147318,-0.14282127,-0.07613675,0.18281794,9.019859e-06,0.039018996,0.24627478,0.15299398,-0.11551638,0.106484935,0.14281642,0.009621858,0.17559916,-0.22294715,-0.21864103,-0.019904027,0.3722183,0.03883857,-0.34013262,-0.44430614,-0.09158639,-0.14693308,-0.15859182,0.031215008,-0.118782245,0.03492316,0.30441666,-0.13259676,0.12053527,0.14218463,0.05591157,-0.12408703,0.0011464339,-0.15399085,0.12657394,0.38862047,-0.09056009,0.06629319,0.34864405,-0.10575512,-0.054438103,0.16327764,-0.05663122,-0.13242015,-0.18557389,0.33363345,0.033403575,0.0523486,-0.117676504,0.019683197,-0.12369847,-0.3963847,0.20893721,-0.15190698,0.11734331,0.22130132,-0.052663185,-0.04463528,0.15580583,-0.01984741,-0.12131908,0.06382164,0.02408272,0.20736487,-0.15472655,0.03148172,-0.21259058,0.41067064,-0.090831295,-0.098303035,-0.075552374,0.1171434,-0.028889745,-0.06671156,-0.19711114,0.28147098,-0.022883244,0.0407172,0.028759655,0.11567472,0.22668254,-0.27018234,-0.12196731,0.16333936,0.13838564,0.25152755,0.03455839,-0.20247546,-0.14252003,0.23589064,0.17517874,-0.12529162,-0.012489058,-0.13349389,0.09598116,-0.25001276,-0.20421687,0.08040391,-0.21837594,-0.12015061,-0.15123843,-0.13138095,0.27179405,-0.17876683,-0.22490886,-0.47274026,0.011793373,-0.12242093,0.017620273,0.17885762,-0.10855186,0.017455256,-0.09141797,0.05022598,0.01748846,-0.04916036,-0.11031046,-0.2521694,-0.25119418,-0.2696539,-0.18783726,-0.08321595,0.050924856,-0.20243299,-0.27930954,0.06693374,-0.16746739,-0.26633787,-0.004499401,-0.11620966,-0.055763803,0.062888235,-0.23858434,-0.018094894,-0.043423124,-0.06174002,-0.16535296,0.09441263,0.074202165,-0.18932071,-0.25066656,0.0027108975,0.19461285,-0.13664573,-0.008976573,-0.0054393504,0.11285783,-0.28112686,-0.25740165,0.19387138,0.12074678,0.19928408,0.067283705,0.31228924,-0.057843067,-0.013490484,0.03630249,-0.025959611,0.066659726,0.17587565,0.12485056,0.11174248,0.17469391,-0.114030406,0.017239774,0.12967446,-0.04081302,-0.08880791,-0.08779943,0.13122007,-0.1950995,-0.20756558,0.124757655,-0.10594342,0.023357652,0.11327742,-0.02787757,0.074046254,-0.21110305,-0.078120485,0.14482988,-0.12346432,0.018386174,0.07975224,-0.11943257,-0.3436106,-0.059932336,0.05921487,0.030798977,0.08616883,0.14988457,-0.32406348,0.11236115,0.17660683,0.13810486,0.10745897,-0.030989388,-0.11162328,-0.014238151,0.24019387,0.09560178,0.07377112,0.1501128,0.21360202,-0.21945319,-0.08307436,0.114172086,0.010816105,-0.07496471,-0.1978256,0.18628466,0.253697,-0.16642395,0.054248903,-0.209922,-0.12715,-0.0679531,0.39659354,-0.21469568,-0.2051644,0.13552895,0.24054503,0.24733368,0.29608187,-0.049921222,-0.27450222,0.04751783,0.03777063,0.06044462,0.020143794,0.074791715,-0.0027094837,0.061824266,0.13472794,0.07627285,-0.17704695,0.012088915,-0.006837528,0.17042543,0.2816184,0.27770486,-0.27551395,-0.09865086,0.10043627,-0.060415618,-0.07918123,0.22042583,0.02871846,0.18786246,0.03045537,0.04405819,-0.07520996,-0.040420894,0.017705357,-0.12571499,-0.15921324,0.11507754,0.14365834,-0.12695567,-0.20686206,-0.021542748,0.03126226,0.3002611,-0.23476863,0.053933997,-0.10673688,0.19506025,0.048197106,-0.11225304,0.0387759,-0.1272363,0.066329405,0.09404913,-0.14442988,-0.08934522,-0.1855528,-0.17398457]	2026-07-23 08:11:42.504186+00	d11c8839-de3e-4621-bdf2-7b5fbc53eabc	89be9d2e-5e5f-48ea-b92a-003e0c2249e3	\N
10b173bb-3212-49ba-902e-ececa58403ad	paradigması, optimal altyapı ve örtüşen alt problemler özelliklerine sahip karmaşık problemlerin çözümünde vazgeçilmez bir araçtır. Bellman’ın çalışmalarından günümüze, bu yöntem algoritmik düşüncenin temel taşlarından biri haline gelmiştir. 0/1 Sırt Çantası ile kaynak optimizasyonunda, LCS ile genetik analizde, Matris Zincir Çarpımı ile hesaplama verimliliğinde ve Floyd-Warshall ile ağ analizinde sunduğu çözümler, DP’nin çok yönlülüğünü kanıtlamaktadır. Muhammet Yusuf AYAR Yazılım Mühendisliği 230502030 Kaynaklar Bellman, R. (1957). Dynamic Programming. Princeton University Press. Cormen, T. H., Leiserson, C. E., Rivest, R. L., & Stein, C. (2009). Introduction to Algorithms (3rd ed.). MIT Press. Kleinberg, J., & Tardos, É. (2006). Algorithm Design. Pearson Education. Sniedovich, M. (2010). Dynamic Programming: Foundations and Principles (2nd ed.). Taylor & Francis. Dasgupta, S., Papadimitriou, C. H., & Vazirani, U. V. (2008). Algorithms. McGraw-Hill Higher Education. Sedgewick, R., & Wayne, K. (2011). Algorithms (4th ed.). Addison-Wesley Pro- fessional. Martello, S., & Toth, P. (1990). Knapsack Problems: Algorithms and Computer Implementations. John Wiley & Sons. Hirschberg, D. S. (1975). A linear space algorithm for computing maxi- mal common subsequences. Communications of the ACM, 18(6), 341–343. https://doi.org/10.1145/360825.360861 Floyd, R. W. (1962). Algorithm 97: Shortest path. Communications of the ACM, 5(6), 345.	[-0.28197944,-0.10105085,-0.120275855,-0.0509211,-0.26457274,-0.022870576,-0.08474071,0.11701738,-0.14406498,0.06271735,0.11799198,0.12895152,0.01720008,-0.04657173,-0.14273572,0.16007642,-0.16371316,-0.13033043,-0.048581768,-0.050629083,-0.09458039,-0.21012872,-0.0014051697,-0.12800276,-0.15295021,0.12836738,0.16099492,0.052626602,0.085868105,-0.20035923,0.10579075,0.22820053,0.299771,-0.0076110847,-0.11225784,0.0685579,0.052354798,0.1769355,-0.044218533,0.029918091,-0.054067515,0.17190424,0.18013802,0.018477904,0.091814525,-0.072075665,-0.043140642,0.08101948,-0.12836564,-0.27079973,-0.18481474,0.00066168234,0.05921464,-0.24978977,0.056841105,0.23499231,0.20518056,-0.037945073,-0.16188559,-0.0072482466,0.20358941,-0.033873077,-0.0758974,-0.08172049,0.32943526,0.033761274,0.21797535,-0.10896914,0.045011513,0.20344208,-0.31183034,-0.08700855,0.0029483775,-0.14239073,0.16502386,0.020793863,0.073455006,-0.09902052,0.19470988,-0.014042426,0.24140161,0.0825573,0.031691242,0.06444043,-0.11378332,0.039762765,0.06886913,-0.11776695,0.023647565,-0.06284141,0.046770733,-0.08607711,-0.14214645,-0.069796085,0.058313213,0.21929933,0.104285575,-0.006859991,0.07651984,0.2954909,-0.06768358,-0.054326233,-0.074660644,-0.28913003,0.11703353,0.05451023,-0.16088764,-0.12970221,0.006351061,-0.22009143,0.13187572,0.119381264,0.013535486,0.20572051,0.059003115,-0.15645404,-0.11617051,0.06725981,0.08334974,0.03916409,-0.10279783,-0.06633498,0.28644234,0.18365729,0.13103221,-0.1104479,-0.30101776,-0.26552138,-0.052349694,-0.16951065,0.08326839,0.03447975,-0.09056981,0.09847764,0.004671162,-0.033520337,0.16879106,0.08984244,-0.11974589,0.026304524,-0.17204054,0.09703543,0.37472728,0.1903325,-0.1618548,0.18695547,-0.055742875,-0.119967654,0.01693549,-0.037109453,0.13073468,-0.33636358,0.23860598,0.10379499,0.2427008,0.097720526,0.071530014,-0.030762654,-0.022293933,0.1946454,-0.17920624,0.14262962,0.14850476,-0.020850187,-0.078335345,-0.08844016,0.056324866,-0.13703103,0.039680257,0.122691885,0.19993016,-0.13596922,-0.055712424,-0.038689256,-0.0024058996,0.018576423,-0.16360152,0.05786866,-0.038537513,0.08965628,0.2800369,-0.1642622,0.09431177,-0.12203503,-0.019285753,0.0934071,0.14194456,0.31867215,-0.21397166,-0.2227817,-0.09634417,-0.016101338,0.17074907,-0.022954581,-0.14310269,-0.390242,0.3422554,0.12661578,-0.038401168,0.012306615,-0.26103312,0.17370126,-0.25853974,-0.17301905,-0.026410058,-0.07698598,-0.090468936,-0.047823712,-0.16243151,0.25240067,0.058407694,-0.11874971,-0.17737755,-0.03812561,-0.11150596,0.015872113,0.01015318,-0.08945311,-0.18048018,0.007380815,-0.07682369,0.1299154,0.08844569,-0.18442883,-0.4015865,-0.056915537,-0.13618983,-0.05154875,-0.021205474,0.06451765,-0.14955813,-0.16452253,0.2126061,0.054283056,-0.12833624,-0.07782706,0.04744247,0.12251048,0.03721136,-0.0837088,-0.08746356,-0.29543337,0.13614587,-0.067113124,0.17004979,0.23789743,-0.21350473,0.020201989,0.10102193,0.30449873,-0.20192042,-0.13292842,-0.0172171,-0.083251506,-0.09495858,-0.082879715,-0.07429857,0.18717586,0.08763811,0.23670189,0.30974445,-0.0078322645,-0.03862038,0.03180777,0.011635411,-0.062968396,-0.19153304,0.083071806,0.19475749,0.012885064,-0.17148122,0.095360145,-0.01996336,0.06862313,-0.09171507,-0.032673966,0.108351305,-0.15724318,-0.07339744,0.17691737,0.120863795,0.0058431453,0.0062715523,-0.02411028,-0.029888289,-0.1561569,0.08615558,0.07906389,-0.21990949,0.100922406,-0.0906756,-0.13065861,-0.23465268,-0.040907945,-0.118164964,0.07483953,0.028125409,0.09605278,-0.1067012,0.10063544,0.012964411,0.15590636,-0.030670907,-0.19835544,0.010612493,-0.030255089,0.16787545,0.073355675,-0.010395569,-0.009737544,0.10567258,-0.26016632,-0.05581794,0.00047163642,0.025413219,-0.15952379,-0.33176798,0.25290316,0.1998585,-0.17374487,0.14655034,-0.0056747864,-0.1234251,-0.005640574,0.21306257,0.14926459,-0.031474162,0.20955122,-0.022118673,0.054193635,0.101827934,0.16537197,-0.099243514,0.1257247,0.047335118,0.13929261,-0.14598997,0.33896732,-0.16024067,0.015597711,0.5006899,0.15943591,-0.2628815,0.04465889,-0.022831138,0.01387397,0.17390285,0.32485515,-0.021126484,-0.008788353,0.049866967,-0.056268103,-0.1368021,0.1055763,0.10099427,0.039011307,-0.15234299,0.115420304,-0.011787798,-0.14356567,0.08774662,0.082699075,-0.29150528,0.081535384,0.05651566,-0.011131398,-0.1518905,-0.015050589,0.08424306,0.10806916,-0.09501104,0.15934281,0.015082835,0.020773202,0.007071007,-0.02730674,0.053677093,-0.13247529,-0.14568025,-0.09954328,-0.18497062,0.10462694,0.1263991,-0.116745405]	2026-07-23 08:11:42.504369+00	d11c8839-de3e-4621-bdf2-7b5fbc53eabc	89be9d2e-5e5f-48ea-b92a-003e0c2249e3	\N
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatbot_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatbot_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatbot_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatbot_user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatbot_user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatbot_user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatbot_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatbot_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatbot_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);


--
-- Name: prompts_systemprompt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: chatbot_user
--

SELECT pg_catalog.setval('public.prompts_systemprompt_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: chat_conversation chat_conversation_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.chat_conversation
    ADD CONSTRAINT chat_conversation_pkey PRIMARY KEY (id);


--
-- Name: chat_message chat_message_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.chat_message
    ADD CONSTRAINT chat_message_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: documents_document documents_document_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.documents_document
    ADD CONSTRAINT documents_document_pkey PRIMARY KEY (id);


--
-- Name: documents_globaldocument documents_globaldocument_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.documents_globaldocument
    ADD CONSTRAINT documents_globaldocument_pkey PRIMARY KEY (id);


--
-- Name: prompts_systemprompt prompts_systemprompt_name_key; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.prompts_systemprompt
    ADD CONSTRAINT prompts_systemprompt_name_key UNIQUE (name);


--
-- Name: prompts_systemprompt prompts_systemprompt_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.prompts_systemprompt
    ADD CONSTRAINT prompts_systemprompt_pkey PRIMARY KEY (id);


--
-- Name: rag_documentchunk rag_documentchunk_pkey; Type: CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.rag_documentchunk
    ADD CONSTRAINT rag_documentchunk_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: chat_message_conversation_id_a1207bf4; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX chat_message_conversation_id_a1207bf4 ON public.chat_message USING btree (conversation_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: documents_document_conversation_id_3561dbe3; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX documents_document_conversation_id_3561dbe3 ON public.documents_document USING btree (conversation_id);


--
-- Name: prompts_systemprompt_name_44f4aae1_like; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX prompts_systemprompt_name_44f4aae1_like ON public.prompts_systemprompt USING btree (name varchar_pattern_ops);


--
-- Name: rag_documentchunk_conversation_id_1552c72a; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX rag_documentchunk_conversation_id_1552c72a ON public.rag_documentchunk USING btree (conversation_id);


--
-- Name: rag_documentchunk_document_id_1048dadf; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX rag_documentchunk_document_id_1048dadf ON public.rag_documentchunk USING btree (document_id);


--
-- Name: rag_documentchunk_global_document_id_627658a5; Type: INDEX; Schema: public; Owner: chatbot_user
--

CREATE INDEX rag_documentchunk_global_document_id_627658a5 ON public.rag_documentchunk USING btree (global_document_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: chat_message chat_message_conversation_id_a1207bf4_fk_chat_conversation_id; Type: FK CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.chat_message
    ADD CONSTRAINT chat_message_conversation_id_a1207bf4_fk_chat_conversation_id FOREIGN KEY (conversation_id) REFERENCES public.chat_conversation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: documents_document documents_document_conversation_id_3561dbe3_fk_chat_conv; Type: FK CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.documents_document
    ADD CONSTRAINT documents_document_conversation_id_3561dbe3_fk_chat_conv FOREIGN KEY (conversation_id) REFERENCES public.chat_conversation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rag_documentchunk rag_documentchunk_conversation_id_1552c72a_fk_chat_conv; Type: FK CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.rag_documentchunk
    ADD CONSTRAINT rag_documentchunk_conversation_id_1552c72a_fk_chat_conv FOREIGN KEY (conversation_id) REFERENCES public.chat_conversation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rag_documentchunk rag_documentchunk_document_id_1048dadf_fk_documents_document_id; Type: FK CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.rag_documentchunk
    ADD CONSTRAINT rag_documentchunk_document_id_1048dadf_fk_documents_document_id FOREIGN KEY (document_id) REFERENCES public.documents_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rag_documentchunk rag_documentchunk_global_document_id_627658a5_fk_documents; Type: FK CONSTRAINT; Schema: public; Owner: chatbot_user
--

ALTER TABLE ONLY public.rag_documentchunk
    ADD CONSTRAINT rag_documentchunk_global_document_id_627658a5_fk_documents FOREIGN KEY (global_document_id) REFERENCES public.documents_globaldocument(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

\unrestrict yMTTdmQh9r0EiOJTSrWK8wM1YQgennFQkqAjTxrQqj5vfcaJUeZXn6bCU8SCOb1

