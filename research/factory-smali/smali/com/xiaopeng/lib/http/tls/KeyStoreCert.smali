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

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTLS2SocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 8

    .line 46
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLSv1.2"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 47
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const-string v2, "XpengAndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 48
    .local v2, "tks":Ljava/security/KeyStore;
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 49
    const/4 v3, 0x0

    .line 51
    .local v3, "trustManager":Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-le v4, v5, :cond_0

    .line 52
    new-instance v4, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;

    invoke-direct {v4}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;-><init>()V

    move-object v3, v4

    goto :goto_0

    .line 54
    :cond_0
    new-instance v4, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;

    invoke-direct {v4, v2}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;-><init>(Ljava/security/KeyStore;)V

    move-object v3, v4

    .line 57
    :goto_0
    const/4 v4, 0x1

    new-array v5, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 58
    .local v5, "ts":[Ljavax/net/ssl/TrustManager;
    new-array v4, v4, [Ljavax/net/ssl/KeyManager;

    new-instance v7, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509KeyManager;

    invoke-direct {v7, v2}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509KeyManager;-><init>(Ljava/security/KeyStore;)V

    aput-object v7, v4, v6

    .line 60
    .local v4, "ks":[Ljavax/net/ssl/KeyManager;
    invoke-virtual {v1, v4, v5, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 62
    new-instance v6, Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    .line 63
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v2    # "tks":Ljava/security/KeyStore;
    .end local v3    # "trustManager":Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;
    .end local v4    # "ks":[Ljavax/net/ssl/KeyManager;
    .end local v5    # "ts":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public static getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 77
    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-le v1, v2, :cond_0

    .line 78
    new-instance v1, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;

    invoke-direct {v1}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;-><init>()V

    .line 79
    .local v1, "trustManager":Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;
    const-string v2, "KeyStoreCert"

    const-string v3, "getX509TrustManager from  Android  Q "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-object v1

    .line 82
    .end local v1    # "trustManager":Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;
    :cond_0
    const-string v1, "KeyStoreCert"

    const-string v2, "getX509TrustManager from  Android  P "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v1, "XpengAndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 84
    .local v1, "tks":Ljava/security/KeyStore;
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 85
    new-instance v2, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;

    invoke-direct {v2, v1}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert$CompositeX509TrustManager;-><init>(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 88
    .end local v1    # "tks":Ljava/security/KeyStore;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method
