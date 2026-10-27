.class public Lcom/xiaopeng/commonfunc/b/f/b;
.super Ljava/lang/Object;
.source "CertVerifyModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/b/f/b$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private final oi:Ljava/lang/String;

.field private final oj:Ljava/lang/String;

.field private final ok:Ljava/lang/String;

.field private final ol:Ljava/lang/String;

.field private final om:Z

.field private final on:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/f/b;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/b/f/b;->oi:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/b/f/b;->oj:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/xiaopeng/commonfunc/b/f/b;->ok:Ljava/lang/String;

    .line 76
    iput-object p5, p0, Lcom/xiaopeng/commonfunc/b/f/b;->ol:Ljava/lang/String;

    .line 77
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/b/f/b;->om:Z

    .line 78
    iput-boolean p1, p0, Lcom/xiaopeng/commonfunc/b/f/b;->on:Z

    .line 79
    return-void
.end method

.method private declared-synchronized S(Landroid/content/Context;)[Ljavax/net/ssl/KeyManager;
    .locals 4

    monitor-enter p0

    .line 95
    const/4 p1, 0x0

    :try_start_0
    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 96
    nop

    .line 97
    iget-boolean v1, p0, Lcom/xiaopeng/commonfunc/b/f/b;->om:Z

    if-eqz v1, :cond_1

    .line 99
    const-string v1, "CertVerifyModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get client cert content from file mClientCertPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/commonfunc/b/f/b;->oi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/f/b;->oi:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_0

    .line 105
    :cond_0
    move-object v3, p1

    :goto_0
    goto :goto_1

    .line 106
    :cond_1
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/f/b;->oi:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :goto_1
    if-eqz v3, :cond_2

    .line 111
    :try_start_1
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/f/b;->ol:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 121
    :catch_0
    move-exception v1

    goto :goto_2

    .line 119
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 116
    :catch_1
    move-exception v1

    .line 117
    :try_start_3
    invoke-virtual {v1}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 121
    :catch_2
    move-exception v1

    .line 122
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 114
    :catch_3
    move-exception v1

    .line 115
    :try_start_6
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 120
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    .line 121
    :catch_4
    move-exception v1

    goto :goto_2

    .line 112
    :catch_5
    move-exception v1

    .line 113
    :try_start_8
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 120
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 123
    :goto_3
    goto :goto_7

    .line 121
    :catch_6
    move-exception v1

    goto :goto_2

    .line 124
    :goto_4
    goto :goto_7

    .line 119
    :goto_5
    nop

    .line 120
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 123
    goto :goto_6

    .line 121
    :catch_7
    move-exception v1

    .line 122
    :try_start_b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 123
    :goto_6
    throw v0

    .line 126
    :cond_2
    :goto_7
    const-string v1, "X509"

    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/f/b;->ol:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 128
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    monitor-exit p0

    return-object v0

    .line 94
    :catchall_1
    move-exception p1

    goto :goto_a

    .line 135
    :catch_8
    move-exception v0

    .line 136
    :try_start_c
    invoke-virtual {v0}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_9

    .line 133
    :catch_9
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_8

    .line 131
    :catch_a
    move-exception v0

    .line 132
    invoke-virtual {v0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_8

    .line 129
    :catch_b
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 137
    :goto_8
    nop

    .line 139
    :goto_9
    monitor-exit p0

    return-object p1

    .line 94
    :goto_a
    monitor-exit p0

    throw p1
.end method

.method private T(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .line 144
    :try_start_0
    const-string v0, "TLSv1.2"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 145
    new-instance v1, Lcom/xiaopeng/commonfunc/b/f/b$a;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/b/f/b;->oj:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/commonfunc/b/f/b$a;-><init>(Lcom/xiaopeng/commonfunc/b/f/b;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/b/f/b$a;->ec()Z

    move-result v2

    if-nez v2, :cond_0

    .line 147
    const-string v2, "CertVerifyModel"

    const-string v3, "getTLS2SocketFactory trustManager has no valid cert"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 150
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/b/f/b;->S(Landroid/content/Context;)[Ljavax/net/ssl/KeyManager;

    move-result-object p1

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p1, v2, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 152
    new-instance p1, Lcom/xiaopeng/lib/http/c/e$b;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/http/c/e$b;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 155
    :catch_0
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0

    .line 153
    :catch_1
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 157
    nop

    .line 159
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private U(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 3

    .line 183
    new-instance v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    const-string v1, "CertVerifyModel"

    invoke-direct {v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 185
    sget-object v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->mj:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->a(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V

    .line 187
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->a(Ljava/util/logging/Level;)V

    .line 189
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 190
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/b/f/b;->T(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/b/f/b;->eb()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 191
    invoke-static {}, Lcom/xiaopeng/lib/http/c/e;->getConnectionSpecs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    new-instance v1, Lokhttp3/ConnectionPool;

    invoke-direct {v1}, Lokhttp3/ConnectionPool;-><init>()V

    .line 192
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 194
    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/lib/http/c/b;->Vi:Lcom/xiaopeng/lib/http/c/b;

    .line 195
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 189
    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/b/f/b;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/commonfunc/b/f/b;->oj:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/commonfunc/b/f/b;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/xiaopeng/commonfunc/b/f/b;->on:Z

    return p0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/lib/http/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/c<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/f/b;->ok:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/f/b;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/xiaopeng/commonfunc/b/f/b;->U(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/commonfunc/b/f/b$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/commonfunc/b/f/b$1;-><init>(Lcom/xiaopeng/commonfunc/b/f/b;Lcom/xiaopeng/lib/http/c;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 232
    return-void
.end method

.method public eb()Ljavax/net/ssl/X509TrustManager;
    .locals 3

    .line 170
    :try_start_0
    new-instance v0, Lcom/xiaopeng/commonfunc/b/f/b$a;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/b/f/b;->oj:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/commonfunc/b/f/b$a;-><init>(Lcom/xiaopeng/commonfunc/b/f/b;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/f/b$a;->ec()Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    const-string v1, "CertVerifyModel"

    const-string v2, "getX509TrustManager trustManager has no valid cert"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    const/4 v0, 0x0

    return-object v0
.end method
