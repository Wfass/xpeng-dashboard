.class public Lcom/xiaopeng/factory/model/keystore/KeyStoreModel;
.super Ljava/lang/Object;
.source "KeyStoreModel.java"


# static fields
.field private static final FILE_CA_CERT:Ljava/lang/String; = "index_kstp.html"

.field private static final FILE_CA_CERT_V18:Ljava/lang/String; = "index_kstp_eu.html"

.field private static final KEYSTORE_BKS:Ljava/lang/String; = "BKS"

.field private static final KEYSTORE_PKCS12:Ljava/lang/String; = "PKCS12"

.field private static final KEY_STORE_CACERT_ALIAS:Ljava/lang/String; = "ca"

.field private static final KEY_STORE_CACERT_ALIAS_KEY:Ljava/lang/String; = "server"

.field private static final KEY_STORE_CACERT_PASSWORD:Ljava/lang/String; = "chengzi"

.field private static final KEY_STORE_CLIENT_ALIAS:Ljava/lang/String; = "client"

.field private static final KEY_STORE_CLIENT_ALIAS_KEY:Ljava/lang/String; = "alias"

.field private static final KEY_STORE_CLIENT_PASSWORD:Ljava/lang/String; = "chengzi"

.field private static final TAG:Ljava/lang/String; = "KeyStoreModel"

.field private static final XPENG_ANDROID_KEY_STORE:Ljava/lang/String; = "XpengAndroidKeyStore"


# instance fields
.field private mKeyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    :try_start_0
    const-string v0, "XpengAndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/keystore/KeyStoreModel;->mKeyStore:Ljava/security/KeyStore;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/factory/model/keystore/KeyStoreModel;->mKeyStore:Ljava/security/KeyStore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public CreateCaCert()V
    .locals 5

    .line 51
    :try_start_0
    const-string v0, "BKS"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 52
    .local v0, "tks":Ljava/security/KeyStore;
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "index_kstp.html"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 53
    .local v1, "tsIn":Ljava/io/InputStream;
    const-string v2, "chengzi"

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 55
    const-string v2, "server"

    invoke-virtual {v0, v2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 56
    .local v2, "cert":Ljava/security/cert/Certificate;
    iget-object v3, p0, Lcom/xiaopeng/factory/model/keystore/KeyStoreModel;->mKeyStore:Ljava/security/KeyStore;

    const-string v4, "ca"

    invoke-virtual {v3, v4, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v1    # "tsIn":Ljava/io/InputStream;
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    goto :goto_0

    .line 57
    .end local v0    # "tks":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public CreateClientCert(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkcs12"    # Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    move-object v1, v0

    .line 85
    .local v1, "ksClient":Ljava/security/KeyStore;
    :try_start_0
    const-string v2, "PKCS12"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    move-object v1, v2

    .line 86
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 87
    .local v2, "ksIn":Ljava/io/InputStream;
    const-string v3, "chengzi"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 89
    const-string v3, "alias"

    invoke-virtual {v1, v3, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    .line 90
    .local v3, "entry":Ljava/security/KeyStore$Entry;
    iget-object v4, p0, Lcom/xiaopeng/factory/model/keystore/KeyStoreModel;->mKeyStore:Ljava/security/KeyStore;

    const-string v5, "client"

    invoke-virtual {v4, v5, v3, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v2    # "ksIn":Ljava/io/InputStream;
    .end local v3    # "entry":Ljava/security/KeyStore$Entry;
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public CreateV18CaCert()Z
    .locals 6

    .line 63
    const-string v0, "KeyStoreModel"

    const-string v1, "CreateV18CaCert"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    .line 68
    .local v0, "res":Z
    :try_start_0
    const-string v1, "BKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 69
    .local v1, "tks":Ljava/security/KeyStore;
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "index_kstp_eu.html"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 70
    .local v2, "tsIn":Ljava/io/InputStream;
    const-string v3, "chengzi"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 72
    const-string v3, "server"

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 73
    .local v3, "cert":Ljava/security/cert/Certificate;
    iget-object v4, p0, Lcom/xiaopeng/factory/model/keystore/KeyStoreModel;->mKeyStore:Ljava/security/KeyStore;

    const-string v5, "ca"

    invoke-virtual {v4, v5, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v0, 0x1

    .line 77
    .end local v2    # "tsIn":Ljava/io/InputStream;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    goto :goto_0

    .line 75
    .end local v1    # "tks":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isCaCertExist()Z
    .locals 4

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/keystore/KeyStoreModel;->mKeyStore:Ljava/security/KeyStore;

    const-string v2, "ca"

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "KeyStoreModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCaCertExist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    return v0
.end method

.method public isClientCertExist()Z
    .locals 4

    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/keystore/KeyStoreModel;->mKeyStore:Ljava/security/KeyStore;

    const-string v2, "client"

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 113
    goto :goto_0

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v1, "KeyStoreModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isClientCertExist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    return v0
.end method
