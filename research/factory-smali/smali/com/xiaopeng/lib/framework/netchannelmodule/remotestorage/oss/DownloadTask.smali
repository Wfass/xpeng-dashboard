.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;
    }
.end annotation


# instance fields
.field private final SUCCESS_CODE:I

.field private final TAG:Ljava/lang/String;

.field private final UNKNOWN_LENGTH:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V
    .locals 1
    .param p1, "bucket"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V

    .line 28
    const-string v0, "NetChannel-DownloadTask"

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->TAG:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->SUCCESS_CODE:I

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->UNKNOWN_LENGTH:I

    .line 34
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->createFileAsNeeded()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->writeContentToFile(Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;
    .param p1, "x1"    # Lcom/alibaba/sdk/android/oss/OSS;

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->downloadFile(Lcom/alibaba/sdk/android/oss/OSS;)V

    return-void
.end method

.method private closeStream(Ljava/io/Closeable;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/Closeable;

    .line 124
    if-eqz p1, :cond_0

    .line 126
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "NetChannel-DownloadTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close stream: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private createFileAsNeeded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "localFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/FileUtils;->deleteFile(Ljava/lang/String;)V

    .line 140
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 141
    .local v1, "parent":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t create dir: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 146
    return-void
.end method

.method private downloadFile(Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 3
    .param p1, "oss"    # Lcom/alibaba/sdk/android/oss/OSS;

    .line 49
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->bucketRootName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->mRemoteObjectKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;)V

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/OSS;->asyncGetObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    .line 85
    return-void
.end method

.method private writeContentToFile(Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)I
    .locals 13
    .param p1, "result"    # Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "REPLACE":Z
    const/4 v1, 0x0

    .line 90
    .local v1, "errorCode":I
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "localFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 93
    .local v3, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 95
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    const/16 v5, 0x1000

    :try_start_0
    new-array v5, v5, [B

    .line 97
    .local v5, "contents":[B
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getObjectContent()Ljava/io/InputStream;

    move-result-object v6

    move-object v3, v6

    .line 98
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v4, v6

    .line 101
    :goto_0
    array-length v6, v5

    invoke-virtual {v3, v5, v7, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    move v8, v6

    .local v8, "readLength":I
    if-lez v6, :cond_0

    .line 102
    invoke-virtual {v4, v5, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 103
    iget-wide v9, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->mLocalFileSize:J

    int-to-long v11, v8

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->mLocalFileSize:J

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v5    # "contents":[B
    .end local v8    # "readLength":I
    :goto_1
    invoke-direct {p0, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->closeStream(Ljava/io/Closeable;)V

    .line 111
    invoke-direct {p0, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->closeStream(Ljava/io/Closeable;)V

    .line 112
    goto :goto_2

    .line 110
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 106
    :catch_0
    move-exception v5

    .line 107
    .local v5, "exception":Ljava/io/IOException;
    const/16 v1, 0x501

    .line 108
    :try_start_1
    const-string v6, "NetChannel-DownloadTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to download file:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v5    # "exception":Ljava/io/IOException;
    goto :goto_1

    .line 114
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getContentLength()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    iget-wide v5, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->mLocalFileSize:J

    .line 115
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getContentLength()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 116
    const-string v5, "NetChannel-DownloadTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not download completed. Expected:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getContentLength()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", but actual:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->mLocalFileSize:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    const/16 v1, 0x502

    .line 120
    :cond_1
    return v1

    .line 110
    :goto_3
    invoke-direct {p0, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->closeStream(Ljava/io/Closeable;)V

    .line 111
    invoke-direct {p0, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->closeStream(Ljava/io/Closeable;)V

    .line 112
    throw v5
.end method


# virtual methods
.method public bridge synthetic build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 38
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->mLocalFileSize:J

    .line 40
    return-object p0
.end method

.method public performRealTask()V
    .locals 3

    .line 45
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$FutureTaskCallback;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask$1;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->getTokenWithCallback(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;)V

    .line 46
    return-void
.end method
