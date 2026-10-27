.class public Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;
.super Ljava/lang/Object;
.source "ExtensionRequestOperation.java"


# static fields
.field private static executorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$1;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$1;-><init>()V

    .line 38
    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;)V
    .locals 0
    .param p1, "apiOperation"    # Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    .line 48
    return-void
.end method

.method private setCRC64(Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/OSSRequest;

    .line 159
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->NULL:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    .line 160
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getConf()Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->isCheckCRC64()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->YES:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->NO:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    .line 161
    .local v0, "crc64":Ljava/lang/Enum;
    :goto_0
    invoke-virtual {p1, v0}, Lcom/alibaba/sdk/android/oss/model/OSSRequest;->setCRC64(Ljava/lang/Enum;)V

    .line 162
    return-void
.end method


# virtual methods
.method public abortResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;)V
    .locals 10
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->setCRC64(Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    .line 69
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->isEmptyString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "uploadFilePath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 72
    .local v1, "fileMd5":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 73
    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getUploadUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 77
    .local v2, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str(Ljava/io/FileDescriptor;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 79
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 84
    .end local v2    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getPartSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 84
    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str([B)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "recordFileName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "recordPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v4, "recordFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 90
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 91
    .local v5, "br":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "uploadId":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[initUploadId] - Found record file, uploadid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logDebug(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getCRC64()Ljava/lang/Enum;

    move-result-object v7

    sget-object v8, Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;->YES:Lcom/alibaba/sdk/android/oss/model/OSSRequest$CRC64Config;

    if-ne v7, v8, :cond_2

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "oss"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 98
    .local v7, "filePath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 100
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 104
    .end local v7    # "filePath":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    :cond_2
    new-instance v7, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;

    .line 105
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9, v6}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v7, "abort":Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;
    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    .line 109
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v6    # "uploadId":Ljava/lang/String;
    .end local v7    # "abort":Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;
    :cond_3
    nop

    .line 110
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .end local v0    # "uploadFilePath":Ljava/lang/String;
    .end local v1    # "fileMd5":Ljava/lang/String;
    .end local v2    # "recordFileName":Ljava/lang/String;
    .end local v3    # "recordPath":Ljava/lang/String;
    .end local v4    # "recordFile":Ljava/io/File;
    goto :goto_1

    .line 79
    .restart local v0    # "uploadFilePath":Ljava/lang/String;
    .restart local v1    # "fileMd5":Ljava/lang/String;
    .local v2, "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_4

    .line 80
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 82
    :cond_4
    throw v3

    .line 113
    .end local v0    # "uploadFilePath":Ljava/lang/String;
    .end local v1    # "fileMd5":Ljava/lang/String;
    .end local v2    # "parcelFileDescriptor":Landroid/os/ParcelFileDescriptor;
    :cond_5
    :goto_1
    return-void
.end method

.method public doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/sdk/android/oss/ClientException;,
            Lcom/alibaba/sdk/android/oss/ServiceException;
        }
    .end annotation

    .line 54
    :try_start_0
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v0, "head":Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;
    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;
    :try_end_0
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    const/4 v1, 0x1

    return v1

    .line 57
    .end local v0    # "head":Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lcom/alibaba/sdk/android/oss/ServiceException;
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_0

    .line 59
    const/4 v1, 0x0

    return v1

    .line 61
    :cond_0
    throw v0
.end method

.method public multipartUpload(Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;"
        }
    .end annotation

    .line 143
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->setCRC64(Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    .line 144
    new-instance v0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    .line 145
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    .line 147
    .local v0, "executionContext":Lcom/alibaba/sdk/android/oss/network/ExecutionContext;, "Lcom/alibaba/sdk/android/oss/network/ExecutionContext<Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;>;"
    sget-object v1, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-direct {v2, v3, p1, p2, v0}, Lcom/alibaba/sdk/android/oss/internal/MultipartUploadTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/model/MultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v1

    return-object v1
.end method

.method public resumableDownload(Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableDownloadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableDownloadResult;",
            ">;"
        }
    .end annotation

    .line 153
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;Lcom/alibaba/sdk/android/oss/model/ResumableDownloadResult;>;"
    new-instance v0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    .line 154
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    .line 155
    .local v0, "executionContext":Lcom/alibaba/sdk/android/oss/network/ExecutionContext;, "Lcom/alibaba/sdk/android/oss/network/ExecutionContext<Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;Lcom/alibaba/sdk/android/oss/model/ResumableDownloadResult;>;"
    sget-object v1, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-direct {v2, v3, p1, p2, v0}, Lcom/alibaba/sdk/android/oss/internal/ResumableDownloadTask;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;Lcom/alibaba/sdk/android/oss/model/ResumableDownloadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v1

    return-object v1
.end method

.method public resumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 4
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;"
        }
    .end annotation

    .line 118
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->setCRC64(Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    .line 119
    new-instance v0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    .line 120
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    .line 122
    .local v0, "executionContext":Lcom/alibaba/sdk/android/oss/network/ExecutionContext;, "Lcom/alibaba/sdk/android/oss/network/ExecutionContext<Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;>;"
    sget-object v1, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-direct {v2, p1, p2, v0, v3}, Lcom/alibaba/sdk/android/oss/internal/ResumableUploadTask;-><init>(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v1

    return-object v1
.end method

.method public sequenceUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 3
    .param p1, "request"    # Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;"
        }
    .end annotation

    .line 129
    .local p2, "completedCallback":Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;, "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->setCRC64(Lcom/alibaba/sdk/android/oss/model/OSSRequest;)V

    .line 130
    new-instance v0, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    .line 131
    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getInnerClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;-><init>(Lokhttp3/OkHttpClient;Lcom/alibaba/sdk/android/oss/model/OSSRequest;Landroid/content/Context;)V

    .line 133
    .local v0, "executionContext":Lcom/alibaba/sdk/android/oss/network/ExecutionContext;, "Lcom/alibaba/sdk/android/oss/network/ExecutionContext<Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;>;"
    new-instance v1, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->apiOperation:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;-><init>(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;)V

    .line 136
    .local v1, "task":Lcom/alibaba/sdk/android/oss/internal/SequenceUploadTask;
    sget-object v2, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->wrapRequestTask(Ljava/util/concurrent/Future;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v2

    return-object v2
.end method
