.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;
.super Ljava/lang/Object;
.source "RemoteOssStorageImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mCertified:Z

.field private mExpireTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 36
    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mExpireTime:J

    return-void
.end method

.method private createUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 1

    .line 218
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V

    return-object v0
.end method

.method private doPreCheck()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/util/WhiteListHelper;->allowRemoveThreshold(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isExceedTrafficQuota()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 256
    :cond_1
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseRejectCount()V

    .line 257
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v1, 0x601

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v0

    .line 247
    :cond_2
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public appendWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;[BLcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->doPreCheck()V

    .line 199
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;-><init>(Ljava/lang/String;)V

    .line 200
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 201
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 202
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mCertified:Z

    .line 203
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 204
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 205
    move-object p2, p1

    check-cast p2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;

    invoke-virtual {p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->append([B)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;

    .line 207
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public downloadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    .locals 1

    .line 232
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->doPreCheck()V

    .line 234
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;-><init>(Ljava/lang/String;)V

    .line 235
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 236
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 237
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 238
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 239
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mCertified:Z

    .line 240
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 242
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initWithCategoryAndContext(Landroid/app/Application;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->initWithContext(Landroid/app/Application;)V

    return-void
.end method

.method public initWithContext(Landroid/app/Application;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-void

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->setApplicationContext(Landroid/app/Application;)V

    .line 62
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->init(Landroid/content/Context;)V

    .line 66
    const-class p1, Lany;

    new-instance v0, Lany;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lany;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    return-void
.end method

.method public needCertified(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mCertified:Z

    return-void
.end method

.method public setTempUrlExpireTime(J)V
    .locals 0

    .line 86
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mExpireTime:J

    return-void
.end method

.method public uploadWithCallback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->doPreCheck()V

    .line 102
    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->get(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    move-result-object p1

    .line 103
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->createUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 104
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 105
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->module(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 106
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 107
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mCertified:Z

    .line 108
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-wide p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mExpireTime:J

    .line 109
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->setTempUrlExpireTime(J)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 111
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uploadWithCallback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->doPreCheck()V

    .line 128
    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->get(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->createUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 130
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 131
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->module(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 132
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 133
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mCertified:Z

    .line 134
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-wide p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mExpireTime:J

    .line 135
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->setTempUrlExpireTime(J)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 136
    invoke-virtual {p1, p5}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteCallbackParams(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 138
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uploadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    .locals 1

    .line 152
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->doPreCheck()V

    .line 154
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->createUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 156
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 157
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 158
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 159
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mCertified:Z

    .line 160
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-wide p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mExpireTime:J

    .line 161
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->setTempUrlExpireTime(J)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 163
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public uploadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->doPreCheck()V

    .line 181
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->createUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 183
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 184
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 185
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 186
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mCertified:Z

    .line 187
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-wide p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mExpireTime:J

    .line 188
    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->setTempUrlExpireTime(J)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 189
    invoke-virtual {p1, p5}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteCallbackParams(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 191
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->postBackground(Ljava/lang/Runnable;)V

    return-void
.end method
