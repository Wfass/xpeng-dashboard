.class public Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;
.super Ljava/lang/Object;
.source "ACRCloudRecorderTinyalsa.java"

# interfaces
.implements Lcom/acrcloud/rec/record/IACRCloudRecorder;


# static fields
.field private static final TAG:Ljava/lang/String; = "ACRCloudRecorderTinyalsa"


# instance fields
.field private mAudioRecord:Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;

.field private mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

.field private mMinBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mAudioRecord:Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;

    .line 16
    iput-object v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mMinBufferSize:I

    return-void
.end method


# virtual methods
.method public getAudioBufferSize()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mMinBufferSize:I

    return v0
.end method

.method public init(Lcom/acrcloud/rec/ACRCloudConfig;)Z
    .locals 10
    .param p1, "config"    # Lcom/acrcloud/rec/ACRCloudConfig;

    .line 22
    const/4 v0, 0x0

    :try_start_0
    new-instance v9, Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;

    iget-object v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v2, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->card:I

    iget-object v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v3, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->device:I

    iget-object v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v4, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    iget-object v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v5, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    const/16 v6, 0x10

    iget-object v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v7, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->periodSize:I

    iget-object v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v8, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->periods:I

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;-><init>(IIIIIII)V

    iput-object v9, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mAudioRecord:Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;

    .line 26
    iget-object v1, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mAudioRecord:Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;

    invoke-virtual {v1}, Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;->init()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mAudioRecord:Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;

    invoke-virtual {v1}, Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;->release()V

    .line 28
    return v0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mAudioRecord:Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;

    invoke-virtual {v1}, Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;->getBufferSize()I

    move-result v1

    iput v1, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mMinBufferSize:I

    .line 32
    iget-object v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v1, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->volumeCallbackIntervalMS:I

    if-lez v1, :cond_1

    .line 33
    iget-object v1, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v1, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->volumeCallbackIntervalMS:I

    iget-object v2, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v2, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    mul-int/2addr v1, v2

    iget-object v2, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v2, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    div-int/lit16 v1, v1, 0x3e8

    .line 35
    .local v1, "tBufferSize":I
    iget v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mMinBufferSize:I

    if-le v1, v2, :cond_1

    .line 36
    iput v1, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mMinBufferSize:I

    .line 40
    .end local v1    # "tBufferSize":I
    :cond_1
    const-string v1, "ACRCloudRecorderTinyalsa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "min buffer size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mMinBufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "ACRCloudRecorderTinyalsa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v3, v3, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; channels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v3, v3, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    nop

    .line 51
    const/4 v0, 0x1

    return v0

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mAudioRecord:Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;

    .line 48
    return v0
.end method

.method public declared-synchronized read()[B
    .locals 3

    monitor-enter p0

    .line 110
    const/4 v0, 0x0

    .line 113
    .local v0, "buffer":[B
    :try_start_0
    iget-object v1, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mAudioRecord:Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mAudioRecord:Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;

    iget v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mMinBufferSize:I

    invoke-virtual {v1, v2}, Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;->read(I)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 118
    :cond_0
    goto :goto_0

    .line 109
    .end local v0    # "buffer":[B
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 116
    .restart local v0    # "buffer":[B
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 109
    .end local v0    # "buffer":[B
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;
    throw v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mAudioRecord:Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mAudioRecord:Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;

    invoke-virtual {v0}, Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;->release()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mAudioRecord:Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;

    .line 61
    const-string v0, "ACRCloudRecorderTinyalsa"

    const-string v1, "releaseTinyalsaRecord"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    return-void

    .line 56
    :goto_1
    monitor-exit p0

    .end local p0    # "this":Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;
    throw v0
.end method

.method public startRecording()Z
    .locals 5

    .line 80
    :try_start_0
    const-string v0, "ACRCloudRecorderTinyalsa"

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v2, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->initMaxRetryNum:I

    if-ge v1, v2, :cond_0

    .line 84
    const-string v2, "ACRCloudRecorderTinyalsa"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try get AudioRecord : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mAudioRecord:Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    invoke-virtual {p0, v2}, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->init(Lcom/acrcloud/rec/ACRCloudConfig;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->mAudioRecord:Lcom/acrcloud/rec/engine/ACRCloudRecorderTinyalsaEngine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 94
    return v0

    .line 99
    :cond_1
    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public stopRecording()V
    .locals 1

    .line 71
    :try_start_0
    invoke-virtual {p0}, Lcom/acrcloud/rec/record/ACRCloudRecorderTinyalsa;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
