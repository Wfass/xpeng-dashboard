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

.method public static getTLS2SocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 9

    .line 48
    const/16 v0, 0x1773

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "TLSv1.2"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 49
    .local v2, "sslContext":Ljavax/net/ssl/SSLContext;
    const-string v3, "XpengAndroidKeyStore"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 50
    .local v3, "tks":Ljava/security/KeyStore;
    invoke-virtual {v3, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 51
    const/4 v4, 0x0

    .line 53
    .local v4, "trustManager":Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-le v5, v6, :cond_0

    .line 54
    new-instance v5, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;

    invoke-direct {v5}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;-><init>()V

    move-object v4, v5

    goto :goto_0

    .line 56
    :cond_0
    new-instance v5, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;

    invoke-direct {v5, v3}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;-><init>(Ljava/security/KeyStore;)V

    move-object v4, v5

    .line 60
    :goto_0
    invoke-virtual {v4}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->isHasValidCert()Z

    move-result v5

    if-nez v5, :cond_1

    .line 61
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v5

    const-string v6, "no valid ssl factory"

    invoke-interface {v5, v0, v6}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    .line 63
    :cond_1
    const/4 v5, 0x1

    new-array v6, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 64
    .local v6, "ts":[Ljavax/net/ssl/TrustManager;
    new-array v5, v5, [Ljavax/net/ssl/KeyManager;

    new-instance v8, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509KeyManager;

    invoke-direct {v8, v3}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509KeyManager;-><init>(Ljava/security/KeyStore;)V

    aput-object v8, v5, v7

    .line 66
    .local v5, "ks":[Ljavax/net/ssl/KeyManager;
    invoke-virtual {v2, v5, v6, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 68
    new-instance v7, Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 69
    .end local v2    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v3    # "tks":Ljava/security/KeyStore;
    .end local v4    # "trustManager":Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;
    .end local v5    # "ks":[Ljavax/net/ssl/KeyManager;
    .end local v6    # "ts":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    .line 71
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public static getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 6

    .line 84
    const/16 v0, 0x1774

    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-le v2, v3, :cond_0

    .line 85
    new-instance v2, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;

    invoke-direct {v2}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;-><init>()V

    .line 86
    .local v2, "trustManager":Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;
    const-string v3, "KeyStoreCert"

    const-string v4, "getX509TrustManager from  Android  Q "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-object v2

    .line 89
    .end local v2    # "trustManager":Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;
    :cond_0
    const-string v2, "KeyStoreCert"

    const-string v3, "getX509TrustManager from  Android  P "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v2, "XpengAndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 91
    .local v2, "tks":Ljava/security/KeyStore;
    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 93
    new-instance v3, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;

    invoke-direct {v3, v2}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;-><init>(Ljava/security/KeyStore;)V

    .line 94
    .local v3, "trustManager":Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;
    invoke-virtual {v3}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;->isHasValidCert()Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v4

    const-string v5, "no valid trust manager"

    invoke-interface {v4, v0, v5}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_1
    return-object v3

    .line 102
    .end local v2    # "tks":Ljava/security/KeyStore;
    .end local v3    # "trustManager":Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/xiaopeng/lib/InitEventHolder;->get()Lcom/xiaopeng/lib/HttpInitEventListener;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Lcom/xiaopeng/lib/HttpInitEventListener;->onInitException(ILjava/lang/String;)V

    .line 104
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v1
.end method
