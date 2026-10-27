.class public abstract Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;
.super Ljava/lang/Object;
.source "BaseAwsTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final CAR_APP_SECRET:Ljava/lang/String; = "B638C588DCAD7C1A43E6FB"

.field protected static final CONNECTION_TIMEOUT:I = 0xea60

.field protected static final DOWNLOAD_HOST:Ljava/lang/String; = "https://fra-xp-log.s3.eu-central-1.amazonaws.com"

.field protected static final ERROR_FORBIDDEN:I = 0x193

.field protected static final MAX_CONCURRENT_REQUEST:I = 0x2

.field protected static final SOCKET_TIMEOUT:I = 0x186a0

.field private static final TAG:Ljava/lang/String; = "NetChannel-BaseAwsTask"


# instance fields
.field private mBucket:Ljava/lang/String;

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

.field private mHttpClient:Lokhttp3/OkHttpClient;

.field protected mLocalFilePath:Ljava/lang/String;

.field protected mLocalFileSize:J

.field private mModuleName:Ljava/lang/String;

.field private mRemoteFolder:Ljava/lang/String;

.field protected mRemoteObjectKey:Ljava/lang/String;

.field protected mRemoteUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mBucket:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteFolder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mModuleName:Ljava/lang/String;

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v0

    .line 102
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteFolder:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mModuleName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->generateObjectKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteObjectKey:Ljava/lang/String;

    goto :goto_1

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteFolder:Ljava/lang/String;

    const-string v1, "//"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteFolder:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteFolder:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteFolder:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteFolder:Ljava/lang/String;

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteFolder:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mBucket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteFolder:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteObjectKey:Ljava/lang/String;

    goto :goto_1

    .line 113
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mBucket:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteFolder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 116
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteObjectKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteObjectKey:Ljava/lang/String;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://fra-xp-log.s3.eu-central-1.amazonaws.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteObjectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteUrl:Ljava/lang/String;

    .line 118
    return-object p0
.end method

.method public callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;
    .locals 0
    .param p1    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    .line 82
    return-object p0
.end method

.method protected declared-synchronized createAwsUploadClient()Lokhttp3/OkHttpClient;
    .locals 5

    monitor-enter p0

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mHttpClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    .line 163
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->setMaxRequests(I)V

    .line 164
    new-instance v1, Lokhttp3/OkHttpClient;

    invoke-direct {v1}, Lokhttp3/OkHttpClient;-><init>()V

    .line 165
    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    const-wide/32 v2, 0xea60

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 166
    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 167
    const-wide/32 v3, 0x186a0

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 168
    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 169
    invoke-static {}, Lcom/xiaopeng/lib/http/c/c;->od()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask$1;

    invoke-direct {v3, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;)V

    invoke-virtual {v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 186
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->dispatcher(Lokhttp3/Dispatcher;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mHttpClient:Lokhttp3/OkHttpClient;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mHttpClient:Lokhttp3/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected doFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
    .locals 3
    .param p1    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 144
    const-string v0, "NetChannel-BaseAwsTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed! Reason is-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mLocalFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;->onFailure(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;->getReasonCode()I

    move-result p1

    const/16 v0, 0x193

    if-ne p1, v0, :cond_1

    .line 150
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->clearToken()V

    .line 152
    :cond_1
    return-void
.end method

.method protected doSuccess()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mLocalFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    return-void
.end method

.method public filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mLocalFilePath:Ljava/lang/String;

    .line 77
    return-object p0
.end method

.method public generateObjectKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mBucket:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->getSystemVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/a;->n(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->ln()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ".zip"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 129
    return-object p1
.end method

.method public module(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteFolder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mModuleName:Ljava/lang/String;

    .line 63
    return-object p0

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Remote folder has been assigned."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method abstract performRealTask()V
.end method

.method public remoteCallbackParams(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;"
        }
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mCallbackParams:Ljava/util/Map;

    .line 93
    return-object p0
.end method

.method public remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mModuleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteFolder:Ljava/lang/String;

    .line 72
    return-object p0

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Module name has been assigned."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public run()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mRemoteUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->mLocalFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;->onStart(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->performRealTask()V

    .line 198
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseRequestCount()V

    .line 199
    return-void
.end method
