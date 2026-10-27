.class public Lcom/xiaopeng/lib/http/tls/KeyStoreCert;
.super Ljava/lang/Object;
.source "KeyStoreCert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509KeyManager;,
        Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;
    }
.end annotation


# static fields
.field private static final CA_CERT_PATH:Ljava/lang/String; = "/system/etc/index_kstp.html"

.field private static final KEYSTORE_BKS:Ljava/lang/String; = "BKS"

.field private static final KEY_STORE_CACERT_PASSWORD:Ljava/lang/String; = "chengzi"

.field private static final TAG:Ljava/lang/String; = "KeyStoreCert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLSv1.2"

    .line 62
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const-string v2, "XpengAndroidKeyStore"

    .line 63
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 67
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    .line 68
    new-instance v3, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;

    invoke-direct {v3}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;-><init>()V

    goto :goto_0

    .line 70
    :cond_0
    new-instance v3, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;

    invoke-direct {v3, v2}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;-><init>(Ljava/security/KeyStore;)V

    .line 74
    :goto_0
    invoke-virtual {v3}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->isHasValidCert()Z

    move-result v4

    if-nez v4, :cond_1

    .line 75
    invoke-static {}, Laoj;->a()Laoi;

    move-result-object v4

    const/16 v5, 0x1773

    const-string v6, "no valid ssl factory"

    invoke-interface {v4, v5, v6}, Laoi;->a(ILjava/lang/String;)V

    :cond_1
    const/4 v4, 0x1

    .line 77
    new-array v5, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 78
    new-array v3, v4, [Ljavax/net/ssl/KeyManager;

    new-instance v4, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509KeyManager;

    invoke-direct {v4, v2}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509KeyManager;-><init>(Ljava/security/KeyStore;)V

    aput-object v4, v3, v6

    .line 80
    invoke-virtual {v1, v3, v5, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 84
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getTLS2SocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .line 48
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 53
    invoke-static {}, Laoj;->a()Laoi;

    move-result-object v1

    const/16 v2, 0x1773

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Laoi;->a(ILjava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x1774

    .line 97
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x1c

    const-string v4, "KeyStoreCert"

    if-le v2, v3, :cond_0

    .line 98
    :try_start_1
    new-instance v2, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;

    invoke-direct {v2}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;-><init>()V

    const-string v3, "getX509TrustManager from  Android  Q "

    .line 99
    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string v2, "getX509TrustManager from  Android  P "

    .line 102
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "XpengAndroidKeyStore"

    .line 103
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 104
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 106
    new-instance v3, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;

    invoke-direct {v3, v2}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;-><init>(Ljava/security/KeyStore;)V

    .line 107
    invoke-virtual {v3}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->isHasValidCert()Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    invoke-static {}, Laoj;->a()Laoi;

    move-result-object v2

    const-string v4, "no valid trust manager"

    invoke-interface {v2, v1, v4}, Laoi;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-object v3

    :catch_0
    move-exception v2

    .line 116
    invoke-static {}, Laoj;->a()Laoi;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Laoi;->a(ILjava/lang/String;)V

    .line 117
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method
