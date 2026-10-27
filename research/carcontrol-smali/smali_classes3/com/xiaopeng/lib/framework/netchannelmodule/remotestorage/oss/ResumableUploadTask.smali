.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
.source "ResumableUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$FutureTaskCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetChannel-ResumableUploadTask"


# instance fields
.field private final mOssTaskLogFolder:Ljava/lang/String;

.field private mUploadedSize:J


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V
    .locals 2

    .line 39
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mUploadedSize:J

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->initRecordDir()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mOssTaskLogFolder:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/LogFileCleaner;->setLogFileFolder(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->upload2OssByResumable(Lcom/alibaba/sdk/android/oss/OSS;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mUploadedSize:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;J)J
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mUploadedSize:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->executeUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V

    return-void
.end method

.method private executeUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->accessKeyId()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->acessKeySecret()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/Token;->securityToken()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p0, v0, v1, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->createOssClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/OSS;

    move-result-object p1

    .line 65
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$1;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;Lcom/alibaba/sdk/android/oss/OSS;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initRecordDir()Ljava/lang/String;
    .locals 3

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Log/oss_record/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method private upload2OssByResumable(Lcom/alibaba/sdk/android/oss/OSS;)V
    .locals 5

    .line 79
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->bucketRootName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mRemoteObjectKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->initRecordDir()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mCallbackParams:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mCallbackParams:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setCallbackParam(Ljava/util/Map;)V

    .line 84
    :cond_0
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$2;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    .line 92
    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$3;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;)V

    invoke-interface {p1, v0, v1}, Lcom/alibaba/sdk/android/oss/OSS;->asyncResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 52
    invoke-super {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    .line 53
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;->mLocalFileSize:J

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v1, 0x201

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v0
.end method

.method public performRealTask()V
    .locals 3

    .line 47
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$FutureTaskCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$FutureTaskCallback;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/ResumableUploadTask$1;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever;->getTokenWithCallback(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/TokenRetriever$IRetrievingCallback;)V

    return-void
.end method
