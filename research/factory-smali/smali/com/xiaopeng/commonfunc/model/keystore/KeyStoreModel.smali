.class public Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;
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
.field private mContext:Landroid/content/Context;

.field private mKeyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;->mContext:Landroid/content/Context;

    .line 40
    :try_start_0
    const-string v0, "XpengAndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;->mKeyStore:Ljava/security/KeyStore;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;->mKeyStore:Ljava/security/KeyStore;

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
.method public CreateCaCert()Z
    .locals 6

    .line 48
    const-string v0, "KeyStoreModel"

    const-string v1, "CreateCaCert"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "res":Z
    :try_start_0
    const-string v1, "BKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 54
    .local v1, "tks":Ljava/security/KeyStore;
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "index_kstp.html"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 55
    .local v2, "tsIn":Ljava/io/InputStream;
    const-string v3, "chengzi"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 57
    const-string v3, "server"

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 58
    .local v3, "cert":Ljava/security/cert/Certificate;
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;->mKeyStore:Ljava/security/KeyStore;

    const-string v5, "ca"

    invoke-virtual {v4, v5, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/4 v0, 0x1

    .line 62
    .end local v2    # "tsIn":Ljava/io/InputStream;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    goto :goto_0

    .line 60
    .end local v1    # "tks":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public CreateClientCert(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkcs12"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    move-object v1, v0

    .line 90
    .local v1, "ksClient":Ljava/security/KeyStore;
    :try_start_0
    const-string v2, "PKCS12"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    move-object v1, v2

    .line 91
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 92
    .local v2, "ksIn":Ljava/io/InputStream;
    const-string v3, "chengzi"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 94
    const-string v3, "alias"

    invoke-virtual {v1, v3, v0}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v3

    .line 95
    .local v3, "entry":Ljava/security/KeyStore$Entry;
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;->mKeyStore:Ljava/security/KeyStore;

    const-string v5, "client"

    invoke-virtual {v4, v5, v3, v0}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v2    # "ksIn":Ljava/io/InputStream;
    .end local v3    # "entry":Ljava/security/KeyStore$Entry;
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public CreateV18CaCert()Z
    .locals 6

    .line 67
    const-string v0, "KeyStoreModel"

    const-string v1, "CreateV18CaCert"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    .line 72
    .local v0, "res":Z
    :try_start_0
    const-string v1, "BKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 73
    .local v1, "tks":Ljava/security/KeyStore;
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "index_kstp_eu.html"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 74
    .local v2, "tsIn":Ljava/io/InputStream;
    const-string v3, "chengzi"

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 76
    const-string v3, "server"

    invoke-virtual {v1, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 78
    .local v3, "cert":Ljava/security/cert/Certificate;
    iget-object v4, p0, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;->mKeyStore:Ljava/security/KeyStore;

    const-string v5, "ca"

    invoke-virtual {v4, v5, v3}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    const/4 v0, 0x1

    .line 82
    .end local v2    # "tsIn":Ljava/io/InputStream;
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    goto :goto_0

    .line 80
    .end local v1    # "tks":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isCaCertExist()Z
    .locals 4

    .line 102
    const/4 v0, 0x0

    .line 104
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;->mKeyStore:Ljava/security/KeyStore;

    const-string v2, "ca"

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
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

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    return v0
.end method

.method public isClientCertExist()Z
    .locals 4

    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/keystore/KeyStoreModel;->mKeyStore:Ljava/security/KeyStore;

    const-string v2, "client"

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
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

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    return v0
.end method
