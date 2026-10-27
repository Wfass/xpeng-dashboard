.class public abstract Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
.super Ljava/lang/Object;
.source "BaseOssTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0xea60

.field private static final ENCRYPT_PASSWORD:[B

.field private static final ERROR_FORBIDDEN:I = 0x193

.field private static final KEY:[B

.field private static final MAX_CONCURRENT_REQUEST:I = 0x2

.field private static final MAX_ERROR_RETRY:I = 0x3

.field private static final SOCKET_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "NetChannel-BaseOssTask"

.field private static final XIAOPENG_PRIVATE_DOMAIN:Ljava/lang/String; = "oss.xiaopeng.com"

.field private static sOssClient:Lcom/alibaba/sdk/android/oss/OSS;

.field private static sOssEndpoint:Ljava/lang/String;


# instance fields
.field private mApplication:Landroid/app/Application;

.field private final mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

.field private mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

.field protected mCallbackParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCertified:Z

.field protected mExpireTime:J

.field protected mLocalFilePath:Ljava/lang/String;

.field protected mLocalFileSize:J

.field private mModuleName:Ljava/lang/String;

.field private mRemoteFolder:Ljava/lang/String;

.field protected mRemoteObjectKey:Ljava/lang/String;

.field protected mRemoteUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    .line 63
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->KEY:[B

    const/16 v0, 0xb

    .line 64
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->ENCRYPT_PASSWORD:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x7bt
        0x36t
        0x5at
        0x38t
        0x17t
        0x4at
        0x59t
        0x47t
        0x37t
        0x4et
        0x41t
        0x28t
        0x64t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3t
        0x5ft
        0x3bt
        0x57t
        0x67t
        0x2ft
        0x37t
        0x20t
        0x58t
        0x3dt
        0x32t
    .end array-data
.end method

.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 81
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mExpireTime:J

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    return-void
.end method

.method private getCustomOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 7

    .line 275
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->ENCRYPT_PASSWORD:[B

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->KEY:[B

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/util/EncryptionUtil;->decrypt([B[B)[B

    move-result-object v0

    .line 276
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/xiaopeng/lib/framework/netchannelmodule/R$raw;->client:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const-string v2, "PKCS12"

    .line 280
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 281
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 283
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 284
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 287
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mApplication:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/lib/framework/netchannelmodule/R$raw;->ca:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v2, "X.509"

    .line 288
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 289
    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1

    .line 290
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 294
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const/4 v3, 0x0

    .line 295
    invoke-virtual {v2, v3, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 297
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    add-int/lit8 v6, v4, 0x1

    .line 298
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-virtual {v2, v4, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    move v4, v6

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 303
    invoke-virtual {v1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v2, "TLSv1.2"

    .line 306
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 307
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 310
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 311
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    aget-object v1, v1, v3

    check-cast v1, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v2, v1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;)V

    .line 312
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0

    .line 291
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The CA certificates are empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDefaultClientConfiguration()Lcom/alibaba/sdk/android/oss/ClientConfiguration;
    .locals 2

    .line 261
    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    const v1, 0xea60

    .line 263
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setConnectionTimeout(I)V

    .line 265
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setSocketTimeout(I)V

    const/4 v1, 0x2

    .line 267
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxConcurrentRequest(I)V

    const/4 v1, 0x3

    .line 269
    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxErrorRetry(I)V

    return-object v0
.end method

.method private getRemoteUrlWithExpireTime()Ljava/lang/String;
    .locals 5

    const-string v0, "NetChannel-BaseOssTask"

    .line 327
    iget-wide v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mExpireTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteUrl:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 332
    new-instance v2, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getRootName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteFolder:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-wide v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mExpireTime:J

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->setExpiration(J)V

    .line 334
    sget-object v3, Lcom/alibaba/sdk/android/oss/common/HttpMethod;->GET:Lcom/alibaba/sdk/android/oss/common/HttpMethod;

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;->setMethod(Lcom/alibaba/sdk/android/oss/common/HttpMethod;)V

    .line 337
    :try_start_0
    sget-object v3, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssClient:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v3, v2}, Lcom/alibaba/sdk/android/oss/OSS;->presignConstrainedObjectURL(Lcom/alibaba/sdk/android/oss/model/GeneratePresignedUrlRequest;)Ljava/lang/String;

    move-result-object v1

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRemoteUrlWithExpireTime: temp remoteUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to generate presigned url, reason is-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mApplication:Landroid/app/Application;

    return-object p0
.end method

.method protected bucketMaxObjectSize()J
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getMaxObjectSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected bucketRootName()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getRootName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteFolder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mModuleName:Ljava/lang/String;

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v0

    .line 159
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteFolder:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->generateObjectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteObjectKey:Ljava/lang/String;

    goto :goto_1

    .line 162
    :cond_2
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 165
    :goto_1
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCertified:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getPrivateUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteObjectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteUrl:Ljava/lang/String;

    return-object p0
.end method

.method public callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    return-object p0
.end method

.method protected declared-synchronized createOssClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/OSS;
    .locals 2

    monitor-enter p0

    .line 209
    :try_start_0
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-boolean p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCertified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 215
    :try_start_1
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->getDefaultClientConfiguration()Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    move-result-object p1

    .line 217
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->getCustomOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setOkHttpClient(Lokhttp3/OkHttpClient;)V

    .line 220
    sget-object p2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssEndpoint:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 221
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getPrivateUrl()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssEndpoint:Ljava/lang/String;

    .line 222
    new-instance p2, Lcom/alibaba/sdk/android/oss/OSSClient;

    iget-object p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getPrivateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v1, v0, p1}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    sput-object p2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssClient:Lcom/alibaba/sdk/android/oss/OSS;

    goto/16 :goto_0

    .line 225
    :cond_0
    sget-object p2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssEndpoint:Ljava/lang/String;

    iget-object p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getPrivateUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 226
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssClient:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/oss/OSS;->updateCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    goto/16 :goto_0

    .line 228
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getPrivateUrl()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssEndpoint:Ljava/lang/String;

    .line 229
    new-instance p2, Lcom/alibaba/sdk/android/oss/OSSClient;

    iget-object p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mApplication:Landroid/app/Application;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getPrivateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p3, v1, v0, p1}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    sput-object p2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssClient:Lcom/alibaba/sdk/android/oss/OSS;
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "NetChannel-BaseOssTask"

    .line 243
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createOssClient failed, KeyManagementException:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception p1

    const-string p2, "NetChannel-BaseOssTask"

    .line 241
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createOssClient failed, IOException:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    const-string p2, "NetChannel-BaseOssTask"

    .line 239
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createOssClient failed, KeyStoreException:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception p1

    const-string p2, "NetChannel-BaseOssTask"

    .line 237
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createOssClient failed, NoSuchAlgorithmException:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_4
    move-exception p1

    const-string p2, "NetChannel-BaseOssTask"

    .line 235
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createOssClient failed, CertificateException:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_5
    move-exception p1

    const-string p2, "NetChannel-BaseOssTask"

    .line 233
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createOssClient failed, UnrecoverableKeyException:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/UnrecoverableKeyException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    :goto_0
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssClient:Lcom/alibaba/sdk/android/oss/OSS;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 250
    :cond_2
    :try_start_3
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssClient:Lcom/alibaba/sdk/android/oss/OSS;

    if-nez p1, :cond_3

    .line 251
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->getDefaultClientConfiguration()Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    move-result-object p1

    .line 252
    new-instance p2, Lcom/alibaba/sdk/android/oss/OSSClient;

    iget-object p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mApplication:Landroid/app/Application;

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->END_POINT:Ljava/lang/String;

    invoke-direct {p2, p3, v1, v0, p1}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    sput-object p2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssClient:Lcom/alibaba/sdk/android/oss/OSS;

    goto :goto_1

    .line 254
    :cond_3
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssClient:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {p1, v0}, Lcom/alibaba/sdk/android/oss/OSS;->updateCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    .line 257
    :goto_1
    sget-object p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssClient:Lcom/alibaba/sdk/android/oss/OSS;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
    .locals 3

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed! Reason is-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetChannel-BaseOssTask"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mLocalFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;->onFailure(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 185
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;->getReasonCode()I

    move-result p1

    const/16 v0, 0x193

    if-ne p1, v0, :cond_1

    .line 186
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->clearToken()V

    :cond_1
    return-void
.end method

.method protected doSuccess()V
    .locals 4

    .line 170
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mExpireTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->getRemoteUrlWithExpireTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteUrl:Ljava/lang/String;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    if-eqz v0, :cond_1

    .line 175
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mLocalFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mLocalFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public module(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteFolder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mModuleName:Ljava/lang/String;

    return-object p0

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Remote folder has been assigned."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCertified:Z

    return-object p0
.end method

.method abstract performRealTask()V
.end method

.method public remoteCallbackParams(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCallbackParams:Ljava/util/Map;

    return-object p0
.end method

.method public remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mModuleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteFolder:Ljava/lang/String;

    return-object p0

    .line 106
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Module name has been assigned."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public run()V
    .locals 3

    .line 348
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mLocalFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;->onStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->performRealTask()V

    .line 352
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseRequestCount()V

    return-void
.end method

.method public setTempUrlExpireTime(J)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 0

    .line 149
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mExpireTime:J

    return-object p0
.end method
