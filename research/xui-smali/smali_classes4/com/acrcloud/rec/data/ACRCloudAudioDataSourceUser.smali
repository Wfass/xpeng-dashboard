.class public Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;
.super Ljava/lang/Object;
.source "ACRCloudAudioDataSourceUser.java"

# interfaces
.implements Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private volatile isActive:Z

.field private mACRCloudAudioDataSourceListener:Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;

.field private mAudioQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/acrcloud/rec/ACRCloudConfig;


# direct methods
.method public constructor <init>(Lcom/acrcloud/rec/ACRCloudConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/acrcloud/rec/ACRCloudConfig;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "ACRCloudAudioDataSourceUser"

    iput-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->isActive:Z

    .line 25
    iput-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mACRCloudAudioDataSourceListener:Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;

    .line 28
    iput-object p1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/acrcloud/rec/ACRCloudConfig;Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;)V
    .locals 2
    .param p1, "config"    # Lcom/acrcloud/rec/ACRCloudConfig;
    .param p2, "audioListener"    # Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "ACRCloudAudioDataSourceUser"

    iput-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 23
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->isActive:Z

    .line 25
    iput-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mACRCloudAudioDataSourceListener:Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;

    .line 32
    iput-object p1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 33
    iput-object p2, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mACRCloudAudioDataSourceListener:Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;

    .line 34
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getAudioData()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/acrcloud/rec/utils/ACRCloudException;
        }
    .end annotation

    .line 45
    const/4 v0, 0x0

    .line 47
    .local v0, "buffer":[B
    :try_start_0
    iget-object v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v2, 0xc8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 50
    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public hasAudioData()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/acrcloud/rec/utils/ACRCloudException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v0, v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->reservedRecordBufferMS:I

    if-gtz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 41
    :cond_0
    return-void
.end method

.method public putAudioData([B)Z
    .locals 7
    .param p1, "buffer"    # [B

    .line 62
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 63
    return v0

    .line 66
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 68
    array-length v1, p1

    mul-int/lit16 v1, v1, 0x3e8

    iget-object v2, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v2, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    iget-object v3, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v3, v3, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    mul-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    .line 71
    .local v1, "oneBufferTime":I
    iget-boolean v2, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->isActive:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    iget-object v3, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v3, v3, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->reservedRecordBufferMS:I

    div-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_1

    .line 73
    iget-object v2, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mAudioQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 76
    :cond_1
    iget-boolean v2, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->isActive:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mACRCloudAudioDataSourceListener:Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget-boolean v2, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->isVolumeCallback:Z

    if-eqz v2, :cond_3

    .line 78
    const/16 v2, 0x1f40

    new-array v2, v2, [B

    .line 79
    .local v2, "tBuffer":[B
    const/16 v3, 0x1f40

    .line 80
    .local v3, "readLen":I
    array-length v4, p1

    if-le v3, v4, :cond_2

    .line 81
    array-length v4, p1

    move v3, v4

    .line 83
    :cond_2
    invoke-static {p1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    array-length v4, v2

    invoke-static {v2, v4}, Lcom/acrcloud/rec/utils/ACRCloudUtils;->calculateVolume([BI)D

    move-result-wide v4

    .line 85
    .local v4, "volume":D
    iget-object v6, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->mACRCloudAudioDataSourceListener:Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;

    invoke-interface {v6, v4, v5}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;->onVolumeChanged(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "oneBufferTime":I
    .end local v2    # "tBuffer":[B
    .end local v3    # "readLen":I
    .end local v4    # "volume":D
    :cond_3
    nop

    .line 91
    const/4 v0, 0x1

    return v0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    return v0
.end method

.method public release()V
    .locals 0

    .line 96
    return-void
.end method

.method public setStatus(Z)V
    .locals 0
    .param p1, "isActive"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceUser;->isActive:Z

    .line 101
    return-void
.end method
