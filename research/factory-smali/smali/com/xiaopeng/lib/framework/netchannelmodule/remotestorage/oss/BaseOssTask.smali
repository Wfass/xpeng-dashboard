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

.field protected mLocalFilePath:Ljava/lang/String;

.field protected mLocalFileSize:J

.field private mModuleName:Ljava/lang/String;

.field private mRemoteFolder:Ljava/lang/String;

.field protected mRemoteObjectKey:Ljava/lang/String;

.field protected mRemoteUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->KEY:[B

    .line 62
    const/16 v0, 0xb

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
    .locals 0
    .param p1, "bucket"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    .line 83
    return-void
.end method

.method private getCustomOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .line 234
    move-object/from16 v0, p0

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->ENCRYPT_PASSWORD:[B

    sget-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->KEY:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/util/EncryptionUtil;->decrypt([B[B)[B

    move-result-object v1

    .line 235
    .local v1, "decryptData":[B
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 238
    .local v2, "password":Ljava/lang/String;
    iget-object v3, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xiaopeng/lib/framework/netchannelmodule/R$raw;->client:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 239
    .local v3, "pfxStream":Ljava/io/InputStream;
    const-string v4, "PKCS12"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 240
    .local v4, "keyStore":Ljava/security/KeyStore;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 242
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v5

    .line 243
    .local v5, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 246
    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v7, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mApplication:Landroid/app/Application;

    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/xiaopeng/lib/framework/netchannelmodule/R$raw;->ca:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 247
    .local v6, "caInput":Ljava/io/InputStream;
    const-string v7, "X.509"

    invoke-static {v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    .line 248
    .local v7, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v7, v6}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v8

    .line 249
    .local v8, "caCertificates":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/Certificate;>;"
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 253
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    .line 254
    .local v9, "caKeyStore":Ljava/security/KeyStore;
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 255
    const/4 v10, 0x0

    .line 256
    .local v10, "index":I
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/security/cert/Certificate;

    .line 257
    .local v12, "caCertificate":Ljava/security/cert/Certificate;
    add-int/lit8 v13, v10, 0x1

    .local v13, "index":I
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 258
    .local v10, "certificateAlias":Ljava/lang/String;
    invoke-virtual {v9, v10, v12}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 259
    .end local v10    # "certificateAlias":Ljava/lang/String;
    .end local v12    # "caCertificate":Ljava/security/cert/Certificate;
    nop

    .line 256
    move v10, v13

    goto :goto_0

    .line 261
    .end local v13    # "index":I
    .local v10, "index":I
    :cond_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v11

    .line 262
    .local v11, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v11, v9}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 265
    const-string v12, "TLSv1.2"

    invoke-static {v12}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v12

    .line 266
    .local v12, "sslContext":Ljavax/net/ssl/SSLContext;
    invoke-virtual {v5}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v13

    invoke-virtual {v11}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v14

    new-instance v15, Ljava/security/SecureRandom;

    invoke-direct {v15}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v12, v13, v14, v15}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 269
    new-instance v13, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v13}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 270
    invoke-virtual {v12}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v14

    invoke-virtual {v11}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    check-cast v15, Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v13, v14, v15}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v13

    new-instance v14, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask$1;

    invoke-direct {v14, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;)V

    .line 271
    invoke-virtual {v13, v14}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v13

    .line 281
    invoke-virtual {v13}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v13

    .line 282
    .local v13, "client":Lokhttp3/OkHttpClient;
    return-object v13

    .line 250
    .end local v9    # "caKeyStore":Ljava/security/KeyStore;
    .end local v10    # "index":I
    .end local v11    # "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    .end local v12    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v13    # "client":Lokhttp3/OkHttpClient;
    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "The CA certificates are empty"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method


# virtual methods
.method public application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 0
    .param p1, "application"    # Landroid/app/Application;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mApplication:Landroid/app/Application;

    .line 87
    return-object p0
.end method

.method protected bucketMaxObjectSize()J
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getMaxObjectSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected bucketRootName()Ljava/lang/String;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getRootName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteFolder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mModuleName:Ljava/lang/String;

    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v0

    .line 146
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteFolder:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mModuleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->generateObjectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteObjectKey:Ljava/lang/String;

    goto :goto_1

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteFolder:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 152
    :goto_1
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCertified:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getPrivateUrl()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteObjectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :goto_3
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteUrl:Ljava/lang/String;

    .line 153
    return-object p0
.end method

.method public callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 0
    .param p1, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    .line 115
    return-object p0
.end method

.method protected declared-synchronized createOssClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/OSS;
    .locals 6
    .param p1, "accessKeyId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "accessKeySecret"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "securityToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 192
    :try_start_0
    new-instance v0, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/sdk/android/oss/common/auth/OSSStsTokenCredentialProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .local v0, "ossCredentialProvider":Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssClient:Lcom/alibaba/sdk/android/oss/OSS;

    if-nez v1, :cond_1

    .line 196
    new-instance v1, Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;-><init>()V

    .line 198
    .local v1, "configuration":Lcom/alibaba/sdk/android/oss/ClientConfiguration;
    const v2, 0xea60

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setConnectionTimeout(I)V

    .line 200
    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setSocketTimeout(I)V

    .line 202
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxConcurrentRequest(I)V

    .line 204
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setMaxErrorRetry(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :try_start_1
    iget-boolean v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCertified:Z

    if-eqz v2, :cond_0

    .line 208
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->getCustomOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->setOkHttpClient(Lokhttp3/OkHttpClient;)V

    .line 209
    new-instance v2, Lcom/alibaba/sdk/android/oss/OSSClient;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mApplication:Landroid/app/Application;

    iget-object v4, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mBucket:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-virtual {v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getPrivateUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    sput-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssClient:Lcom/alibaba/sdk/android/oss/OSS;

    goto :goto_0

    .line 211
    :cond_0
    new-instance v2, Lcom/alibaba/sdk/android/oss/OSSClient;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mApplication:Landroid/app/Application;

    sget-object v4, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->END_POINT:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    sput-object v2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssClient:Lcom/alibaba/sdk/android/oss/OSS;
    :try_end_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :goto_0
    goto/16 :goto_1

    .line 223
    :catch_0
    move-exception v2

    .line 224
    .local v2, "e":Ljava/security/KeyManagementException;
    :try_start_2
    const-string v3, "NetChannel-BaseOssTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createOssClient failed, KeyManagementException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v1    # "configuration":Lcom/alibaba/sdk/android/oss/ClientConfiguration;
    .end local v2    # "e":Ljava/security/KeyManagementException;
    goto/16 :goto_1

    .line 221
    .restart local v1    # "configuration":Lcom/alibaba/sdk/android/oss/ClientConfiguration;
    :catch_1
    move-exception v2

    .line 222
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "NetChannel-BaseOssTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createOssClient failed, IOException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 219
    :catch_2
    move-exception v2

    .line 220
    .local v2, "e":Ljava/security/KeyStoreException;
    const-string v3, "NetChannel-BaseOssTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createOssClient failed, KeyStoreException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/security/KeyStoreException;
    goto :goto_0

    .line 217
    :catch_3
    move-exception v2

    .line 218
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "NetChannel-BaseOssTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createOssClient failed, NoSuchAlgorithmException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 215
    :catch_4
    move-exception v2

    .line 216
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-string v3, "NetChannel-BaseOssTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createOssClient failed, CertificateException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/security/cert/CertificateException;
    goto/16 :goto_0

    .line 213
    :catch_5
    move-exception v2

    .line 214
    .local v2, "e":Ljava/security/UnrecoverableKeyException;
    const-string v3, "NetChannel-BaseOssTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createOssClient failed, UnrecoverableKeyException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/UnrecoverableKeyException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/security/UnrecoverableKeyException;
    goto/16 :goto_0

    .line 226
    .end local v1    # "configuration":Lcom/alibaba/sdk/android/oss/ClientConfiguration;
    :goto_1
    goto :goto_2

    .line 227
    :cond_1
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssClient:Lcom/alibaba/sdk/android/oss/OSS;

    invoke-interface {v1, v0}, Lcom/alibaba/sdk/android/oss/OSS;->updateCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    .line 230
    :goto_2
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->sOssClient:Lcom/alibaba/sdk/android/oss/OSS;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 191
    .end local v0    # "ossCredentialProvider":Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;
    .end local p1    # "accessKeyId":Ljava/lang/String;
    .end local p2    # "accessKeySecret":Ljava/lang/String;
    .end local p3    # "securityToken":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    throw p1
.end method

.method protected doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
    .locals 3
    .param p1, "exception"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 163
    const-string v0, "NetChannel-BaseOssTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed! Reason is-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mLocalFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;->onFailure(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 168
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;->getReasonCode()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_1

    .line 169
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->clearToken()V

    .line 171
    :cond_1
    return-void
.end method

.method protected doSuccess()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mLocalFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mLocalFilePath:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public module(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteFolder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mModuleName:Ljava/lang/String;

    .line 96
    return-object p0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Remote folder has been assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 0
    .param p1, "openCertification"    # Z

    .line 136
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCertified:Z

    .line 137
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

    .line 125
    .local p1, "remoteCallbackParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCallbackParams:Ljava/util/Map;

    .line 126
    return-object p0
.end method

.method public remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mModuleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteFolder:Ljava/lang/String;

    .line 105
    return-object p0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Module name has been assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public run()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mRemoteUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->mLocalFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;->onStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->performRealTask()V

    .line 291
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseRequestCount()V

    .line 292
    return-void
.end method
