.class public Lcom/xiaopeng/commonfunc/b/e/a;
.super Ljava/lang/Object;
.source "KeyStoreModel.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private oc:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/e/a;->mContext:Landroid/content/Context;

    .line 40
    :try_start_0
    const-string p1, "XpengAndroidKeyStore"

    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/e/a;->oc:Ljava/security/KeyStore;

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/e/a;->oc:Ljava/security/KeyStore;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    :goto_0
    return-void
.end method


# virtual methods
.method public dV()Z
    .locals 3

    .line 48
    const-string v0, "KeyStoreModel"

    const-string v1, "CreateCaCert"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    nop

    .line 53
    :try_start_0
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/e/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "index_kstp.html"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 55
    const-string v2, "chengzi"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 57
    const-string v1, "server"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/e/a;->oc:Ljava/security/KeyStore;

    const-string v2, "ca"

    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/4 v0, 0x1

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dW()Z
    .locals 3

    .line 67
    const-string v0, "KeyStoreModel"

    const-string v1, "CreateV18CaCert"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    nop

    .line 72
    :try_start_0
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/e/a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "index_kstp_eu.html"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 74
    const-string v2, "chengzi"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 76
    const-string v1, "server"

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/e/a;->oc:Ljava/security/KeyStore;

    const-string v2, "ca"

    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v0, 0x1

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
