.class public Lcom/lzy/okgo/e/a;
.super Ljava/lang/Object;
.source "HttpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/e/a$a;
    }
.end annotation


# static fields
.field public static mb:Ljavax/net/ssl/X509TrustManager;

.field public static mc:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 185
    new-instance v0, Lcom/lzy/okgo/e/a$1;

    invoke-direct {v0}, Lcom/lzy/okgo/e/a$1;-><init>()V

    sput-object v0, Lcom/lzy/okgo/e/a;->mb:Ljavax/net/ssl/X509TrustManager;

    .line 205
    new-instance v0, Lcom/lzy/okgo/e/a$2;

    invoke-direct {v0}, Lcom/lzy/okgo/e/a$2;-><init>()V

    sput-object v0, Lcom/lzy/okgo/e/a;->mc:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method private static varargs a(Ljavax/net/ssl/X509TrustManager;Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/lzy/okgo/e/a$a;
    .locals 2

    .line 95
    new-instance v0, Lcom/lzy/okgo/e/a$a;

    invoke-direct {v0}, Lcom/lzy/okgo/e/a$a;-><init>()V

    .line 97
    :try_start_0
    invoke-static {p1, p2}, Lcom/lzy/okgo/e/a;->a(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object p1

    .line 98
    invoke-static {p3}, Lcom/lzy/okgo/e/a;->a([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;

    move-result-object p2

    .line 100
    if-eqz p0, :cond_0

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    if-eqz p2, :cond_1

    .line 105
    invoke-static {p2}, Lcom/lzy/okgo/e/a;->a([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p0

    goto :goto_0

    .line 108
    :cond_1
    sget-object p0, Lcom/lzy/okgo/e/a;->mb:Ljavax/net/ssl/X509TrustManager;

    .line 111
    :goto_0
    const-string p2, "TLS"

    invoke-static {p2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p2

    .line 114
    const/4 p3, 0x1

    new-array p3, p3, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    aput-object p0, p3, v1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, p3, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 116
    invoke-virtual {p2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iput-object p1, v0, Lcom/lzy/okgo/e/a$a;->md:Ljavax/net/ssl/SSLSocketFactory;

    .line 117
    iput-object p0, v0, Lcom/lzy/okgo/e/a$a;->trustManager:Ljavax/net/ssl/X509TrustManager;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-object v0

    .line 121
    :catch_0
    move-exception p0

    .line 122
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 119
    :catch_1
    move-exception p0

    .line 120
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method private static a([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .line 173
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 174
    instance-of v3, v2, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 175
    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    return-object v2

    .line 173
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 178
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/io/InputStream;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .locals 3

    .line 128
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    :try_start_0
    const-string v1, "BKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 131
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object p0

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 133
    invoke-virtual {p0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 134
    :catch_0
    move-exception p0

    .line 135
    invoke-static {p0}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V

    .line 137
    return-object v0

    .line 128
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static varargs a([Ljava/io/InputStream;)[Ljavax/net/ssl/TrustManager;
    .locals 9

    .line 141
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-gtz v1, :cond_0

    goto :goto_3

    .line 143
    :cond_0
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 145
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 146
    invoke-virtual {v2, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 147
    nop

    .line 148
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, p0, v4

    .line 149
    add-int/lit8 v7, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    .line 153
    invoke-virtual {v2, v5, v8}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    if-eqz v6, :cond_1

    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 156
    :catch_0
    move-exception v5

    .line 157
    :try_start_2
    invoke-static {v5}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 158
    :cond_1
    :goto_1
    nop

    .line 148
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_0

    .line 161
    :cond_2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p0

    .line 163
    invoke-virtual {p0, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 165
    invoke-virtual {p0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    .line 166
    :catch_1
    move-exception p0

    .line 167
    invoke-static {p0}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V

    .line 169
    return-object v0

    .line 141
    :cond_3
    :goto_3
    return-object v0
.end method

.method public static cZ()Lcom/lzy/okgo/e/a$a;
    .locals 2

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v0}, Lcom/lzy/okgo/e/a;->a(Ljavax/net/ssl/X509TrustManager;Ljava/io/InputStream;Ljava/lang/String;[Ljava/io/InputStream;)Lcom/lzy/okgo/e/a$a;

    move-result-object v0

    return-object v0
.end method
