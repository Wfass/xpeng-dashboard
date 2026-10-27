.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;
.super Ljava/lang/Object;
.source "RemoteAwsStorageImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mApplication:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createUploadTask(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;
    .locals 1

    .line 162
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/SimpleAwsUploadTask;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private doPreCheck()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 180
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isExceedTrafficQuota()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    return-void

    .line 181
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseRejectCount()V

    .line 182
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v1, 0x601

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v0

    .line 177
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

    .line 157
    new-instance p3, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v0, 0x401

    invoke-direct {p3, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    invoke-interface {p4, p1, p2, p3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;->onFailure(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 159
    return-void
.end method

.method public downloadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    .locals 1

    .line 171
    new-instance p3, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v0, 0x501

    invoke-direct {p3, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    invoke-interface {p4, p1, p2, p3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;->onFailure(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V

    .line 173
    return-void
.end method

.method public initWithCategoryAndContext(Landroid/app/Application;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->initWithContext(Landroid/app/Application;)V

    .line 34
    return-void
.end method

.method public initWithContext(Landroid/app/Application;)V
    .locals 2

    .line 43
    nop

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 45
    return-void

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->mApplication:Landroid/app/Application;

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->mApplication:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->setApplicationContext(Landroid/app/Application;)V

    .line 49
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->mApplication:Landroid/app/Application;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->init(Landroid/content/Context;)V

    .line 50
    const-class p1, Lcom/xiaopeng/datalog/a;

    new-instance v0, Lcom/xiaopeng/datalog/a;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/xiaopeng/datalog/a;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 51
    return-void
.end method

.method public needCertified(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    return-void
.end method

.method public uploadWithCallback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->doPreCheck()V

    .line 72
    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->get(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getRootName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->createUploadTask(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 74
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->module(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 75
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->d(Ljava/lang/Runnable;)V

    .line 79
    return-void
.end method

.method public uploadWithCallback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;Ljava/util/Map;)V
    .locals 0
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

    .line 96
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->doPreCheck()V

    .line 97
    invoke-static {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->get(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;->getRootName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->createUploadTask(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 99
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->module(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 100
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 101
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 102
    invoke-virtual {p1, p5}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->remoteCallbackParams(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 104
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->d(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public uploadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->doPreCheck()V

    .line 119
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->createUploadTask(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 120
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 121
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 124
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->d(Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method public uploadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;Ljava/util/Map;)V
    .locals 0
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

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->doPreCheck()V

    .line 143
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/RemoteAwsStorageImpl;->createUploadTask(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 144
    invoke-virtual {p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 145
    invoke-virtual {p1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 146
    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 147
    invoke-virtual {p1, p5}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->remoteCallbackParams(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/aws/BaseAwsTask;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->d(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method
