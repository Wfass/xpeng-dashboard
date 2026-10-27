.class public Lcom/xiaopeng/factory/model/security/CertVerifyModel;
.super Ljava/lang/Object;
.source "CertVerifyModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/factory/model/security/CertVerifyModel$CompositeX509TrustManager;
    }
.end annotation


# static fields
.field private static final KEY_STORE_TYPE_BKS:Ljava/lang/String; = "bks"

.field private static final KEY_STORE_TYPE_P12:Ljava/lang/String; = "PKCS12"

.field private static final ROOT_CERT_KEY_PASSWORD:Ljava/lang/String; = "chengzi"

.field private static final TAG:Ljava/lang/String; = "CertVerifyModel"

.field public static final WIFI_CLIENT_CERT_KEY_PASSWORD:Ljava/lang/String; = "jCmX14gy4XLe"


# instance fields
.field private final mCaBaseEncode:Z

.field private final mClientBaseEncode:Z

.field private final mClientCertPath:Ljava/lang/String;

.field private final mClientPassword:Ljava/lang/String;

.field private final mRootCertPath:Ljava/lang/String;

.field private final mVerifyUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "clientCertPath"    # Ljava/lang/String;
    .param p2, "rootCertPath"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "clientPassword"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mClientCertPath:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mRootCertPath:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mVerifyUrl:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mClientPassword:Ljava/lang/String;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mClientBaseEncode:Z

    .line 76
    iput-boolean v0, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mCaBaseEncode:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "clientCertPath"    # Ljava/lang/String;
    .param p2, "rootCertPath"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "clientPassword"    # Ljava/lang/String;
    .param p5, "clientBaseEncode"    # Z
    .param p6, "caBaseEncode"    # Z

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mClientCertPath:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mRootCertPath:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mVerifyUrl:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mClientPassword:Ljava/lang/String;

    .line 85
    iput-boolean p5, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mClientBaseEncode:Z

    .line 86
    iput-boolean p6, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mCaBaseEncode:Z

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/factory/model/security/CertVerifyModel;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/security/CertVerifyModel;

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mRootCertPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/factory/model/security/CertVerifyModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/security/CertVerifyModel;

    .line 55
    iget-boolean v0, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mCaBaseEncode:Z

    return v0
.end method

