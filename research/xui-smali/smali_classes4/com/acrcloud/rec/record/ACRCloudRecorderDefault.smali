.class public Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;
.super Ljava/lang/Object;
.source "ACRCloudRecorderDefault.java"

# interfaces
.implements Lcom/acrcloud/rec/record/IACRCloudRecorder;


# static fields
.field private static final TAG:Ljava/lang/String; = "ACRCloudRecorderDefault"


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

.field private mMinBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    .line 17
    iput-object v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mMinBufferSize:I

    return-void
.end method


# virtual methods
.method public getAudioBufferSize()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mMinBufferSize:I

    return v0
.end method

.method public init(Lcom/acrcloud/rec/ACRCloudConfig;)Z
    .locals 10
    .param p1, "config"    # Lcom/acrcloud/rec/ACRCloudConfig;

    .line 23
    const/16 v0, 0x10

    .line 24
    .local v0, "audioFormat":I
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v2, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 25
    const/16 v0, 0xc

    .line 28
    :cond_0
    iget-object v2, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v2, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    invoke-static {v2, v0, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v2

    iput v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mMinBufferSize:I

    .line 31
    iget-object v2, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v2, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->volumeCallbackIntervalMS:I

    if-lez v2, :cond_1

    .line 32
    iget-object v2, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v2, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->volumeCallbackIntervalMS:I

    iget-object v4, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v4, v4, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    mul-int/2addr v2, v4

    iget-object v4, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v4, v4, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    mul-int/2addr v2, v4

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    .line 34
    .local v2, "tBufferSize":I
    iget v3, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mMinBufferSize:I

    if-le v2, v3, :cond_1

    .line 35
    iput v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mMinBufferSize:I

    .line 39
    .end local v2    # "tBufferSize":I
    :cond_1
    const-string v2, "ACRCloudRecorderDefault"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "min buffer size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mMinBufferSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "ACRCloudRecorderDefault"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v4, v4, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; channels="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v4, v4, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v2, Landroid/media/AudioRecord;

    iget-object v3, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v5, v3, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->source:I

    iget-object v3, p1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v6, v3, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    const/4 v8, 0x2

    iget v9, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mMinBufferSize:I

    move-object v4, v2

    move v7, v0

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    .line 48
    iget-object v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->release()V

    .line 50
    return v1

    .line 53
    :cond_2
    iput-object p1, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v0    # "audioFormat":I
    nop

    .line 59
    return v3

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    .line 57
    return v1
.end method

.method public read()[B
    .locals 6

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "buffer":[B
    const/4 v1, 0x0

    move v2, v1

    .line 134
    .local v2, "len":I
    :try_start_0
    iget-object v3, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v3, :cond_0

    .line 135
    iget v3, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mMinBufferSize:I

    new-array v3, v3, [B

    move-object v0, v3

    .line 136
    iget-object v3, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    iget v4, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mMinBufferSize:I

    invoke-virtual {v3, v0, v1, v4}, Landroid/media/AudioRecord;->read([BII)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 140
    :cond_0
    goto :goto_0

    .line 138
    :catch_0
    move-exception v3

    .line 139
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_0
    if-gtz v2, :cond_1

    .line 143
    const-string v3, "ACRCloudRecorderDefault"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read buffer error AudioRecord ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x0

    .line 147
    :cond_1
    if-eqz v0, :cond_2

    array-length v3, v0

    if-eq v2, v3, :cond_2

    .line 148
    const-string v3, "ACRCloudRecorderDefault"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "len != buffer.length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-array v3, v2, [B

    .line 150
    .local v3, "tBuffer":[B
    invoke-static {v0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 151
    move-object v0, v3

    .line 154
    .end local v3    # "tBuffer":[B
    :cond_2
    return-object v0
.end method

.method public release()V
    .locals 2

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    .line 69
    const-string v0, "ACRCloudRecorderDefault"

    const-string v1, "releaseAudioRecord"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public startRecording()Z
    .locals 5

    .line 93
    :try_start_0
    const-string v0, "ACRCloudRecorderDefault"

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v2, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->initMaxRetryNum:I

    if-ge v1, v2, :cond_3

    .line 96
    const-string v2, "ACRCloudRecorderDefault"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try get AudioRecord : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    invoke-virtual {p0, v2}, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->init(Lcom/acrcloud/rec/ACRCloudConfig;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    goto :goto_1

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 103
    iget-object v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 107
    goto :goto_2

    .line 110
    :cond_2
    const-string v2, "ACRCloudRecorderDefault"

    const-string v3, "Start record error!"

    invoke-static {v2, v3}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->release()V

    .line 94
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    .end local v1    # "i":I
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_4

    .line 115
    return v0

    .line 119
    :cond_4
    goto :goto_3

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    const/4 v0, 0x1

    return v0
.end method

.method public stopRecording()V
    .locals 2

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    .line 80
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/acrcloud/rec/record/ACRCloudRecorderDefault;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
