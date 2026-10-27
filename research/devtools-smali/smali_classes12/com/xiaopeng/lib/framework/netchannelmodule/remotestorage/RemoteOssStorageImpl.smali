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


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 1

    .line 200
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SimpleUploadTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V

    return-object v0
.end method

.method private doPreCheck()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 232
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isExceedTrafficQuota()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 233
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseRejectCount()V

    .line 234
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v1, 0x601

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v0

    .line 229
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public appendWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;[BLcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 179
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->doPreCheck()V

    .line 181
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;-><init>(Ljava/lang/String;)V

    .line 182
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 183
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 184
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mCertified:Z

    .line 185
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 186
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 187
    move-object p2, p1

    check-cast p2, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;

    invoke-virtual {p2, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;->append([B)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/AppendableTask;

    .line 189
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->d(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method public downloadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->doPreCheck()V

    .line 216
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;-><init>(Ljava/lang/String;)V

    .line 217
    new-instance p1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)V

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 218
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/DownloadTask;->application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 219
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 220
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 221
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mCertified:Z

    .line 222
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 224
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->d(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method public initWithCategoryAndContext(Landroid/app/Application;)V
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->initWithContext(Landroid/app/Application;)V

    .line 42
    return-void
.end method

.method public initWithContext(Landroid/app/Application;)V
    .locals 2

    .line 51
    nop

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 53
    return-void

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->setApplicationContext(Landroid/app/Application;)V

    .line 58
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->init(Landroid/content/Context;)V

    .line 62
    const-class p1, Lcom/xiaopeng/datalog/a;

    new-instance v0, Lcom/xiaopeng/datalog/a;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/xiaopeng/datalog/a;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 63
    return-void
.end method

.method public needCertified(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mCertified:Z

    .line 73
    return-void
.end method

.method public uploadWithCallback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->doPreCheck()V

    .line 88
    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->get(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->createUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 90
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 91
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->module(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 92
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 93
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mCertified:Z

    .line 94
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->d(Ljava/lang/Runnable;)V

    .line 97
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->doPreCheck()V

    .line 113
    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->get(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    move-result-object p1

    .line 114
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->createUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 115
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 116
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->module(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 117
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 118
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mCertified:Z

    .line 119
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 120
    invoke-virtual {p1, p5}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteCallbackParams(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 122
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->d(Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method public uploadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->doPreCheck()V

    .line 138
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->createUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 140
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 141
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 142
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 143
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mCertified:Z

    .line 144
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 146
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->d(Ljava/lang/Runnable;)V

    .line 147
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->doPreCheck()V

    .line 164
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->createUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 166
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 167
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 168
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 169
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    iget-boolean p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteOssStorageImpl;->mCertified:Z

    .line 170
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 171
    invoke-virtual {p1, p5}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteCallbackParams(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object p1

    .line 173
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->d(Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method
