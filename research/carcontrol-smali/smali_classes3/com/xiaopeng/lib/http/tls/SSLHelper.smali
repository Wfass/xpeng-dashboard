.class public Lcom/xiaopeng/lib/http/tls/SSLHelper;
.super Ljava/lang/Object;
.source "SSLHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;,
        Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;
    }
.end annotation


# static fields
.field private static mWrapper:Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;

.field private static final sUseLocalCertFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/xiaopeng/lib/http/tls/SSLHelper;->sUseLocalCertFile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/lib/http/tls/SSLHelper;->mWrapper:Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;

    return-object v0
.end method

.method public static getConnectionSpecs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lokhttp3/ConnectionSpec$Builder;

    sget-object v1, Lokhttp3/ConnectionSpec;->MODERN_TLS:Lokhttp3/ConnectionSpec;

    invoke-direct {v0, v1}, Lokhttp3/ConnectionSpec$Builder;-><init>(Lokhttp3/ConnectionSpec;)V

    const/4 v1, 0x1

    new-array v2, v1, [Lokhttp3/TlsVersion;

    sget-object v3, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 30
    invoke-virtual {v0, v2}, Lokhttp3/ConnectionSpec$Builder;->tlsVersions([Lokhttp3/TlsVersion;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [Lokhttp3/CipherSuite;

    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    aput-object v3, v2, v4

    sget-object v3, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256:Lokhttp3/CipherSuite;

    aput-object v3, v2, v1

    sget-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lokhttp3/CipherSuite;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    sget-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lokhttp3/CipherSuite;

    const/4 v3, 0x3

    aput-object v1, v2, v3

    sget-object v1, Lokhttp3/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lokhttp3/CipherSuite;

    const/4 v3, 0x4

    aput-object v1, v2, v3

    .line 31
    invoke-virtual {v0, v2}, Lokhttp3/ConnectionSpec$Builder;->cipherSuites([Lokhttp3/CipherSuite;)Lokhttp3/ConnectionSpec$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lokhttp3/ConnectionSpec$Builder;->build()Lokhttp3/ConnectionSpec;

    move-result-object v0

    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lokhttp3/ConnectionSpec;->COMPATIBLE_TLS:Lokhttp3/ConnectionSpec;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lokhttp3/ConnectionSpec;->CLEARTEXT:Lokhttp3/ConnectionSpec;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static getTLS2SocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 48
    sget-boolean v0, Lcom/xiaopeng/lib/http/tls/SSLHelper;->sUseLocalCertFile:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->getTLS2SocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0

    .line 51
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert;->getTLS2SocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    return-object p0
.end method

.method public static getX509TrustManager(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 56
    sget-boolean v0, Lcom/xiaopeng/lib/http/tls/SSLHelper;->sUseLocalCertFile:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p0}, Lcom/xiaopeng/lib/http/tls/LocalFileCert;->getX509TrustManager(Landroid/content/Context;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/http/tls/KeyStoreCert;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    return-object p0
.end method

.method public static setSSLSocketWrapper(Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wrapper"
        }
    .end annotation

    .line 121
    sput-object p0, Lcom/xiaopeng/lib/http/tls/SSLHelper;->mWrapper:Lcom/xiaopeng/lib/http/tls/SSLHelper$ISSLSocketWrapper;

    return-void
.end method