.method private buildOkHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 180
    new-instance v0, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;

    const-string v1, "CertVerifyModel"

    invoke-direct {v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, "loggingInterceptor":Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;
    sget-object v1, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;->BODY:Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->setPrintLevel(Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor$Level;)V

    .line 184
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/lzy/okgo/interceptor/HttpLoggingInterceptor;->setColorLevel(Ljava/util/logging/Level;)V

    .line 186
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 187
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->getTLS2SocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 188
    invoke-static {}, Lcom/xiaopeng/lib/http/tls/SSLHelper;->getConnectionSpecs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectionSpecs(Ljava/util/List;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lokhttp3/ConnectionPool;

    invoke-direct {v2}, Lokhttp3/ConnectionPool;-><init>()V

    .line 189
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 190
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 191
    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/lib/http/tls/HostNameVerifier;->INSTANCE:Lcom/xiaopeng/lib/http/tls/HostNameVerifier;

    .line 192
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    .line 186
    return-object v1
.end method

.method private declared-synchronized getKeyManagers(Landroid/content/Context;)[Ljavax/net/ssl/KeyManager;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 92
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PKCS12"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 93
    .local v1, "keyStore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    .line 94
    .local v2, "ksIn":Ljava/io/InputStream;
    iget-boolean v3, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mClientBaseEncode:Z

    if-eqz v3, :cond_1

    .line 96
    const-string v3, "CertVerifyModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get client cert content from file mClientCertPath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mClientCertPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mClientCertPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, "certContent":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 100
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v5

    .line 102
    .end local v3    # "certContent":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mClientCertPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v3

    .line 106
    :goto_0
    if-eqz v2, :cond_2

    .line 108
    :try_start_1
    iget-object v3, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mClientPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 118
    :catch_0
    move-exception v3

    goto :goto_1

    .line 116
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 113
    :catch_1
    move-exception v3

    .line 114
    .local v3, "e":Ljava/security/cert/CertificateException;
    :try_start_3
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 118
    :catch_2
    move-exception v3

    .line 119
    .local v3, "e":Ljava/io/IOException;
    :goto_1
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 111
    :catch_3
    move-exception v3

    .line 112
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_6
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 117
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 118
    :catch_4
    move-exception v3

    goto :goto_1

    .line 109
    :catch_5
    move-exception v3

    .line 110
    .local v3, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 117
    .end local v3    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 120
    :goto_2
    goto :goto_6

    .line 118
    :catch_6
    move-exception v3

    goto :goto_1

    .line 121
    :goto_3
    goto :goto_6

    .line 116
    :goto_4
    nop

    .line 117
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/security/KeyStoreException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 120
    goto :goto_5

    .line 118
    :catch_7
    move-exception v4

    .line 119
    .local v4, "e":Ljava/io/IOException;
    :try_start_b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 120
    .end local v4    # "e":Ljava/io/IOException;
    :goto_5
    throw v3

    .line 123
    :cond_2
    :goto_6
    const-string v3, "X509"

    invoke-static {v3}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v3

    .line 124
    .local v3, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    iget-object v4, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mClientPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 125
    invoke-virtual {v3}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    monitor-exit p0

    return-object v4

    .line 91
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    .end local v2    # "ksIn":Ljava/io/InputStream;
    .end local v3    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_1
    move-exception p1

    goto :goto_9

    .line 132
    .restart local p1    # "context":Landroid/content/Context;
    :catch_8
    move-exception v1

    .line 133
    .local v1, "e":Ljava/security/UnrecoverableKeyException;
    :try_start_c
    invoke-virtual {v1}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/UnrecoverableKeyException;
    goto :goto_8

    .line 130
    :catch_9
    move-exception v1

    .line 131
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_7

    .line 128
    :catch_a
    move-exception v1

    .line 129
    .local v1, "e":Ljava/security/KeyStoreException;
    invoke-virtual {v1}, Ljava/security/KeyStoreException;->printStackTrace()V

    .end local v1    # "e":Ljava/security/KeyStoreException;
    goto :goto_7

    .line 126
    :catch_b
    move-exception v1

    .line 127
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 134
    .end local v1    # "e":Ljava/io/IOException;
    :goto_7
    nop

    .line 136
    :goto_8
    monitor-exit p0

    return-object v0

    .line 91
    .end local p1    # "context":Landroid/content/Context;
    :goto_9
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/model/security/CertVerifyModel;
    throw p1
.end method

.method private getTLS2SocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 141
    :try_start_0
    const-string v0, "TLSv1.2"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 142
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    new-instance v1, Lcom/xiaopeng/factory/model/security/CertVerifyModel$CompositeX509TrustManager;

    iget-object v2, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mRootCertPath:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/factory/model/security/CertVerifyModel$CompositeX509TrustManager;-><init>(Lcom/xiaopeng/factory/model/security/CertVerifyModel;Ljava/lang/String;)V

    .line 143
    .local v1, "trustManager":Lcom/xiaopeng/factory/model/security/CertVerifyModel$CompositeX509TrustManager;
    invoke-virtual {v1}, Lcom/xiaopeng/factory/model/security/CertVerifyModel$CompositeX509TrustManager;->isHasValidCert()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    const-string v2, "CertVerifyModel"

    const-string v3, "getTLS2SocketFactory trustManager has no valid cert"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 147
    .local v2, "ts":[Ljavax/net/ssl/TrustManager;
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->getKeyManagers(Landroid/content/Context;)[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v3, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 149
    new-instance v3, Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/xiaopeng/lib/http/tls/SSLHelper$TLS2SocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 152
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v1    # "trustManager":Lcom/xiaopeng/factory/model/security/CertVerifyModel$CompositeX509TrustManager;
    .end local v2    # "ts":[Ljavax/net/ssl/TrustManager;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/security/KeyManagementException;
    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    .end local v0    # "e":Ljava/security/KeyManagementException;
    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 154
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    nop

    .line 156
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 3

    .line 167
    :try_start_0
    new-instance v0, Lcom/xiaopeng/factory/model/security/CertVerifyModel$CompositeX509TrustManager;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mRootCertPath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/factory/model/security/CertVerifyModel$CompositeX509TrustManager;-><init>(Lcom/xiaopeng/factory/model/security/CertVerifyModel;Ljava/lang/String;)V

    .line 168
    .local v0, "trustManager":Lcom/xiaopeng/factory/model/security/CertVerifyModel$CompositeX509TrustManager;
    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/security/CertVerifyModel$CompositeX509TrustManager;->isHasValidCert()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    const-string v1, "CertVerifyModel"

    const-string v2, "getX509TrustManager trustManager has no valid cert"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    return-object v0

    .line 172
    .end local v0    # "trustManager":Lcom/xiaopeng/factory/model/security/CertVerifyModel$CompositeX509TrustManager;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public verifyCert(Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/ICallback<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 211
    .local p1, "callback":Lcom/xiaopeng/lib/http/ICallback;, "Lcom/xiaopeng/lib/http/ICallback<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mVerifyUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    .line 212
    .local v0, "request":Lokhttp3/Request;
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->buildOkHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/factory/model/security/CertVerifyModel$1;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/factory/model/security/CertVerifyModel$1;-><init>(Lcom/xiaopeng/factory/model/security/CertVerifyModel;Lcom/xiaopeng/lib/http/ICallback;)V

    invoke-interface {v1, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 229
    return-void
.end method

.method public verifyCert()Z
    .locals 5

    .line 197
    const/4 v0, 0x0

    .line 199
    .local v0, "res":Z
    :try_start_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->mVerifyUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 200
    .local v1, "request":Lokhttp3/Request;
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/xiaopeng/factory/model/security/CertVerifyModel;->buildOkHttpClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v2

    .line 201
    .local v2, "response":Lokhttp3/Response;
    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 206
    .end local v1    # "request":Lokhttp3/Request;
    .end local v2    # "response":Lokhttp3/Response;
    :cond_0
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return v0
.end method
