.class public Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;
.super Ljava/lang/Object;
.source "SecureRemoteOssStorageImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/ISecureRemoteStorage;


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mCertified:Z

.field private mExpireTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mExpireTime:J

    return-void
.end method

.method private createUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    .locals 1
    .param p1, "bucket"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;
    .param p2, "policyType"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    .line 115
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SecureSimpleUploadTask;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/SecureSimpleUploadTask;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;)V

    return-object v0
.end method

.method private doPreCheck()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->isExceedTrafficQuota()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->increaseRejectCount()V

    .line 125
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/16 v1, 0x601

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v0

    .line 120
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/exception/StorageExceptionImpl;-><init>(I)V

    throw v0
.end method

.method private getFinalPolicyType(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;
    .locals 4
    .param p1, "policyType"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    .line 130
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mExpireTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 131
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->BOTH:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    return-object v0

    .line 133
    :cond_0
    return-object p1
.end method


# virtual methods
.method public appendWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;[BLcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "remoteFolder"    # Ljava/lang/String;
    .param p3, "uploadContent"    # [B
    .param p4, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public downloadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "remoteFolder"    # Ljava/lang/String;
    .param p3, "localFile"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initWithContext(Landroid/app/Application;)V
    .locals 3
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 39
    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/common/GlobalConfig;->setApplicationContext(Landroid/app/Application;)V

    .line 44
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/statistic/StorageCounter;->init(Landroid/content/Context;)V

    .line 48
    const-class v0, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    new-instance v1, Lcom/xiaopeng/datalog/DataLogModuleEntry;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/xiaopeng/datalog/DataLogModuleEntry;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/module/Module;->register(Ljava/lang/Class;Lcom/xiaopeng/lib/framework/module/IModuleEntry;)V

    .line 49
    return-void
.end method

.method public needCertified(Z)V
    .locals 0
    .param p1, "openCertification"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mCertified:Z

    .line 54
    return-void
.end method

.method public setTempUrlExpireTime(J)V
    .locals 0
    .param p1, "expireTime"    # J

    .line 58
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mExpireTime:J

    .line 59
    return-void
.end method

.method public uploadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "remoteFolder"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->doPreCheck()V

    .line 66
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "bucket":Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->PUT:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->getFinalPolicyType(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->createUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 68
    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    .line 69
    invoke-virtual {v1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    .line 70
    invoke-virtual {v1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    .line 71
    invoke-virtual {v1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mCertified:Z

    .line 72
    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mExpireTime:J

    .line 73
    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->setTempUrlExpireTime(J)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    .line 75
    .local v1, "task":Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public uploadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;Ljava/util/Map;)V
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "remoteFolder"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;
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

    .line 81
    .local p5, "remoteCallbackParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->doPreCheck()V

    .line 83
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "bucket":Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;
    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;->PUT:Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->getFinalPolicyType(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->createUploadTask(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/token/PolicyType;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mApplication:Landroid/app/Application;

    .line 85
    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->application(Landroid/app/Application;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    .line 86
    invoke-virtual {v1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteFolder(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    .line 87
    invoke-virtual {v1, p3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->filePath(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    .line 88
    invoke-virtual {v1, p4}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->callback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mCertified:Z

    .line 89
    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->needCertified(Z)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/SecureRemoteOssStorageImpl;->mExpireTime:J

    .line 90
    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->setTempUrlExpireTime(J)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    .line 91
    invoke-virtual {v1, p5}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->remoteCallbackParams(Ljava/util/Map;)Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;->build()Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;

    move-result-object v1

    .line 93
    .local v1, "task":Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/BaseOssTask;
    invoke-static {v1}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method
