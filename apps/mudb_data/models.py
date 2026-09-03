# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Dil(models.Model):
    türkçe = models.TextField(db_column='Türkçe', blank=True, null=True)  # Field name made lowercase.
    italyanca = models.TextField(db_column='Italyanca', blank=True, null=True)  # Field name made lowercase.
    ingilizce = models.TextField(db_column='Ingilizce', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Dil'


class Firma(models.Model):
    firma = models.TextField(db_column='FIRMA', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'FIRMA'


class Gruplar(models.Model):
    gruplar = models.TextField(db_column='GRUPLAR', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'GRUPLAR'


class Iseda001Kolon(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    merkezleme_elemanları = models.TextField(db_column='Merkezleme Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    d = models.TextField(db_column='D', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    du_mm_field = models.TextField(db_column='DU(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='L2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d3_mm_field = models.TextField(db_column='D3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    aci_deg_field = models.TextField(db_column='ACI(deg)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r_mm_field = models.TextField(db_column='R(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d6_mm_field = models.TextField(db_column='D6(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d7_mm_field = models.TextField(db_column='D7(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d8_mm_field = models.TextField(db_column='D8(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d9_mm_field = models.TextField(db_column='D9(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    stqfaturali = models.TextField(db_column='STQFATURALI', blank=True, null=True)  # Field name made lowercase.
    stqfaturasiz = models.TextField(db_column='STQFATURASIZ', blank=True, null=True)  # Field name made lowercase.
    stqdelikli = models.TextField(db_column='STQDELIKLI', blank=True, null=True)  # Field name made lowercase.
    tofasfaturali = models.TextField(db_column='TOFASFATURALI', blank=True, null=True)  # Field name made lowercase.
    tofasfaturasiz = models.TextField(db_column='TOFASFATURASIZ', blank=True, null=True)  # Field name made lowercase.
    tofasdelikli = models.TextField(db_column='TOFASDELIKLI', blank=True, null=True)  # Field name made lowercase.
    depo_kodufaturali = models.TextField(db_column='Depo_KoduFATURALI', blank=True, null=True)  # Field name made lowercase.
    depo_kodufaturasiz = models.TextField(db_column='Depo_KoduFATURASIZ', blank=True, null=True)  # Field name made lowercase.
    depo_kodudelikli = models.TextField(db_column='Depo_KoduDELIKLI', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA001Kolon'


class Iseda002Azotsilindiri(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    baskı_elemanları = models.TextField(db_column='Baskı Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tipa = models.TextField(db_column='TipA', blank=True, null=True)  # Field name made lowercase.
    kuvvet = models.TextField(db_column='Kuvvet', blank=True, null=True)  # Field name made lowercase.
    kursa = models.TextField(db_column='KursA', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    pcap = models.TextField(db_column='Pcap', blank=True, null=True)  # Field name made lowercase.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dba_mm_field = models.TextField(db_column='Dba(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r_mm_field = models.TextField(db_column='R(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='e(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='d2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d4_mm_field = models.TextField(db_column='d4(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='g(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='b(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='a(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='f(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='h(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ty_mm_field = models.TextField(db_column='Ty(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    rekorbaglantisi = models.TextField(db_column='RekorBaglantisi', blank=True, null=True)  # Field name made lowercase.
    koruyucu = models.TextField(db_column='Koruyucu', blank=True, null=True)  # Field name made lowercase.
    cvtadet = models.TextField(blank=True, null=True)
    kursmax_mm_field = models.TextField(db_column='KursMax(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    specialsprings = models.TextField(db_column='SPECiALSPRiNGS', blank=True, null=True)  # Field name made lowercase.
    specialspringstesisatsiz = models.TextField(db_column='SPECiALSPRiNGSTESiSATSIZ', blank=True, null=True)  # Field name made lowercase.
    specialspringstesisatli = models.TextField(db_column='SPECiALSPRiNGSTESiSATLI', blank=True, null=True)  # Field name made lowercase.
    not1 = models.TextField(db_column='Not1', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    tofastesisatlidolu = models.TextField(db_column='TOFASTESISATLIDOLU', blank=True, null=True)  # Field name made lowercase.
    tofastesisatsizdolu = models.TextField(db_column='TOFASTESISATSIZDOLU', blank=True, null=True)  # Field name made lowercase.
    tofastesisatlibos = models.TextField(db_column='TOFASTESISATLIBOS', blank=True, null=True)  # Field name made lowercase.
    depo_kodutesisatdolu = models.TextField(db_column='Depo_KoduTESISATDOLU', blank=True, null=True)  # Field name made lowercase.
    depo_kodutesisatsizdolu = models.TextField(db_column='Depo_KoduTESISATSIZDOLU', blank=True, null=True)  # Field name made lowercase.
    depo_kodutesisatlibos = models.TextField(db_column='Depo_KoduTESISATLIBOS', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA002AzotSilindiri'


class Iseda003Azotsilindiritutucu(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    baskı_elemanları = models.TextField(db_column='Baskı Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    pcap = models.TextField(db_column='Pcap', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b1_mm_field = models.TextField(db_column='B1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a1_mm_field = models.TextField(db_column='A1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a2_mm_field = models.TextField(db_column='A2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a3_mm_field = models.TextField(db_column='A3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d3_mm_field = models.TextField(db_column='D3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t_mm_field = models.TextField(db_column='T(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    aa_mm_field = models.TextField(db_column='aa(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    bb_mm_field = models.TextField(db_column='bb(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cc_mm_field = models.TextField(db_column='cc(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dd_mm_field = models.TextField(db_column='dd(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ee_mm_field = models.TextField(db_column='ee(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ff_mm_field = models.TextField(db_column='ff(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    gg_mm_field = models.TextField(db_column='gg(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    jj_mm_field = models.TextField(db_column='jj(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hh_mm_field = models.TextField(db_column='hh(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ii_mm_field = models.TextField(db_column='ii(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    nn_mm_field = models.TextField(db_column='nn(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kk_mm_field = models.TextField(db_column='kk(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    zd_mm_field = models.TextField(db_column='ZD(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    zc_mm_field = models.TextField(db_column='ZC(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ho_mm_field = models.TextField(db_column='HO(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ro_mm_field = models.TextField(db_column='RO(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    do_mm_field = models.TextField(db_column='DO(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ao_mm_field = models.TextField(db_column='AO(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fca_mm_field = models.TextField(db_column='fca(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fcb_mm_field = models.TextField(db_column='fcb(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fcc_mm_field = models.TextField(db_column='fcc(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fcd_mm_field = models.TextField(db_column='fcd(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fce_mm_field = models.TextField(db_column='fce(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fcf_mm_field = models.TextField(db_column='fcf(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fcg_mm_field = models.TextField(db_column='fcg(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fch = models.TextField(blank=True, null=True)
    fsa_mm_field = models.TextField(db_column='fsa(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fsb_mm_field = models.TextField(db_column='fsb(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fsc_mm_field = models.TextField(db_column='fsc(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fsd_mm_field = models.TextField(db_column='fsd(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fse_mm_field = models.TextField(db_column='fse(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fsf_mm_field = models.TextField(db_column='fsf(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fsg_mm_field = models.TextField(db_column='fsg(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fsh_mm_field = models.TextField(db_column='fsh(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fsi_mm_field = models.TextField(db_column='fsi(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fsl_mm_field = models.TextField(db_column='fsl(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fsz_mm_field = models.TextField(db_column='fsz(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fsm = models.TextField(blank=True, null=True)
    fsn_mm_field = models.TextField(db_column='fsn(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fso_mm_field = models.TextField(db_column='fso(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    number_2delik = models.TextField(db_column='2delik', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_4delik = models.TextField(db_column='4delik', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    tip01 = models.TextField(db_column='Tip01', blank=True, null=True)  # Field name made lowercase.
    tip02_tip03 = models.TextField(db_column='Tip02-Tip03', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    tip04 = models.TextField(db_column='Tip04', blank=True, null=True)  # Field name made lowercase.
    tip05 = models.TextField(db_column='Tip05', blank=True, null=True)  # Field name made lowercase.
    tip06 = models.TextField(db_column='Tip06', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    specialspring = models.TextField(db_column='SPECiALSPRiNG', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA003AzotSilindiriTutucu'


class Iseda004Askicivatasi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    a = models.TextField(db_column='A', blank=True, null=True)  # Field name made lowercase.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d5_mm_field = models.TextField(db_column='D5(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d3_mm_field = models.TextField(db_column='D3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    sp_mm_field = models.TextField(db_column='SP(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='L2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l3_mm_field = models.TextField(db_column='L3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    s_mm_field = models.TextField(db_column='S(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    gs = models.TextField(db_column='GS', blank=True, null=True)  # Field name made lowercase.
    mi = models.TextField(db_column='Mi', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='ML(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA004AskiCivatasi'


class Iseda005Kolonburctutucu(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    merkezleme_elemanları = models.TextField(db_column='Merkezleme Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dx_mm_field = models.TextField(db_column='Dx(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h1_mm_field = models.TextField(db_column='H1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h2_mm_field = models.TextField(db_column='H2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t_mm_field = models.TextField(db_column='T(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA005KolonBurcTutucu'


class Iseda006Yayliitici(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    cikaricilar_iticiler = models.TextField(db_column='Cikaricilar-iticiler', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d4_mm_field = models.TextField(db_column='D4(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d5_mm_field = models.TextField(db_column='D5(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l3_mm_field = models.TextField(db_column='L3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    s_mm_field = models.TextField(db_column='S(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    not_field = models.TextField(db_column='NOT', blank=True, null=True)  # Field name made lowercase. Field renamed because it was a Python reserved word.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA006Yayliitici'


class Iseda008Disstoper(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    stoplama_elemanları = models.TextField(db_column='Stoplama Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d3_mm_field = models.TextField(db_column='D3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h1_mm_field = models.TextField(db_column='H1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h2_mm_field = models.TextField(db_column='H2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA008DisStoper'


class Iseda009Lkizak(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    merkezleme_elemanları = models.TextField(db_column='Merkezleme Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b2_mm_field = models.TextField(db_column='B2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g1_mm_field = models.TextField(db_column='G1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e1_mm_field = models.TextField(db_column='E1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e2_mm_field = models.TextField(db_column='E2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e3_mm_field = models.TextField(db_column='E3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e4_mm_field = models.TextField(db_column='E4(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r_mm_field = models.TextField(db_column='R(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cvtadet = models.TextField(db_column='CvtAdet', blank=True, null=True)  # Field name made lowercase.
    cd_mm_field = models.TextField(db_column='CD(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='CB(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hvs1x_mm_field = models.TextField(db_column='Hvs1x(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hvs1y_mm_field = models.TextField(db_column='Hvs1y(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hvs2x_mm_field = models.TextField(db_column='Hvs2x(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hvs2y_mm_field = models.TextField(db_column='Hvs2y(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hvs3x_mm_field = models.TextField(db_column='Hvs3x(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hvs3y_mm_field = models.TextField(db_column='Hvs3y(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hvs4x_mm_field = models.TextField(db_column='Hvs4x(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hvs4y_mm_field = models.TextField(db_column='Hvs4y(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hvs5x_mm_field = models.TextField(db_column='Hvs5x(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hvs5y_mm_field = models.TextField(db_column='Hvs5y(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hvs6x_mm_field = models.TextField(db_column='Hvs6x(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hvs6y_mm_field = models.TextField(db_column='Hvs6y(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA009LKizak'


class Iseda010Kamstoperi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    kam_elemanları = models.TextField(db_column='Kam Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='L2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l5_mm_field = models.TextField(db_column='L5(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l3_mm_field = models.TextField(db_column='L3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l6_mm_field = models.TextField(db_column='L6(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l7_mm_field = models.TextField(db_column='L7(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l4_mm_field = models.TextField(db_column='L4(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c1_mm_field = models.TextField(db_column='C1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c2_mm_field = models.TextField(db_column='C2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h1_mm_field = models.TextField(db_column='H1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c3_mm_field = models.TextField(db_column='C3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d3_mm_field = models.TextField(db_column='D3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    yazi_mm_field = models.TextField(db_column='Yazi(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA010Kamstoperi'


class Iseda011Azotsilindirikarsiligi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    baskı_elemanları = models.TextField(db_column='Baskı Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e2_mm_field = models.TextField(db_column='E2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t_mm_field = models.TextField(db_column='T(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dsc_mm_field = models.TextField(db_column='Dsc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    tofaskare = models.TextField(db_column='TOFASKARE', blank=True, null=True)  # Field name made lowercase.
    tofasdikdortgen = models.TextField(db_column='TOFASDIKDORTGEN', blank=True, null=True)  # Field name made lowercase.
    depo_kodukare = models.TextField(db_column='Depo_KoduKARE', blank=True, null=True)  # Field name made lowercase.
    depo_kodudikdortgen = models.TextField(db_column='Depo_KoduDIKDORTGEN', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA011AzotSilindiriKarsiligi'


class Iseda012Kamkapaklari(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    kam_elemanları = models.TextField(db_column='Kam Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    s_mm_field = models.TextField(db_column='S(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b1_mm_field = models.TextField(db_column='B1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a1_mm_field = models.TextField(db_column='A1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b2_mm_field = models.TextField(db_column='B2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a2_mm_field = models.TextField(db_column='A2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b3_mm_field = models.TextField(db_column='B3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a3_mm_field = models.TextField(db_column='A3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b4_mm_field = models.TextField(db_column='B4(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a4_mm_field = models.TextField(db_column='A4(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b5_mm_field = models.TextField(db_column='B5(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a5_mm_field = models.TextField(db_column='A5(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dlk = models.TextField(db_column='DLK', blank=True, null=True)  # Field name made lowercase.
    lc_mm_field = models.TextField(db_column='Lc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    sy_mm_field = models.TextField(db_column='Sy(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    tofasbronzgrafitli = models.TextField(db_column='TOFASBRONZGRAFITLI', blank=True, null=True)  # Field name made lowercase.
    tofascelik = models.TextField(db_column='TOFASCELIK', blank=True, null=True)  # Field name made lowercase.
    depo_kodubronzgrafitli = models.TextField(db_column='Depo_KoduBRONZGRAFITLI', blank=True, null=True)  # Field name made lowercase.
    depo_kodutofascelik = models.TextField(db_column='Depo_KoduTOFASCELIK', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA012KamKapaklari'


class Iseda013Pnomatiksilindir(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    cikaricilar_iticiler = models.TextField(db_column='Cikaricilar-iticiler', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    kurs = models.TextField(db_column='Kurs', blank=True, null=True)  # Field name made lowercase.
    kursa_mm_field = models.TextField(db_column='KURSA(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    boy_mm_field = models.TextField(db_column='BOY(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    boy160_200_mm_field = models.TextField(db_column='BOY160_200(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ust_taban_mm_field = models.TextField(db_column='UST_TABAN(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    alt_taban_mm_field = models.TextField(db_column='ALT_TABAN(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    piston_baslama_plane_mm_field = models.TextField(db_column='PISTON_BASLAMA_PLANE(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    somun_baslama_plane_mm_field = models.TextField(db_column='SOMUN_BASLAMA_PLANE(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    piston_dip_genislik_mm_field = models.TextField(db_column='PISTON_DIP_GENISLIK(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    piston_dip_cap_mm_field = models.TextField(db_column='PISTON_DIP_CAP(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    piston_govde_cap_mm_field = models.TextField(db_column='PISTON_GOVDE_CAP(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    piston_govde_uzunluk_mm_field = models.TextField(db_column='PISTON_GOVDE_UZUNLUK(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    piston_sap_uzunluk_mm_field = models.TextField(db_column='PISTON_SAP_UZUNLUK(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    piston_sap_cap_mm_field = models.TextField(db_column='PISTON_SAP_CAP(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ust_pad_1_mm_field = models.TextField(db_column='UST_PAD_1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ust_pad_cap_1_mm_field = models.TextField(db_column='UST_PAD_CAP_1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ust_pad_2_mm_field = models.TextField(db_column='UST_PAD_2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    alt_pad_mm_field = models.TextField(db_column='ALT_PAD(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    somun_genislik_mm_field = models.TextField(db_column='SOMUN_GENISLIK(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    somun_pad_mm_field = models.TextField(db_column='SOMUN_PAD(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    delik_yz_mm_field = models.TextField(db_column='DELIK_YZ(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    delik_xy_mm_field = models.TextField(db_column='DELIK_XY(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    delik_cap_mm_field = models.TextField(db_column='DELIK_CAP(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    delik_derinlik_mm_field = models.TextField(db_column='DELIK_DERINLIK(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    en1_mm_field = models.TextField(db_column='EN1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    en2_mm_field = models.TextField(db_column='EN2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    number_32lik = models.TextField(db_column='32lik', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_40lik = models.TextField(db_column='40lik', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_50lik = models.TextField(db_column='50lik', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_63luk = models.TextField(db_column='63luk', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_80lik = models.TextField(db_column='80lik', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_100luk = models.TextField(db_column='100luk', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_125lik = models.TextField(db_column='125lik', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_160lik = models.TextField(db_column='160lik', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_200luk = models.TextField(db_column='200luk', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    festo = models.TextField(db_column='FESTO', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA013PnomatikSilindir'


class Iseda014Konikstoper(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    stoplama_elemanları = models.TextField(db_column='Stoplama Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d3_mm_field = models.TextField(db_column='D3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d4_mm_field = models.TextField(db_column='D4(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    n_mm_field = models.TextField(db_column='N(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ha_mm_field = models.TextField(db_column='Ha(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m1 = models.TextField(db_column='M1', blank=True, null=True)  # Field name made lowercase.
    m2 = models.TextField(db_column='M2', blank=True, null=True)  # Field name made lowercase.
    d5_mm_field = models.TextField(db_column='D5(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d6_mm_field = models.TextField(db_column='D6(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d7_mm_field = models.TextField(db_column='D7(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    d8_mm_field = models.TextField(db_column='D8(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA014KonikStoper'


class Iseda015Burc(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    merkezleme_elemanları = models.TextField(db_column='Merkezleme Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d3_mm_field = models.TextField(db_column='D3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='L2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l3_mm_field = models.TextField(db_column='L3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l4_mm_field = models.TextField(db_column='L4(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r1_mm_field = models.TextField(db_column='R1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r2_mm_field = models.TextField(db_column='R2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    rc_mm_field = models.TextField(db_column='Rc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l5_mm_field = models.TextField(db_column='L5(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    db_mm_field = models.TextField(db_column='Db(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    aci_deg_field = models.TextField(db_column='ACI(deg)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA015Burc'


class Iseda016Acilikizak(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    merkezleme_elemanları = models.TextField(db_column='Merkezleme Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    merkezleme_sinifi = models.TextField(db_column='Merkezleme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    alternatif = models.TextField(db_column='Alternatif', blank=True, null=True)  # Field name made lowercase.
    h = models.TextField(db_column='H', blank=True, null=True)  # Field name made lowercase.
    h1_mm_field = models.TextField(db_column='H1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    malzeme = models.TextField(db_column='Malzeme', blank=True, null=True)  # Field name made lowercase.
    sertlik_degeri = models.TextField(db_column='Sertlik_Degeri', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA016AciliKizak'


class Iseda017Pnosilkavramaplakasi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    cikaricilar_iticiler = models.TextField(db_column='Cikaricilar-iticiler', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    d_mm_field = models.TextField(db_column='d(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fb_mm_field = models.TextField(db_column='FB(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mf_mm_field = models.TextField(db_column='MF(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r_mm_field = models.TextField(db_column='R(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    tf_mm_field = models.TextField(db_column='TF(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    tg_mm_field = models.TextField(db_column='TG(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    uf_mm_field = models.TextField(db_column='UF(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='d1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='d2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    molcu_mm_field = models.TextField(db_column='MOlcu(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    l4_mm_field = models.TextField(db_column='L4(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA017PnoSilKavramaPlakasi'


class Iseda018Pnosilbaglantiayagi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    cikaricilar_iticiler = models.TextField(db_column='Cikaricilar-iticiler', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    ab_mm_field = models.TextField(db_column='AB(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ah_mm_field = models.TextField(db_column='AH(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    at_mm_field = models.TextField(db_column='AT(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    au_mm_field = models.TextField(db_column='AU(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ao_mm_field = models.TextField(db_column='AO(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    tr1_mm_field = models.TextField(db_column='TR1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r1_mm_field = models.TextField(db_column='R1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r2_mm_field = models.TextField(db_column='R2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    tg_mm_field = models.TextField(db_column='TG(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    molcu_mm_field = models.TextField(db_column='MOlcu(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA018PnoSilBaglantiAyagi'


class Iseda019Eklembaglantisiat4(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    cikaricilar_iticiler = models.TextField(db_column='Cikaricilar-iticiler', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    ul_mm_field = models.TextField(db_column='UL(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    nh_mm_field = models.TextField(db_column='NH(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    th_mm_field = models.TextField(db_column='TH(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cr_mm_field = models.TextField(db_column='CR(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hb_mm_field = models.TextField(db_column='HB(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hc_mm_field = models.TextField(db_column='HC(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fn_mm_field = models.TextField(db_column='FN(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fk_mm_field = models.TextField(db_column='FK(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='CB(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA019EklemBaglantisiAT4'


class Iseda020Eklembaglantisimp(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    cikaricilar_iticiler = models.TextField(db_column='Cikaricilar-iticiler', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofascp = models.TextField(db_column='TOFASCP', blank=True, null=True)  # Field name made lowercase.
    tofascn = models.TextField(db_column='TOFASCN', blank=True, null=True)  # Field name made lowercase.
    depo_koducp = models.TextField(db_column='Depo_KoduCP', blank=True, null=True)  # Field name made lowercase.
    depo_koducn = models.TextField(db_column='Depo_KoduCN', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA020EklemBaglantisiMP'


class Iseda020ptal(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    cikaricilar_iticiler = models.TextField(db_column='Cikaricilar-iticiler', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    s_mm_field = models.TextField(db_column='S(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    dp_mm_field = models.TextField(db_column='Dp(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h1_mm_field = models.TextField(db_column='H1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h2_mm_field = models.TextField(db_column='H2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h3_mm_field = models.TextField(db_column='H3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    w_mm_field = models.TextField(db_column='W(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    w1_mm_field = models.TextField(db_column='W1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    w2_mm_field = models.TextField(db_column='W2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e1_mm_field = models.TextField(db_column='E1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e2_mm_field = models.TextField(db_column='e2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e3_mm_field = models.TextField(db_column='e3(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='f(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    filk_n_field = models.TextField(db_column='Filk(N)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fson_n_field = models.TextField(db_column='Fson(N)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fibro = models.TextField(db_column='FIBRO', blank=True, null=True)  # Field name made lowercase.
    specialsprings = models.TextField(db_column='SPECiALSPRiNGS', blank=True, null=True)  # Field name made lowercase.
    gsb = models.TextField(db_column='GSB', blank=True, null=True)  # Field name made lowercase.
    mbt = models.TextField(db_column='MBT', blank=True, null=True)  # Field name made lowercase.
    sankyo = models.TextField(db_column='SANKYO', blank=True, null=True)  # Field name made lowercase.
    omcr = models.TextField(db_column='OMCR', blank=True, null=True)  # Field name made lowercase.
    balluf = models.TextField(db_column='BALLUF', blank=True, null=True)  # Field name made lowercase.
    festo = models.TextField(db_column='FESTO', blank=True, null=True)  # Field name made lowercase.
    iso = models.TextField(db_column='ISO', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    moeller = models.TextField(db_column='MOELLER', blank=True, null=True)  # Field name made lowercase.
    perma = models.TextField(db_column='PERMA', blank=True, null=True)  # Field name made lowercase.
    ifm = models.TextField(db_column='IFM', blank=True, null=True)  # Field name made lowercase.
    dayton = models.TextField(db_column='DAYTON', blank=True, null=True)  # Field name made lowercase.
    newstark = models.TextField(db_column='NEWSTARK', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.
    firma = models.TextField(db_column='FIRMA', blank=True, null=True)  # Field name made lowercase.
    tercih = models.TextField(db_column='TERCIH', blank=True, null=True)  # Field name made lowercase.
    fotosankyo = models.TextField(db_column='FOTOSANKYO', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA020İPTAL'


class Iseda021Eklembaglantisici(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    cikaricilar_iticiler = models.TextField(db_column='Cikaricilar-iticiler', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    number_32 = models.TextField(db_column='32', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_40 = models.TextField(db_column='40', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_50 = models.TextField(db_column='50', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_63 = models.TextField(db_column='63', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_80 = models.TextField(db_column='80', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_100 = models.TextField(db_column='100', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_125 = models.TextField(db_column='125', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_160 = models.TextField(db_column='160', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_200 = models.TextField(db_column='200', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='CB(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.
    f30 = models.TextField(db_column='F30', blank=True, null=True)  # Field name made lowercase.
    f31 = models.TextField(db_column='F31', blank=True, null=True)  # Field name made lowercase.
    f32 = models.TextField(db_column='F32', blank=True, null=True)  # Field name made lowercase.
    f33 = models.TextField(db_column='F33', blank=True, null=True)  # Field name made lowercase.
    f34 = models.TextField(db_column='F34', blank=True, null=True)  # Field name made lowercase.
    f35 = models.TextField(db_column='F35', blank=True, null=True)  # Field name made lowercase.
    f36 = models.TextField(db_column='F36', blank=True, null=True)  # Field name made lowercase.
    f37 = models.TextField(db_column='F37', blank=True, null=True)  # Field name made lowercase.
    f38 = models.TextField(db_column='F38', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA021EklemBaglantisiCI'


class Iseda021ptal(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    cikaricilar_iticiler = models.TextField(db_column='Cikaricilar-iticiler', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    kurs_mm_field = models.TextField(db_column='Kurs(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    filk_n_field = models.TextField(db_column='Filk(N)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fson_n_field = models.TextField(db_column='Fson(N)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    i_mm_field = models.TextField(db_column='I(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    j_mm_field = models.TextField(db_column='J(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k_mm_field = models.TextField(db_column='K(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    j1_mm_field = models.TextField(db_column='J1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    n_mm_field = models.TextField(db_column='N(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    o_mm_field = models.TextField(db_column='O(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    p_mm_field = models.TextField(db_column='P(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r_mm_field = models.TextField(db_column='R(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    s_mm_field = models.TextField(db_column='S(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t_mm_field = models.TextField(db_column='T(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    u_mm_field = models.TextField(db_column='U(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    v_mm_field = models.TextField(db_column='V(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    y_mm_field = models.TextField(db_column='Y(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    z_mm_field = models.TextField(db_column='Z(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    w_mm_field = models.TextField(db_column='W(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x_mm_field = models.TextField(db_column='X(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a1_mm_field = models.TextField(db_column='a1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b1_mm_field = models.TextField(db_column='b1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c1_mm_field = models.TextField(db_column='c1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='d1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e1_mm_field = models.TextField(db_column='e1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f1_mm_field = models.TextField(db_column='f1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g1_mm_field = models.TextField(db_column='g1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='l1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k1_mm_field = models.TextField(db_column='k1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fibro = models.TextField(db_column='FIBRO', blank=True, null=True)  # Field name made lowercase.
    specialsprings = models.TextField(db_column='SPECiALSPRiNGS', blank=True, null=True)  # Field name made lowercase.
    gsb = models.TextField(db_column='GSB', blank=True, null=True)  # Field name made lowercase.
    mbt = models.TextField(db_column='MBT', blank=True, null=True)  # Field name made lowercase.
    sankyo = models.TextField(db_column='SANKYO', blank=True, null=True)  # Field name made lowercase.
    omcr = models.TextField(db_column='OMCR', blank=True, null=True)  # Field name made lowercase.
    balluf = models.TextField(db_column='BALLUF', blank=True, null=True)  # Field name made lowercase.
    festo = models.TextField(db_column='FESTO', blank=True, null=True)  # Field name made lowercase.
    iso = models.TextField(db_column='ISO', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    moeller = models.TextField(db_column='MOELLER', blank=True, null=True)  # Field name made lowercase.
    perma = models.TextField(db_column='PERMA', blank=True, null=True)  # Field name made lowercase.
    ifm = models.TextField(db_column='IFM', blank=True, null=True)  # Field name made lowercase.
    dayton = models.TextField(db_column='DAYTON', blank=True, null=True)  # Field name made lowercase.
    newstark = models.TextField(db_column='NEWSTARK', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.
    firma = models.TextField(db_column='FIRMA', blank=True, null=True)  # Field name made lowercase.
    tercih = models.TextField(db_column='TERCIH', blank=True, null=True)  # Field name made lowercase.
    fotosankyo = models.TextField(db_column='FOTOSANKYO', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA021İPTAL'


class Iseda022Flanscikaricitip(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    cikaricilar_iticiler = models.TextField(db_column='Cikaricilar-iticiler', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    kurs_mm_field = models.TextField(db_column='Kurs(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    molcu_mm_field = models.TextField(db_column='MOlcu(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    mbaglanti = models.TextField(db_column='MBaglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    sankyo = models.TextField(db_column='SANKYO', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    tofasalttan = models.TextField(db_column='TOFASALTTAN', blank=True, null=True)  # Field name made lowercase.
    tofasyandan = models.TextField(db_column='TOFASYANDAN', blank=True, null=True)  # Field name made lowercase.
    depo_kodualttan = models.TextField(db_column='Depo_KoduALTTAN', blank=True, null=True)  # Field name made lowercase.
    depo_koduyandan = models.TextField(db_column='Depo_KoduYANDAN', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA022FlansCikariciTip'


class Iseda023Kalipmerkezlemepimi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    merkezleme_elemanları = models.TextField(db_column='Merkezleme Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    molcu_mm_field = models.TextField(db_column='MOlcu(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mbaglanti = models.TextField(db_column='Mbaglanti', blank=True, null=True)  # Field name made lowercase.
    m1 = models.TextField(db_column='M1', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA023KalipMerkezlemePimi'


class Iseda024Derincekmesensordayama(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    merkezleme_elemanları = models.TextField(db_column='Merkezleme Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='CB(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.
    f23 = models.TextField(db_column='F23', blank=True, null=True)  # Field name made lowercase.
    f24 = models.TextField(db_column='F24', blank=True, null=True)  # Field name made lowercase.
    f25 = models.TextField(db_column='F25', blank=True, null=True)  # Field name made lowercase.
    f26 = models.TextField(db_column='F26', blank=True, null=True)  # Field name made lowercase.
    f27 = models.TextField(db_column='F27', blank=True, null=True)  # Field name made lowercase.
    f28 = models.TextField(db_column='F28', blank=True, null=True)  # Field name made lowercase.
    f29 = models.TextField(db_column='F29', blank=True, null=True)  # Field name made lowercase.
    f30 = models.TextField(db_column='F30', blank=True, null=True)  # Field name made lowercase.
    f31 = models.TextField(db_column='F31', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA024DerinCekmeSensorDayama'


class Iseda024Iptal(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    cikaricilar_iticiler = models.TextField(db_column='Cikaricilar-iticiler', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    ul_mm_field = models.TextField(db_column='UL(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    nh_mm_field = models.TextField(db_column='NH(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    th_mm_field = models.TextField(db_column='TH(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cr_mm_field = models.TextField(db_column='CR(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hb_mm_field = models.TextField(db_column='HB(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hc_mm_field = models.TextField(db_column='HC(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fn_mm_field = models.TextField(db_column='FN(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fk_mm_field = models.TextField(db_column='FK(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='CB(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA024iptal'


class Iseda025Dayamaskesim(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    merkezleme_elemanları = models.TextField(db_column='Merkezleme Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    h_mm_field = models.TextField(db_column='h(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mbaglanti = models.TextField(db_column='Mbaglanti', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA025DayamaSKesim'


class Iseda026Htipipnokaldiricitip1(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    cikaricilar_iticiler = models.TextField(db_column='Cikaricilar-iticiler', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    ozeldurumlar = models.TextField(db_column='OzelDurumlar', blank=True, null=True)  # Field name made lowercase.
    skurs_mm_field = models.TextField(db_column='SKurs(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    m1 = models.TextField(db_column='M1', blank=True, null=True)  # Field name made lowercase.
    m2 = models.TextField(db_column='M2', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c1_mm_field = models.TextField(db_column='C1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c2_mm_field = models.TextField(db_column='C2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    not_field = models.TextField(db_column='NOT', blank=True, null=True)  # Field name made lowercase. Field renamed because it was a Python reserved word.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='L2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l3_mm_field = models.TextField(db_column='L3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l4_mm_field = models.TextField(db_column='L4(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l5_mm_field = models.TextField(db_column='L5(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l6_mm_field = models.TextField(db_column='L6(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    w_mm_field = models.TextField(db_column='W(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    w1_mm_field = models.TextField(db_column='W1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    w2_mm_field = models.TextField(db_column='W2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    w3_mm_field = models.TextField(db_column='W3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t1_mm_field = models.TextField(db_column='T1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l7_mm_field = models.TextField(db_column='L7(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d3_mm_field = models.TextField(db_column='D3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l8_mm_field = models.TextField(db_column='L8(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t2_mm_field = models.TextField(db_column='T2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d4_mm_field = models.TextField(db_column='D4(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l9_mm_field = models.TextField(db_column='L9(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    d5_mm_field = models.TextField(db_column='D5(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    deneme = models.TextField(db_column='Deneme', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    sankyo = models.TextField(db_column='SANKYO', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA026HTipiPnoKaldiriciTip1'


class Iseda028Pozitifreturntipa(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    kam_elemanları = models.TextField(db_column='Kam Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dp_mm_field = models.TextField(db_column='Dp(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dc1_mm_field = models.TextField(db_column='Dc1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dc2_mm_field = models.TextField(db_column='Dc2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dh_mm_field = models.TextField(db_column='Dh(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kod2 = models.TextField(db_column='Kod2', blank=True, null=True)  # Field name made lowercase.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA028PozitifReturnTipA'


class Iseda029Pozitifreturntipb(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    kam_elemanları = models.TextField(db_column='Kam Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f1_mm_field = models.TextField(db_column='F1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dc1_mm_field = models.TextField(db_column='Dc1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dc2_mm_field = models.TextField(db_column='Dc2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dh_mm_field = models.TextField(db_column='Dh(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA029PozitifReturnTipB'


class Iseda030Pozitifreturnkarsilik(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    kam_elemanları = models.TextField(db_column='Kam Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    w_mm_field = models.TextField(db_column='w(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='l(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='a(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t_mm_field = models.TextField(db_column='t(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='l1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='l2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='d(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='d1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='h(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA030PozitifReturnKarsilik'


class Iseda031Pistonbaglantisiad(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    cikaricilar_iticiler = models.TextField(db_column='Cikaricilar-iticiler', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    j_mm_field = models.TextField(db_column='J(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k_mm_field = models.TextField(db_column='K(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    p_mm_field = models.TextField(db_column='P(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r_mm_field = models.TextField(db_column='R(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    s_mm_field = models.TextField(db_column='S(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m1 = models.TextField(db_column='M1', blank=True, null=True)  # Field name made lowercase.
    md1_mm_field = models.TextField(db_column='Md1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml1_mm_field = models.TextField(db_column='Ml1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='CB(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA031PistonBaglantisiAD'


class Iseda031Iptal(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    kam_elemanları = models.TextField(db_column='Kam Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    w_mm_field = models.TextField(db_column='w(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='l(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='a(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t_mm_field = models.TextField(db_column='t(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='l1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='l2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='d(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='d1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='h(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    firma = models.TextField(db_column='FIRMA', blank=True, null=True)  # Field name made lowercase.
    tercih = models.TextField(db_column='TERCIH', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA031iptal'


class Iseda032Kalipmerkezlemesi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    merkezleme_elemanları = models.TextField(db_column='Merkezleme Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dc_mm_field = models.TextField(db_column='Dc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dc1_mm_field = models.TextField(db_column='Dc1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dcl_mm_field = models.TextField(db_column='Dcl(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA032KalipMerkezlemesi'


class Iseda033Tijmilikarsiligi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    baskı_elemanları = models.TextField(db_column='Baskı Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d3_mm_field = models.TextField(db_column='D3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='L2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dc_mm_field = models.TextField(db_column='Dc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dc1_mm_field = models.TextField(db_column='Dc1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dcl_mm_field = models.TextField(db_column='Dcl(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    tofasyarim = models.TextField(db_column='TOFASYARIM', blank=True, null=True)  # Field name made lowercase.
    tofastam = models.TextField(db_column='TOFASTAM', blank=True, null=True)  # Field name made lowercase.
    depo_koduyarim = models.TextField(db_column='Depo_KoduYARIM', blank=True, null=True)  # Field name made lowercase.
    depo_kodutam = models.TextField(db_column='Depo_KoduTAM', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA033TijMiliKarsiligi'


class Iseda034Otomatikklempplakasi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA034OtomatikKlempPlakasi'


class Iseda035Otomatikklempcelikleri(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA035OtomatikKlempCelikleri'


class Iseda036Izzimbasi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    markalama_elemanları = models.TextField(db_column='Markalama Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    mi_mm_field = models.TextField(db_column='Mi(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hi_mm_field = models.TextField(db_column='Hi(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k_mm_field = models.TextField(db_column='K(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    n_mm_field = models.TextField(db_column='N(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t_mm_field = models.TextField(db_column='T(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r = models.TextField(db_column='R', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA036izZimbasi'


class Iseda037Markalama(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    markalama_elemanları = models.TextField(db_column='Markalama Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m1 = models.TextField(db_column='M1', blank=True, null=True)  # Field name made lowercase.
    m2_mm_field = models.TextField(db_column='M2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mi_mm_field = models.TextField(db_column='MI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA037Markalama'


class Iseda038Kama(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h1_mm_field = models.TextField(db_column='H1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dl_mm_field = models.TextField(db_column='Dl(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA038Kama'


class Iseda039Tasimabraketi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    hc_mm_field = models.TextField(db_column='HC(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x1_mm_field = models.TextField(db_column='x1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    y1_mm_field = models.TextField(db_column='y1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x2_mm_field = models.TextField(db_column='x2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    y2_mm_field = models.TextField(db_column='y2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x3_mm_field = models.TextField(db_column='x3(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    y3_mm_field = models.TextField(db_column='y3(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x4_mm_field = models.TextField(db_column='x4(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    y4_mm_field = models.TextField(db_column='y4(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ax1_mm_field = models.TextField(db_column='ax1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ay1_mm_field = models.TextField(db_column='ay1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ax2_mm_field = models.TextField(db_column='ax2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ay2_mm_field = models.TextField(db_column='ay2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA039TasimaBraketi'


class Iseda040Mapa(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    bicim = models.TextField(db_column='Bicim', blank=True, null=True)  # Field name made lowercase.
    d1_mm_field = models.TextField(db_column='d1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='d2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d3 = models.TextField(blank=True, null=True)
    d4_mm_field = models.TextField(db_column='d4(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='h(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l3_mm_field = models.TextField(db_column='l3(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ddb_mm_field = models.TextField(db_column='Ddb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d5_mm_field = models.TextField(db_column='d5(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    number_1adet_mapanin_tasima_kapasitesi = models.TextField(db_column='1Adet_Mapanin_Tasima_Kapasitesi', blank=True, null=True)  # Field name made lowercase. Field renamed because it wasn't a valid Python identifier.
    number_2adet_mapanin_tasima_kapasitesi = models.TextField(db_column='2Adet_Mapanin_Tasima_Kapasitesi', blank=True, null=True)  # Field name made lowercase. Field renamed because it wasn't a valid Python identifier.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA040Mapa'


class Iseda041Merkezlemecivata(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    l = models.TextField(db_column='L', blank=True, null=True)  # Field name made lowercase.
    ds_mm_field = models.TextField(db_column='ds(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    i1_mm_field = models.TextField(db_column='I1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dk_mm_field = models.TextField(db_column='dk(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k_mm_field = models.TextField(db_column='k(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dg1_mm_field = models.TextField(db_column='dg1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g1_mm_field = models.TextField(db_column='g1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g2_mm_field = models.TextField(db_column='g2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r1_mm_field = models.TextField(db_column='r1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r2_mm_field = models.TextField(db_column='r2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    i2_mm_field = models.TextField(db_column='I2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t_mm_field = models.TextField(db_column='t(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    sw_mm_field = models.TextField(db_column='sw(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mx_mm_field = models.TextField(db_column='MX(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA041MerkezlemeCivata'


class Iseda042Stoplamacivata(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    l = models.TextField(db_column='L', blank=True, null=True)  # Field name made lowercase.
    n_mm_field = models.TextField(db_column='N(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='e(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='l2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='a(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='c(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='d(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='f(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='g(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    sw_mm_field = models.TextField(db_column='sw(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    civata = models.TextField(db_column='Civata', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mi_mm_field = models.TextField(db_column='MI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA042StoplamaCivata'


class Iseda043Bilyebaslimafsal(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    number_1 = models.TextField(db_column='1', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_2 = models.TextField(db_column='2', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_3 = models.TextField(db_column='3', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_4 = models.TextField(db_column='4', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_5 = models.TextField(db_column='5', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_6 = models.TextField(db_column='6', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA043BilyeBasliMafsal'


class Iseda044Pnosilsomuntutucu(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    i_mm_field = models.TextField(db_column='I(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    j_mm_field = models.TextField(db_column='J(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m1_mm_field = models.TextField(db_column='M1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    n_mm_field = models.TextField(db_column='N(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA044PnoSilSomunTutucu'


class Iseda045Pnosilkavsomunu(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    cikaricilar_iticiler = models.TextField(db_column='Cikaricilar-iticiler', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    td_mm_field = models.TextField(db_column='TD(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hd_mm_field = models.TextField(db_column='HD(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    pd_mm_field = models.TextField(db_column='PD(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA045PnoSilKavSomunu'


class Iseda046Vulkolonstoper(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    stoplama_elemanları = models.TextField(db_column='Stoplama Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    d_mm_field = models.TextField(db_column='d(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='l(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='d1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='l1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r_mm_field = models.TextField(db_column='r(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fmax_n_field = models.TextField(db_column='Fmax(N)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    li_mm_field = models.TextField(db_column='li(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA046VulkolonStoper'


class Iseda047Duzkizak(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    merkezleme_elemanları = models.TextField(db_column='Merkezleme Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    kalinlik = models.TextField(db_column='Kalinlik', blank=True, null=True)  # Field name made lowercase.
    en_mm_field = models.TextField(db_column='En(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    boy_mm_field = models.TextField(db_column='Boy(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    metrik = models.TextField(db_column='METRIK', blank=True, null=True)  # Field name made lowercase.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    aci_deg_field = models.TextField(db_column='ACI(deg)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    acih_mm_field = models.TextField(db_column='ACIH(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kizak_kalinligi_mm_field = models.TextField(db_column='KIZAK_KALINLIGI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x1_mm_field = models.TextField(db_column='X1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    y1_mm_field = models.TextField(db_column='Y1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x2_mm_field = models.TextField(db_column='X2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    y2_mm_field = models.TextField(db_column='Y2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x3_mm_field = models.TextField(db_column='X3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    y3_mm_field = models.TextField(db_column='Y3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    tofasbronz = models.TextField(db_column='TOFASBRONZ', blank=True, null=True)  # Field name made lowercase.
    tofascelik = models.TextField(db_column='TOFASCELIK', blank=True, null=True)  # Field name made lowercase.
    depo_kodubronz = models.TextField(db_column='Depo_KoduBRONZ', blank=True, null=True)  # Field name made lowercase.
    depo_koducelik = models.TextField(db_column='Depo_KoduCELIK', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA047DuzKizak'


class Iseda048Ldayama(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA048LDayama'


class Iseda049Derincekmesensor(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA049DerincekmeSensor'


class Iseda050Cevrevulkolon(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    baskı_elemanları = models.TextField(db_column='Baskı Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    s_mm_field = models.TextField(db_column='S(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti_tipi = models.TextField(db_column='BAGLANTI_TIPI', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA050CevreVulkolon'


class Iseda051Vulkolonpimi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    baskı_elemanları = models.TextField(db_column='Baskı Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='L2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d3_mm_field = models.TextField(db_column='D3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k_mm_field = models.TextField(db_column='K(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    s_mm_field = models.TextField(db_column='S(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m_o_mm_field = models.TextField(db_column='M_O(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA051VulkolonPimi'


class Iseda052Kaliptasimapernosu(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k_mm_field = models.TextField(db_column='K(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    o_mm_field = models.TextField(db_column='O(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA052KalipTasimaPernosu'


class Iseda053Kaliptasimapernoborusu(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    pc_mm_field = models.TextField(db_column='PC(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t_mm_field = models.TextField(db_column='T(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a1_mm_field = models.TextField(db_column='A1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a2_mm_field = models.TextField(db_column='A2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a2_aktifligi = models.TextField(db_column='A2_aktifligi', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA053KalipTasimaPernoBorusu'


class Iseda054Askiemniyetpimi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='L2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l3_mm_field = models.TextField(db_column='L3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d3_mm_field = models.TextField(db_column='D3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a1_mm_field = models.TextField(db_column='A1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k_mm_field = models.TextField(db_column='K(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m_mm_field = models.TextField(db_column='M(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    n_mm_field = models.TextField(db_column='N(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r_mm_field = models.TextField(db_column='R(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    s_mm_field = models.TextField(db_column='S(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    u_mm_field = models.TextField(db_column='U(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    v_mm_field = models.TextField(db_column='V(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    z_mm_field = models.TextField(db_column='Z(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    pmin_mm_field = models.TextField(db_column='Pmin(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    q_mm_field = models.TextField(db_column='Q(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    wmin_mm_field = models.TextField(db_column='Wmin(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x_mm_field = models.TextField(db_column='X(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kmin_mm_field = models.TextField(db_column='Kmin(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    boy_mm_field = models.TextField(db_column='BOY(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k1_mm_field = models.TextField(db_column='K1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k2_mm_field = models.TextField(db_column='K2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k3_mm_field = models.TextField(db_column='K3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ap_mm_field = models.TextField(db_column='Ap(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k4_mm_field = models.TextField(db_column='K4(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    tl_mm_field = models.TextField(db_column='TL(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ta_mm_field = models.TextField(db_column='TA(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA054AskiEmniyetPimi'


class Iseda055Asemvulkolon(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA055AsEmVulkolon'


class Iseda056Vidaligommemapa(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    p_mm_field = models.TextField(db_column='P(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r_mm_field = models.TextField(db_column='R(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c1_mm_field = models.TextField(db_column='C1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c2_mm_field = models.TextField(db_column='C2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dk_mm_field = models.TextField(db_column='Dk(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA056VidaliGommeMapa'


class Iseda058(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    delme_elemanlari = models.TextField(db_column='Delme Elemanlari', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    d = models.TextField(db_column='D', blank=True, null=True)  # Field name made lowercase.
    e = models.TextField(db_column='E', blank=True, null=True)  # Field name made lowercase.
    f = models.TextField(db_column='F', blank=True, null=True)  # Field name made lowercase.
    g = models.TextField(db_column='G', blank=True, null=True)  # Field name made lowercase.
    ds_mm_field = models.TextField(db_column='Ds(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ca_mm_field = models.TextField(db_column='Ca(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    da_mm_field = models.TextField(db_column='Da(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ea_mm_field = models.TextField(db_column='Ea(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fa_mm_field = models.TextField(db_column='Fa(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ga_mm_field = models.TextField(db_column='Ga(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ha_mm_field = models.TextField(db_column='Ha(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h2a_mm_field = models.TextField(db_column='H2a(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ka_mm_field = models.TextField(db_column='Ka(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ma_mm_field = models.TextField(db_column='Ma(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ssa_mm_field = models.TextField(db_column='Ssa(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    umsa_mm_field = models.TextField(db_column='UMSa(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ctba_mm_field = models.TextField(db_column='Ctba(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    tba = models.TextField(db_column='TBa', blank=True, null=True)  # Field name made lowercase.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    db_mm_field = models.TextField(db_column='Db(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    eb_mm_field = models.TextField(db_column='Eb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fb_mm_field = models.TextField(db_column='Fb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    gb_mm_field = models.TextField(db_column='Gb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hb_mm_field = models.TextField(db_column='Hb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h2b_mm_field = models.TextField(db_column='H2b(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kb_mm_field = models.TextField(db_column='Kb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mb_mm_field = models.TextField(db_column='Mb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ssb_mm_field = models.TextField(db_column='Ssb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    umsb_mm_field = models.TextField(db_column='UMSb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ctbb_mm_field = models.TextField(db_column='Ctbb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    tbb = models.TextField(db_column='TBb', blank=True, null=True)  # Field name made lowercase.
    cc_mm_field = models.TextField(db_column='Cc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dc_mm_field = models.TextField(db_column='Dc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ec_mm_field = models.TextField(db_column='Ec(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fc_mm_field = models.TextField(db_column='Fc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    gc_mm_field = models.TextField(db_column='Gc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hc_mm_field = models.TextField(db_column='Hc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h2c_mm_field = models.TextField(db_column='H2c(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kc_mm_field = models.TextField(db_column='Kc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mc_mm_field = models.TextField(db_column='Mc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    nc_mm_field = models.TextField(db_column='Nc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ssc_mm_field = models.TextField(db_column='Ssc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    umsc_mm_field = models.TextField(db_column='UMSc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ctbc_mm_field = models.TextField(db_column='Ctbc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cct = models.TextField(db_column='CCT', blank=True, null=True)  # Field name made lowercase.
    tbc = models.TextField(db_column='TBc', blank=True, null=True)  # Field name made lowercase.
    moellerkapali_agir_yuk = models.TextField(db_column='MOELLERKAPALI_AGIR_YUK', blank=True, null=True)  # Field name made lowercase.
    moelleryuvarlak_agir_yuk = models.TextField(db_column='MOELLERYUVARLAK_AGIR_YUK', blank=True, null=True)  # Field name made lowercase.
    moellerform_agir_yuk = models.TextField(db_column='MOELLERFORM_AGIR_YUK', blank=True, null=True)  # Field name made lowercase.
    moellerkapali_hafif_yuk = models.TextField(db_column='MOELLERKAPALI_HAFiF_YUK', blank=True, null=True)  # Field name made lowercase.
    moelleryuvarlak_hafif_yuk = models.TextField(db_column='MOELLERYUVARLAK_HAFiF_YUK', blank=True, null=True)  # Field name made lowercase.
    moellerform_hafif_yuk = models.TextField(db_column='MOELLERFORM_HAFiF_YUK', blank=True, null=True)  # Field name made lowercase.
    moellerkapali_agir_yuk_ekonomik = models.TextField(db_column='MOELLERKAPALI_AGIR_YUK_EKONOMiK', blank=True, null=True)  # Field name made lowercase.
    moelleryuvarlak_agir_yuk_ekonomik = models.TextField(db_column='MOELLERYUVARLAK_AGIR_YUK_EKONOMiK', blank=True, null=True)  # Field name made lowercase.
    moellerform_agir_yuk_ekonomik = models.TextField(db_column='MOELLERFORM_AGIR_YUK_EKONOMiK', blank=True, null=True)  # Field name made lowercase.
    gsb = models.TextField(db_column='GSB', blank=True, null=True)  # Field name made lowercase.
    mbt = models.TextField(db_column='MBT', blank=True, null=True)  # Field name made lowercase.
    sankyo = models.TextField(db_column='SANKYO', blank=True, null=True)  # Field name made lowercase.
    omcr = models.TextField(db_column='OMCR', blank=True, null=True)  # Field name made lowercase.
    balluf = models.TextField(db_column='BALLUF', blank=True, null=True)  # Field name made lowercase.
    festo = models.TextField(db_column='FESTO', blank=True, null=True)  # Field name made lowercase.
    iso = models.TextField(db_column='ISO', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    fibro = models.TextField(db_column='FIBRO', blank=True, null=True)  # Field name made lowercase.
    moeller = models.TextField(db_column='MOELLER', blank=True, null=True)  # Field name made lowercase.
    specialsprings = models.TextField(db_column='SPECiALSPRiNGS', blank=True, null=True)  # Field name made lowercase.
    perma = models.TextField(db_column='PERMA', blank=True, null=True)  # Field name made lowercase.
    ifm = models.TextField(db_column='IFM', blank=True, null=True)  # Field name made lowercase.
    dayton = models.TextField(db_column='DAYTON', blank=True, null=True)  # Field name made lowercase.
    newstark = models.TextField(db_column='NEWSTARK', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.
    firma = models.TextField(db_column='FIRMA', blank=True, null=True)  # Field name made lowercase.
    tercih = models.TextField(db_column='TERCIH', blank=True, null=True)  # Field name made lowercase.
    fotomoellerkapali_agir_yuk = models.TextField(db_column='FOTOMOELLERKAPALI_AGIR_YUK', blank=True, null=True)  # Field name made lowercase.
    fotomoelleryuvarlak_agir_yuk = models.TextField(db_column='FOTOMOELLERYUVARLAK_AGIR_YUK', blank=True, null=True)  # Field name made lowercase.
    fotomoellerform_agir_yuk = models.TextField(db_column='FOTOMOELLERFORM_AGIR_YUK', blank=True, null=True)  # Field name made lowercase.
    fotomoellerkapali_hafif_yuk = models.TextField(db_column='FOTOMOELLERKAPALI_HAFiF_YUK', blank=True, null=True)  # Field name made lowercase.
    fotomoelleryuvarlak_hafif_yuk = models.TextField(db_column='FOTOMOELLERYUVARLAK_HAFiF_YUK', blank=True, null=True)  # Field name made lowercase.
    fotomoellerform_hafif_yuk = models.TextField(db_column='FOTOMOELLERFORM_HAFiF_YUK', blank=True, null=True)  # Field name made lowercase.
    fotomoellerkapali_agir_yuk_ekonomik = models.TextField(db_column='FOTOMOELLERKAPALI_AGIR_YUK_EKONOMiK', blank=True, null=True)  # Field name made lowercase.
    fotomoelleryuvarlak_agir_yuk_ekonomik = models.TextField(db_column='FOTOMOELLERYUVARLAK_AGIR_YUK_EKONOMiK', blank=True, null=True)  # Field name made lowercase.
    fotomoellerform_agir_yuk_ekonomik = models.TextField(db_column='FOTOMOELLERFORM_AGIR_YUK_EKONOMiK', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA058'


class Iseda058Cylinderunionnut(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    pnomatik_grubu_elemanları = models.TextField(db_column='Pnomatik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    m16 = models.TextField(db_column='M16', blank=True, null=True)  # Field name made lowercase.
    m20 = models.TextField(db_column='M20', blank=True, null=True)  # Field name made lowercase.
    m27 = models.TextField(db_column='M27', blank=True, null=True)  # Field name made lowercase.
    d26 = models.TextField(db_column='D26', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA058CylinderUnionNut'


class Iseda059(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    delme_elemanlari = models.TextField(db_column='Delme Elemanlari', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    d = models.TextField(db_column='D', blank=True, null=True)  # Field name made lowercase.
    e = models.TextField(db_column='E', blank=True, null=True)  # Field name made lowercase.
    f = models.TextField(db_column='F', blank=True, null=True)  # Field name made lowercase.
    g = models.TextField(db_column='G', blank=True, null=True)  # Field name made lowercase.
    ds_mm_field = models.TextField(db_column='Ds(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ca_mm_field = models.TextField(db_column='Ca(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    da_mm_field = models.TextField(db_column='Da(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ea_mm_field = models.TextField(db_column='Ea(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fa_mm_field = models.TextField(db_column='Fa(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ga_mm_field = models.TextField(db_column='Ga(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ha_mm_field = models.TextField(db_column='Ha(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h2a_mm_field = models.TextField(db_column='H2a(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ka_mm_field = models.TextField(db_column='Ka(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ma_mm_field = models.TextField(db_column='Ma(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ssa_mm_field = models.TextField(db_column='Ssa(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    umsa_mm_field = models.TextField(db_column='UMSa(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ctba_mm_field = models.TextField(db_column='Ctba(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    tba = models.TextField(db_column='TBa', blank=True, null=True)  # Field name made lowercase.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    db_mm_field = models.TextField(db_column='Db(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    eb_mm_field = models.TextField(db_column='Eb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fb_mm_field = models.TextField(db_column='Fb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    gb_mm_field = models.TextField(db_column='Gb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hb_mm_field = models.TextField(db_column='Hb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h2b_mm_field = models.TextField(db_column='H2b(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kb_mm_field = models.TextField(db_column='Kb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mb_mm_field = models.TextField(db_column='Mb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ssb_mm_field = models.TextField(db_column='Ssb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    umsb_mm_field = models.TextField(db_column='UMSb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ctbb_mm_field = models.TextField(db_column='Ctbb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    tbb = models.TextField(db_column='TBb', blank=True, null=True)  # Field name made lowercase.
    cc_mm_field = models.TextField(db_column='Cc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dc_mm_field = models.TextField(db_column='Dc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ec_mm_field = models.TextField(db_column='Ec(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    fc_mm_field = models.TextField(db_column='Fc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    gc_mm_field = models.TextField(db_column='Gc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hc_mm_field = models.TextField(db_column='Hc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h2c_mm_field = models.TextField(db_column='H2c(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kc_mm_field = models.TextField(db_column='Kc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mc_mm_field = models.TextField(db_column='Mc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    nc_mm_field = models.TextField(db_column='Nc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ssc_mm_field = models.TextField(db_column='Ssc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    umsc_mm_field = models.TextField(db_column='UMSc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ctbc_mm_field = models.TextField(db_column='Ctbc(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cct = models.TextField(db_column='CCT', blank=True, null=True)  # Field name made lowercase.
    tbc = models.TextField(db_column='TBc', blank=True, null=True)  # Field name made lowercase.
    moellerkapali_agir_yuk = models.TextField(db_column='MOELLERKAPALI_AGIR_YUK', blank=True, null=True)  # Field name made lowercase.
    moelleryuvarlak_agir_yuk = models.TextField(db_column='MOELLERYUVARLAK_AGIR_YUK', blank=True, null=True)  # Field name made lowercase.
    moellerform_agir_yuk = models.TextField(db_column='MOELLERFORM_AGIR_YUK', blank=True, null=True)  # Field name made lowercase.
    moellerkapali_hafif_yuk = models.TextField(db_column='MOELLERKAPALI_HAFiF_YUK', blank=True, null=True)  # Field name made lowercase.
    moelleryuvarlak_hafif_yuk = models.TextField(db_column='MOELLERYUVARLAK_HAFiF_YUK', blank=True, null=True)  # Field name made lowercase.
    moellerform_hafif_yuk = models.TextField(db_column='MOELLERFORM_HAFiF_YUK', blank=True, null=True)  # Field name made lowercase.
    moellerkapali_agir_yuk_ekonomik = models.TextField(db_column='MOELLERKAPALI_AGIR_YUK_EKONOMiK', blank=True, null=True)  # Field name made lowercase.
    moelleryuvarlak_agir_yuk_ekonomik = models.TextField(db_column='MOELLERYUVARLAK_AGIR_YUK_EKONOMiK', blank=True, null=True)  # Field name made lowercase.
    moellerform_agir_yuk_ekonomik = models.TextField(db_column='MOELLERFORM_AGIR_YUK_EKONOMiK', blank=True, null=True)  # Field name made lowercase.
    gsb = models.TextField(db_column='GSB', blank=True, null=True)  # Field name made lowercase.
    mbt = models.TextField(db_column='MBT', blank=True, null=True)  # Field name made lowercase.
    sankyo = models.TextField(db_column='SANKYO', blank=True, null=True)  # Field name made lowercase.
    omcr = models.TextField(db_column='OMCR', blank=True, null=True)  # Field name made lowercase.
    balluf = models.TextField(db_column='BALLUF', blank=True, null=True)  # Field name made lowercase.
    festo = models.TextField(db_column='FESTO', blank=True, null=True)  # Field name made lowercase.
    iso = models.TextField(db_column='ISO', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    fibro = models.TextField(db_column='FIBRO', blank=True, null=True)  # Field name made lowercase.
    moeller = models.TextField(db_column='MOELLER', blank=True, null=True)  # Field name made lowercase.
    specialsprings = models.TextField(db_column='SPECiALSPRiNGS', blank=True, null=True)  # Field name made lowercase.
    perma = models.TextField(db_column='PERMA', blank=True, null=True)  # Field name made lowercase.
    ifm = models.TextField(db_column='IFM', blank=True, null=True)  # Field name made lowercase.
    dayton = models.TextField(db_column='DAYTON', blank=True, null=True)  # Field name made lowercase.
    newstark = models.TextField(db_column='NEWSTARK', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.
    firma = models.TextField(db_column='FIRMA', blank=True, null=True)  # Field name made lowercase.
    tercih = models.TextField(db_column='TERCIH', blank=True, null=True)  # Field name made lowercase.
    fotomoellerkapali_agir_yuk = models.TextField(db_column='FOTOMOELLERKAPALI_AGIR_YUK', blank=True, null=True)  # Field name made lowercase.
    fotomoelleryuvarlak_agir_yuk = models.TextField(db_column='FOTOMOELLERYUVARLAK_AGIR_YUK', blank=True, null=True)  # Field name made lowercase.
    fotomoellerform_agir_yuk = models.TextField(db_column='FOTOMOELLERFORM_AGIR_YUK', blank=True, null=True)  # Field name made lowercase.
    fotomoellerkapali_hafif_yuk = models.TextField(db_column='FOTOMOELLERKAPALI_HAFiF_YUK', blank=True, null=True)  # Field name made lowercase.
    fotomoelleryuvarlak_hafif_yuk = models.TextField(db_column='FOTOMOELLERYUVARLAK_HAFiF_YUK', blank=True, null=True)  # Field name made lowercase.
    fotomoellerform_hafif_yuk = models.TextField(db_column='FOTOMOELLERFORM_HAFiF_YUK', blank=True, null=True)  # Field name made lowercase.
    fotomoellerkapali_agir_yuk_ekonomik = models.TextField(db_column='FOTOMOELLERKAPALI_AGIR_YUK_EKONOMiK', blank=True, null=True)  # Field name made lowercase.
    fotomoelleryuvarlak_agir_yuk_ekonomik = models.TextField(db_column='FOTOMOELLERYUVARLAK_AGIR_YUK_EKONOMiK', blank=True, null=True)  # Field name made lowercase.
    fotomoellerform_agir_yuk_ekonomik = models.TextField(db_column='FOTOMOELLERFORM_AGIR_YUK_EKONOMiK', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA059'


class Iseda059Emniyetalani(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    tasarım_grubu_elemanları = models.TextField(db_column='Tasarım Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA059EmniyetAlani'


class Iseda060Piastrasicurezza(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA060PiastraSicurezza'


class Iseda061Manyetiksensor(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='L2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA061ManyetikSensor'


class Iseda062Icdenstoper(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    stoplama_elemanları = models.TextField(db_column='Stoplama Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d3_mm_field = models.TextField(db_column='D3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h1_mm_field = models.TextField(db_column='H1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h2_mm_field = models.TextField(db_column='H2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA062IcDenStoper'


class Iseda065Istifstoperi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    stoplama_elemanları = models.TextField(db_column='Stoplama Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA065istifstoperi'


class Iseda066Kamduzkizak(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    w_mm_field = models.TextField(db_column='W(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    s_mm_field = models.TextField(db_column='S(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='L2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t_mm_field = models.TextField(db_column='T(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f = models.TextField(db_column='F', blank=True, null=True)  # Field name made lowercase.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA066KamDuzkizak'


class Iseda067Disivkizak(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    kam_elemanları = models.TextField(db_column='Kam Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    w_mm_field = models.TextField(db_column='W(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='L2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h2_mm_field = models.TextField(db_column='H2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r_mm_field = models.TextField(db_column='r(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t_mm_field = models.TextField(db_column='T(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    teksen_mm_field = models.TextField(db_column='Teksen(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mi_mm_field = models.TextField(db_column='MI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cvt = models.TextField(db_column='CVT', blank=True, null=True)  # Field name made lowercase.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA067DisiVKizak'


class Iseda068Erkekvkizak(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    kam_elemanları = models.TextField(db_column='Kam Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    w_mm_field = models.TextField(db_column='W(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='L2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d1_mm_field = models.TextField(db_column='D1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d2_mm_field = models.TextField(db_column='D2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d3_mm_field = models.TextField(db_column='D3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t_mm_field = models.TextField(db_column='T(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mi_mm_field = models.TextField(db_column='MI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cvt = models.TextField(db_column='CVT', blank=True, null=True)  # Field name made lowercase.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA068ErkekVKizak'


class Iseda069Disliayarplakasi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    stoplama_elemanları = models.TextField(db_column='Stoplama Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    w_mm_field = models.TextField(db_column='W(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='L2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l3_mm_field = models.TextField(db_column='L3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l4_mm_field = models.TextField(db_column='L4(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l5_mm_field = models.TextField(db_column='L5(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l6_mm_field = models.TextField(db_column='L6(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mi_mm_field = models.TextField(db_column='MI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cvt = models.TextField(db_column='CVT', blank=True, null=True)  # Field name made lowercase.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA069DisliAyarPlakasi'


class Iseda070Htipikamplaka(models.Model):
    parca_adı = models.TextField(db_column='Parca Adı', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    kam_elemanları = models.TextField(db_column='Kam Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    alternatif = models.TextField(db_column='Alternatif', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    w_mm_field = models.TextField(db_column='W(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t_mm_field = models.TextField(db_column='T(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b = models.TextField(db_column='B', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mi_mm_field = models.TextField(db_column='MI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    tofascelik = models.TextField(db_column='TOFASCELIK', blank=True, null=True)  # Field name made lowercase.
    tofasbronz = models.TextField(db_column='TOFASBRONZ', blank=True, null=True)  # Field name made lowercase.
    depo_koducelik = models.TextField(db_column='Depo_KoduCELIK', blank=True, null=True)  # Field name made lowercase.
    depo_kodubronz = models.TextField(db_column='Depo_KoduBRONZ', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA070HTipiKamPlaka'


class Iseda073Azotsaati(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    baskı_elemanları = models.TextField(db_column='Baskı Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mi_mm_field = models.TextField(db_column='MI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA073AzotSaati'


class Iseda074Elektrikkutusu(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    elektrik_grubu_elemanları = models.TextField(db_column='Elektrik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA074ElektrikKutusu'


class Iseda075Elektriksoketi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    elektrik_grubu_elemanları = models.TextField(db_column='Elektrik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mi_mm_field = models.TextField(db_column='MI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA075ElektrikSoketi'


class Iseda076Havatanki(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    pnomatik_grubu_elemanları = models.TextField(db_column='Pnomatik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    delikadet = models.TextField(db_column='Delikadet', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mi_mm_field = models.TextField(db_column='MI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA076HavaTanki'


class Iseda078Basinclihavahortumu(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    pnomatik_grubu_elemanları = models.TextField(db_column='Pnomatik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    festo = models.TextField(db_column='FESTO', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA078BasincliHavaHortumu'


class Iseda079Cabukbaglantirekorut(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    pnomatik_grubu_elemanları = models.TextField(db_column='Pnomatik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    festo = models.TextField(db_column='FESTO', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA079CabukBaglantiRekoruT'


class Iseda080Sensorbaglantisi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    elektrik_grubu_elemanları = models.TextField(db_column='Elektrik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    duz = models.TextField(db_column='DUZ', blank=True, null=True)  # Field name made lowercase.
    acili = models.TextField(db_column='ACILI', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA080SensorBaglantisi'


class Iseda081Emniyetcenesi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA081EmniyetCenesi'


class Iseda082Siyiricimesafestoperi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA082SiyiriciMesafeStoperi'


class Iseda083Havagirisnozulu(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    pnomatik_grubu_elemanları = models.TextField(db_column='Pnomatik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA083HavaGirisNozulu'


class Iseda084Havabaglantibraketi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    pnomatik_grubu_elemanları = models.TextField(db_column='Pnomatik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    dis = models.TextField(db_column='Dis', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA084HavaBaglantiBraketi'


class Iseda085Pnomatikkumandalivalf(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    pnomatik_grubu_elemanları = models.TextField(db_column='Pnomatik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    festo = models.TextField(db_column='FESTO', blank=True, null=True)  # Field name made lowercase.
    x1_mm_field = models.TextField(db_column='X1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    y1_mm_field = models.TextField(db_column='Y1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x2_mm_field = models.TextField(db_column='X2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    y2_mm_field = models.TextField(db_column='Y2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mi_mm_field = models.TextField(db_column='MI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA085PnomatikKumandaliValf'


class Iseda086Mekanikkumandalivalf(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    pnomatik_grubu_elemanları = models.TextField(db_column='Pnomatik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA086MekanikKumandaliValf'


class Iseda087Azotbaglantirekor(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    baskı_elemanları = models.TextField(db_column='Baskı Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    rtcd = models.TextField(db_column='RTCD', blank=True, null=True)  # Field name made lowercase.
    rtcr = models.TextField(db_column='RTCR', blank=True, null=True)  # Field name made lowercase.
    rptd = models.TextField(db_column='RPTD', blank=True, null=True)  # Field name made lowercase.
    rptr = models.TextField(db_column='RPTR', blank=True, null=True)  # Field name made lowercase.
    rdru = models.TextField(db_column='RDRU', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA087AzotBaglantiRekor'


class Iseda088Baglantiplakasi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    baskı_elemanları = models.TextField(db_column='Baskı Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA088BaglantiPlakasi'


class Iseda089Catalmafsal(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    pnomatik_grubu_elemanları = models.TextField(db_column='Pnomatik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA089CatalMafsal'


class Iseda090Eklemyerbaglanti(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    pnomatik_grubu_elemanları = models.TextField(db_column='Pnomatik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    br_mm_field = models.TextField(db_column='BR(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    xx_mm_field = models.TextField(db_column='XX(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    xr_mm_field = models.TextField(db_column='XR(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    bt_mm_field = models.TextField(db_column='BT(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ck_mm_field = models.TextField(db_column='CK(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    eb_mm_field = models.TextField(db_column='EB(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    em_mm_field = models.TextField(db_column='EM(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    gl_mm_field = models.TextField(db_column='GL(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    hb_mm_field = models.TextField(db_column='HB(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    of_mm_field = models.TextField(db_column='OF(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ph_mm_field = models.TextField(db_column='PH(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ra_mm_field = models.TextField(db_column='RA(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    te_mm_field = models.TextField(db_column='TE(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ul_mm_field = models.TextField(db_column='UL(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ur_mm_field = models.TextField(db_column='UR(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA090EklemYerBaglanti'


class Iseda091Pnomatikzimbatutucu(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    delme_elemanlari = models.TextField(db_column='Delme Elemanlari', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    dayton = models.TextField(db_column='DAYTON', blank=True, null=True)  # Field name made lowercase.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h2_mm_field = models.TextField(db_column='H2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x1_mm_field = models.TextField(db_column='X1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x2_mm_field = models.TextField(db_column='X2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x3_mm_field = models.TextField(db_column='X3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x4_aci1_mm_field = models.TextField(db_column='X4_ACI1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x4_aci2_mm_field = models.TextField(db_column='X4_ACI2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    number_3 = models.TextField(db_column='3', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_2 = models.TextField(db_column='2', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    bp = models.TextField(db_column='BP', blank=True, null=True)  # Field name made lowercase.
    bb = models.TextField(db_column='BB', blank=True, null=True)  # Field name made lowercase.
    bs = models.TextField(db_column='BS', blank=True, null=True)  # Field name made lowercase.
    b1 = models.TextField(blank=True, null=True)
    b2 = models.TextField(blank=True, null=True)
    b3 = models.TextField(blank=True, null=True)
    b4 = models.TextField(blank=True, null=True)
    b5 = models.TextField(blank=True, null=True)
    b6 = models.TextField(blank=True, null=True)
    b7 = models.TextField(blank=True, null=True)
    b8 = models.TextField(blank=True, null=True)
    b9 = models.TextField(blank=True, null=True)
    b10 = models.TextField(blank=True, null=True)
    b11 = models.TextField(blank=True, null=True)
    b12 = models.TextField(blank=True, null=True)
    b13 = models.TextField(blank=True, null=True)
    b14 = models.TextField(blank=True, null=True)
    b15 = models.TextField(blank=True, null=True)
    b16 = models.TextField(blank=True, null=True)
    b17 = models.TextField(blank=True, null=True)
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    pimcapi_mm_field = models.TextField(db_column='pimcapi(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cbpim_mm_field = models.TextField(db_column='Cbpim(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    xd1_mm_field = models.TextField(db_column='xd1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    yd1_mm_field = models.TextField(db_column='yd1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    xp1_mm_field = models.TextField(db_column='xp1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    yp1_mm_field = models.TextField(db_column='yp1(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    xd2_mm_field = models.TextField(db_column='xd2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    yd2_mm_field = models.TextField(db_column='yd2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA091PnomatikZimbaTutucu'


class Iseda092Pozitifreturnluvkizak(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    merkezleme_elemanları = models.TextField(db_column='Merkezleme Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    y_mm_field = models.TextField(db_column='Y(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l1_mm_field = models.TextField(db_column='L1(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l2_mm_field = models.TextField(db_column='L2(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l3_mm_field = models.TextField(db_column='L3(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l4_mm_field = models.TextField(db_column='L4(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dy_mm_field = models.TextField(db_column='DY(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ao_mm_field = models.TextField(db_column='AO(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    oy_mm_field = models.TextField(db_column='OY(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    yo_mm_field = models.TextField(db_column='YO(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ey_mm_field = models.TextField(db_column='EY(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    civata_bas_derinligi_mm_field = models.TextField(db_column='CIVATA_BAS_DERINLIGI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    pim_bas_derinligi_mm_field = models.TextField(db_column='PIM_BAS_DERINLIGI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    civata_sap_capi_mm_field = models.TextField(db_column='CIVATA_SAP_CAPI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    pim_sap_capi_mm_field = models.TextField(db_column='PIM_SAP_CAPI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    civata_cap_mm_field = models.TextField(db_column='CIVATA_CAP(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    pim_cap_mm_field = models.TextField(db_column='PIM_CAP(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    disi_civata_bas_derinligi_mm_field = models.TextField(db_column='DISI_CIVATA_BAS_DERINLIGI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    disi_pim_bas_derinligi_mm_field = models.TextField(db_column='DISI_PIM_BAS_DERINLIGI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    civatadelik2 = models.TextField(db_column='CIVATADELIK2', blank=True, null=True)  # Field name made lowercase.
    civatadelik3 = models.TextField(db_column='CIVATADELIK3', blank=True, null=True)  # Field name made lowercase.
    civata_delik = models.TextField(db_column='CIVATA_DELIK', blank=True, null=True)  # Field name made lowercase.
    delik_uzunluk_mm_field = models.TextField(db_column='DELIK_UZUNLUK(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h27_mm_field = models.TextField(db_column='H27(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA092PozitifReturnluVKizak'


class Iseda093Kamduzcelikkizak(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    kam_elemanları = models.TextField(db_column='Kam Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b2_mm_field = models.TextField(db_column='b2(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cd2 = models.TextField(db_column='CD2', blank=True, null=True)  # Field name made lowercase.
    cd3 = models.TextField(db_column='CD3', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA093KamDuzCelikKizak'


class Iseda094Pnomatiktutucu(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    pnomatik_grubu_elemanları = models.TextField(db_column='Pnomatik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r_mm_field = models.TextField(db_column='R(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA094PnomatikTutucu'


class Iseda095Cabukbaglantisoketi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    elektrik_grubu_elemanları = models.TextField(db_column='Elektrik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA095CabukBaglantiSoketi'


class Iseda096Lotzimbasi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    markalama_elemanları = models.TextField(db_column='Markalama Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA096LotZimbasi'


class Iseda097Avaremakara(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA097AvareMakara'


class Iseda098Merkezlememakara(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA098MerkezlemeMakara'


class Iseda099Mekanikmikroswitch(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    elektrik_grubu_elemanları = models.TextField(db_column='Elektrik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA099MekanikMikroSwitch'


class Iseda100Basincsensor(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    baskı_elemanları = models.TextField(db_column='Baskı Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA100BasincSensor'


class Iseda101Yaglamaunitesi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA101YaglamaUnitesi'


class Iseda102Yaglamaunitesiuzatmasi(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA102YaglamaUnitesiUzatmasi'


class Iseda103Yaglamabaglantiaparati(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA103YaglamaBaglantiAparati'


class Iseda104Kamkapaklari2(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    kam_elemanları = models.TextField(db_column='Kam Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    w_mm_field = models.TextField(db_column='W(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    sp_mm_field = models.TextField(db_column='SP(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    n_mm_field = models.TextField(db_column='N(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    number_3_delik = models.TextField(db_column='3_DELIK', blank=True, null=True)  # Field name made lowercase. Field renamed because it wasn't a valid Python identifier.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    number_3 = models.TextField(db_column='3', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    number_2 = models.TextField(db_column='2', blank=True, null=True)  # Field renamed because it wasn't a valid Python identifier.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA104KamKapaklari2'


class Iseda105Kamemniyetustkizak(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    kam_elemanları = models.TextField(db_column='Kam Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    w_mm_field = models.TextField(db_column='W(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    sp_mm_field = models.TextField(db_column='Sp(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA105KamEmniyetUstKizak'


class Iseda106Titresimlikonveyor(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    not1 = models.TextField(db_column='Not1', blank=True, null=True)  # Field name made lowercase.
    hurda_tavasi_agirlik = models.TextField(db_column='Hurda_Tavasi_Agirlik', blank=True, null=True)  # Field name made lowercase.
    olcu_kod_1 = models.TextField(db_column='Olcu_Kod\\1', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    olcu_kod_2 = models.TextField(db_column='Olcu_Kod\\2', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    olcu_kod_3 = models.TextField(db_column='Olcu_Kod\\3', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    olcu_kod_4 = models.TextField(db_column='Olcu_Kod\\4', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    olcu_kod_5 = models.TextField(db_column='Olcu_Kod\\5', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    olcu_kod_6 = models.TextField(db_column='Olcu_Kod\\6', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    ml_mm_field = models.TextField(db_column='Ml(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA106TitresimliKonveyor'


class Iseda107Civata(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu_field = models.TextField(db_column='Olcu_', blank=True, null=True)  # Field name made lowercase. Field renamed because it ended with '_'.
    lboy = models.TextField(db_column='Lboy', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='d(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    dk_mm_field = models.TextField(db_column='dk(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k_mm_field = models.TextField(db_column='k(mm)', blank=True, null=True)  # Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    gmin_mm_field = models.TextField(db_column='Gmin(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    malzeme = models.TextField(db_column='Malzeme', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA107Civata'


class Iseda108Liftingpinfiat(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k_mm_field = models.TextField(db_column='K(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m_mm_field = models.TextField(db_column='M(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA108LiftingPinFIAT'


class Iseda109Guidepinpad(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    kurs_mm_field = models.TextField(db_column='KURS(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k_mm_field = models.TextField(db_column='K(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    m_mm_field = models.TextField(db_column='M(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    n_mm_field = models.TextField(db_column='N(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    p_mm_field = models.TextField(db_column='P(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    r_mm_field = models.TextField(db_column='R(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    s_mm_field = models.TextField(db_column='S(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    t_mm_field = models.TextField(db_column='T(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    x_mm_field = models.TextField(db_column='X(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    v_mm_field = models.TextField(db_column='V(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    y_mm_field = models.TextField(db_column='Y(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    z_mm_field = models.TextField(db_column='Z(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA109Guidepinpad'


class Iseda110Botmarkerfiat(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c_mm_field = models.TextField(db_column='C(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    d_mm_field = models.TextField(db_column='D(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    e_mm_field = models.TextField(db_column='E(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    f_mm_field = models.TextField(db_column='F(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    g_mm_field = models.TextField(db_column='G(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    h_mm_field = models.TextField(db_column='H(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    j_mm_field = models.TextField(db_column='J(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    k_mm_field = models.TextField(db_column='K(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    l_mm_field = models.TextField(db_column='L(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA110BotMarkerFIAT'


class Iseda111Lotpunchretainerfiat(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    a_mm_field = models.TextField(db_column='A(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    b_mm_field = models.TextField(db_column='B(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    c = models.TextField(db_column='C', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA111LotPunchRetainerFIAT'


class Iseda118Sprialhortum2(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    pnomatik_grubu_elemanları = models.TextField(db_column='Pnomatik Grubu Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    m = models.TextField(db_column='M', blank=True, null=True)  # Field name made lowercase.
    md_mm_field = models.TextField(db_column='Md(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    mi_mm_field = models.TextField(db_column='MI(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    cb_mm_field = models.TextField(db_column='Cb(mm)', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters. Field renamed because it ended with '_'.
    baglanti = models.TextField(db_column='Baglanti', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA118SprialHortum2'


class Iseda119Safetyplatefiat(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA119SafetyPlateFIAT'


class Iseda120Lprofil(models.Model):
    parcaadi = models.TextField(db_column='ParcaAdi', blank=True, null=True)  # Field name made lowercase.
    genel_kalıp_elemanları = models.TextField(db_column='Genel Kalıp Elemanları', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    malzeme_sinifi = models.TextField(db_column='Malzeme_Sinifi', blank=True, null=True)  # Field name made lowercase.
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    olcu = models.TextField(db_column='Olcu', blank=True, null=True)  # Field name made lowercase.
    kritiklik_no = models.TextField(db_column='Kritiklik_No', blank=True, null=True)  # Field name made lowercase.
    stq_normu = models.TextField(db_column='STQ_NORMU', blank=True, null=True)  # Field name made lowercase.
    tofas = models.TextField(db_column='TOFAS', blank=True, null=True)  # Field name made lowercase.
    depo_kodu = models.TextField(db_column='Depo_Kodu', blank=True, null=True)  # Field name made lowercase.
    tr = models.TextField(db_column='TR', blank=True, null=True)  # Field name made lowercase.
    eng = models.TextField(db_column='ENG', blank=True, null=True)  # Field name made lowercase.
    it = models.TextField(db_column='IT', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'ISEDA120LProfil'


class Kam(models.Model):
    firma = models.TextField(db_column='FIRMA', blank=True, null=True)  # Field name made lowercase.
    sipariş_kodu = models.TextField(db_column='Sipariş Kodu', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    alın_eni_w = models.TextField(db_column='Alın Eni W', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    açı_θ = models.TextField(db_column='Açı θ', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    kurs_s = models.TextField(db_column='Kurs S', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    alın_boyu_h = models.TextField(db_column='Alın Boyu H', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    çalışma_kuvveti_1_mil_vuruş_kn = models.TextField(db_column='Çalışma kuvveti / 1 mil Vuruş kN', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    çalışma_kuvveti_0_3_mil_vuruş_kn = models.TextField(db_column='Çalışma kuvveti / 0,3 mil Vuruş kN', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    max_en_w1 = models.TextField(db_column='Max En W1', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    kapalı_yüksekli_h1 = models.TextField(db_column='Kapalı Yüksekli H1', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    max_uzunluk_l = models.TextField(db_column='Max uzunluk L', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    tel_yay_geri_dönüş_kuvveti_n = models.TextField(db_column='Tel yay geri dönüş kuvveti N', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    gazlı_yay_geri_dönüş_kuvveti_n = models.TextField(db_column='Gazlı yay geri dönüş kuvveti N', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    gazlı_yay_geri_dönüş_kuvveti_power_type_v_n = models.TextField(db_column='Gazlı yay geri dönüş kuvveti (Power type -V) N', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    kam_slider_geri_dönüş_kuvveti_kn = models.TextField(db_column='Kam slider geri dönüş kuvveti kN', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    kam_slider_geri_dönüş_kuvveti_power_type_v_kn = models.TextField(db_column='Kam slider geri dönüş kuvveti (Power type -V) kN', blank=True, null=True)  # Field name made lowercase. Field renamed to remove unsuitable characters.
    opsiyon = models.TextField(db_column='Opsiyon', blank=True, null=True)  # Field name made lowercase.
    maliyet = models.TextField(db_column='Maliyet', blank=True, null=True)  # Field name made lowercase.
    foto = models.TextField(db_column='Foto', blank=True, null=True)  # Field name made lowercase.
    f20 = models.TextField(db_column='F20', blank=True, null=True)  # Field name made lowercase.
    f21 = models.TextField(db_column='F21', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'KAM'


class Mail(models.Model):
    sendermailhost = models.TextField(db_column='SenderMailHost', blank=True, null=True)  # Field name made lowercase.
    sendermailpassword = models.TextField(db_column='SenderMailPassword', blank=True, null=True)  # Field name made lowercase.
    sendermailaddress = models.TextField(db_column='SenderMailAddress', blank=True, null=True)  # Field name made lowercase.
    adminmailaddress = models.TextField(db_column='AdminMailAddress', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Mail'


class Material(models.Model):
    materialid = models.TextField(db_column='MaterialID', blank=True, null=True)  # Field name made lowercase.
    material = models.TextField(db_column='Material', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Material'


class Materiallistcontrol(models.Model):
    deletedsentence = models.TextField(db_column='DeletedSentence', blank=True, null=True)  # Field name made lowercase.
    addedsentence = models.TextField(db_column='AddedSentence', blank=True, null=True)  # Field name made lowercase.
    updatedsentence = models.TextField(db_column='UpdatedSentence', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'MaterialListControl'


class Materialtype(models.Model):
    materialtypeid = models.TextField(db_column='MaterialTypeID', blank=True, null=True)  # Field name made lowercase.
    materialtype = models.TextField(db_column='MaterialType', blank=True, null=True)  # Field name made lowercase.
    abbreviation = models.TextField(db_column='Abbreviation', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'MaterialType'


class MaterialtypePartname(models.Model):
    materialtype_partnameid = models.TextField(db_column='MaterialType_PartNameID', blank=True, null=True)  # Field name made lowercase.
    partnameid = models.TextField(db_column='PartNameID', blank=True, null=True)  # Field name made lowercase.
    materialtypeid = models.TextField(db_column='MaterialTypeID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'MaterialType_PartName'


class Parametre(models.Model):
    parametre = models.TextField(db_column='Parametre', blank=True, null=True)  # Field name made lowercase.
    parametretipi = models.TextField(db_column='ParametreTipi', blank=True, null=True)  # Field name made lowercase.
    doluluk = models.TextField(db_column='Doluluk', blank=True, null=True)  # Field name made lowercase.
    isrequiredforcontrol = models.TextField(db_column='IsRequiredForControl', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'PARAMETRE'


class Partname(models.Model):
    partnameid = models.TextField(db_column='PartNameID', blank=True, null=True)  # Field name made lowercase.
    turkish = models.TextField(db_column='Turkish', blank=True, null=True)  # Field name made lowercase.
    italian = models.TextField(db_column='Italian', blank=True, null=True)  # Field name made lowercase.
    english = models.TextField(db_column='English', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'PartName'


class PartnameMaterial(models.Model):
    partname_materialid = models.TextField(db_column='PartName_MaterialID', blank=True, null=True)  # Field name made lowercase.
    materialid = models.TextField(db_column='MaterialID', blank=True, null=True)  # Field name made lowercase.
    partnameid = models.TextField(db_column='PartNameID', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'PartName_Material'


class Renkler(models.Model):
    grup = models.TextField(db_column='Grup', blank=True, null=True)  # Field name made lowercase.
    tip = models.TextField(db_column='Tip', blank=True, null=True)  # Field name made lowercase.
    firma = models.TextField(db_column='Firma', blank=True, null=True)  # Field name made lowercase.
    kod = models.TextField(db_column='Kod', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'Renkler'


class Renklertabnames(models.Model):
    groupindex = models.TextField(db_column='GroupIndex', blank=True, null=True)  # Field name made lowercase.
    tabname = models.TextField(db_column='TabName', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'RenklerTabNames'


class Standardgroups(models.Model):
    standard = models.TextField(db_column='STANDARD', blank=True, null=True)  # Field name made lowercase.
    group = models.TextField(db_column='GROUP', blank=True, null=True)  # Field name made lowercase.
    revizyon_numarasi = models.TextField(db_column='Revizyon_Numarasi', blank=True, null=True)  # Field name made lowercase.
    revizyon_tarihi = models.TextField(db_column='Revizyon_Tarihi', blank=True, null=True)  # Field name made lowercase.
    type = models.TextField(db_column='Type', blank=True, null=True)  # Field name made lowercase.
    isactive = models.TextField(db_column='IsActive', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'STANDARDGROUPS'

