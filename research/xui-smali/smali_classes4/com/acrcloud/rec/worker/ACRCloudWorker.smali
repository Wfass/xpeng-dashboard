.class public Lcom/acrcloud/rec/worker/ACRCloudWorker;
.super Ljava/lang/Thread;
.source "ACRCloudWorker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ACRCloudWorker"


# instance fields
.field private final REC_EXT:I

.field private final REC_HUM:I

.field private final REC_HUM_EXT:I

.field private mACRCloudWorkerListener:Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;

.field private mAudioBufferStream:Ljava/io/ByteArrayOutputStream;

.field private mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

.field private volatile mCancel:Z

.field private mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

.field private mCurrentEngineType:I

.field private mInitParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mNextRecginzeLen:I

.field private mRecParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

.field private mStartRecognizeErrorMsg:Ljava/lang/String;

.field private mStartRecognizeTime:J

.field private volatile mStop:Z

.field private mUserParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;Lcom/acrcloud/rec/ACRCloudConfig;Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;)V
    .locals 3
    .param p1, "recognizer"    # Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;
    .param p2, "audioDataSource"    # Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;
    .param p3, "config"    # Lcom/acrcloud/rec/ACRCloudConfig;
    .param p4, "workerListener"    # Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;

    .line 44
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    .line 19
    iput-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    .line 20
    iput-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 21
    iput-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mACRCloudWorkerListener:Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;

    .line 23
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioBufferStream:Ljava/io/ByteArrayOutputStream;

    .line 25
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCancel:Z

    .line 26
    iput-boolean v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStop:Z

    .line 28
    iput-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    .line 29
    iput-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    .line 30
    iput-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mUserParams:Ljava/util/Map;

    .line 32
    iput v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCurrentEngineType:I

    .line 33
    iput v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mNextRecginzeLen:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->REC_EXT:I

    .line 36
    const/4 v1, 0x2

    iput v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->REC_HUM:I

    .line 37
    const/4 v1, 0x3

    iput v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->REC_HUM_EXT:I

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStartRecognizeErrorMsg:Ljava/lang/String;

    .line 41
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStartRecognizeTime:J

    .line 45
    iput-object p2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    .line 46
    iput-object p1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    .line 47
    iput-object p3, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 48
    iput-object p4, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mACRCloudWorkerListener:Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;

    .line 50
    invoke-virtual {p0, v0}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->setDaemon(Z)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;Lcom/acrcloud/rec/ACRCloudConfig;Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;Ljava/util/Map;)V
    .locals 3
    .param p1, "recognizer"    # Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;
    .param p2, "audioDataSource"    # Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;
    .param p3, "config"    # Lcom/acrcloud/rec/ACRCloudConfig;
    .param p4, "workerListener"    # Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;",
            "Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;",
            "Lcom/acrcloud/rec/ACRCloudConfig;",
            "Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p5, "userParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    .line 19
    iput-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    .line 20
    iput-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 21
    iput-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mACRCloudWorkerListener:Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;

    .line 23
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioBufferStream:Ljava/io/ByteArrayOutputStream;

    .line 25
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCancel:Z

    .line 26
    iput-boolean v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStop:Z

    .line 28
    iput-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    .line 29
    iput-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    .line 30
    iput-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mUserParams:Ljava/util/Map;

    .line 32
    iput v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCurrentEngineType:I

    .line 33
    iput v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mNextRecginzeLen:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->REC_EXT:I

    .line 36
    const/4 v1, 0x2

    iput v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->REC_HUM:I

    .line 37
    const/4 v1, 0x3

    iput v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->REC_HUM_EXT:I

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStartRecognizeErrorMsg:Ljava/lang/String;

    .line 41
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStartRecognizeTime:J

    .line 56
    iput-object p2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    .line 57
    iput-object p1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    .line 58
    iput-object p3, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 59
    iput-object p4, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mACRCloudWorkerListener:Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;

    .line 60
    iput-object p5, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mUserParams:Ljava/util/Map;

    .line 62
    invoke-virtual {p0, v0}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->setDaemon(Z)V

    .line 63
    return-void
.end method

.method private onResult(Lcom/acrcloud/rec/ACRCloudResult;)V
    .locals 3
    .param p1, "result"    # Lcom/acrcloud/rec/ACRCloudResult;

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStartRecognizeTime:J

    .line 322
    iget-boolean v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCancel:Z

    if-eqz v0, :cond_0

    .line 323
    return-void

    .line 326
    :cond_0
    iget-boolean v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStop:Z

    if-eqz v0, :cond_1

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCancel:Z

    .line 329
    :cond_1
    invoke-virtual {p1}, Lcom/acrcloud/rec/ACRCloudResult;->getResult()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-virtual {p1}, Lcom/acrcloud/rec/ACRCloudResult;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    :cond_2
    const/16 v0, 0x3e9

    invoke-static {v0}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/acrcloud/rec/ACRCloudResult;->setResult(Ljava/lang/String;)V

    .line 333
    :cond_3
    const-string v0, "ACRCloudWorker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/acrcloud/rec/ACRCloudResult;->getResult()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mACRCloudWorkerListener:Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;

    invoke-interface {v0, p1}, Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;->onResult(Lcom/acrcloud/rec/ACRCloudResult;)V

    .line 336
    return-void
.end method

.method private reset()V
    .locals 3

    .line 75
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCancel:Z

    .line 76
    iput-boolean v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStop:Z

    .line 77
    iget-object v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioBufferStream:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioBufferStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 79
    iput-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioBufferStream:Ljava/io/ByteArrayOutputStream;

    .line 82
    :cond_0
    iput-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    .line 83
    iput-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    .line 84
    iput-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mUserParams:Ljava/util/Map;

    .line 86
    iget-object v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    invoke-interface {v1, v0}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;->setStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_1
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private resumeRecognize()V
    .locals 20

    .line 145
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    if-nez v0, :cond_0

    .line 146
    return-void

    .line 149
    :cond_0
    iget-object v0, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v2, v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    .line 150
    .local v2, "rate":I
    iget-object v0, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v3, v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    .line 151
    .local v3, "channels":I
    iget-object v0, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v0, v0, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v0, v0, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->recordOnceMaxTimeMS:I

    div-int/lit16 v0, v0, 0x3e8

    mul-int v4, v2, v3

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    mul-int/2addr v4, v0

    .line 153
    .local v4, "maxRecognizeBuffer":I
    const/4 v0, 0x0

    .local v0, "isTry":Z
    :goto_0
    move v6, v0

    .line 155
    .end local v0    # "isTry":Z
    .local v6, "isTry":Z
    iget-boolean v0, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCancel:Z

    if-nez v0, :cond_18

    .line 156
    const/4 v0, 0x0

    move-object v7, v0

    .line 159
    .local v7, "data":[B
    const/16 v8, 0x7d0

    :try_start_0
    iget-object v0, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    invoke-interface {v0}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;->getAudioData()[B

    move-result-object v0
    :try_end_0
    .catch Lcom/acrcloud/rec/utils/ACRCloudException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v0

    .line 165
    nop

    .line 168
    if-eqz v7, :cond_1

    :try_start_1
    iget-object v0, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioBufferStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-ge v0, v4, :cond_1

    .line 169
    iget-object v0, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioBufferStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    goto/16 :goto_8

    .line 171
    :cond_1
    :goto_1
    iget-object v0, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    invoke-interface {v0}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;->hasAudioData()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_2

    .line 153
    move v0, v6

    goto :goto_0

    .line 177
    :cond_2
    nop

    .line 179
    iget-boolean v0, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCancel:Z

    if-eqz v0, :cond_3

    .end local v7    # "data":[B
    goto/16 :goto_9

    .line 181
    .restart local v7    # "data":[B
    :cond_3
    iget-object v0, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioBufferStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 182
    .local v0, "curBufferLen":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStartRecognizeTime:J

    sub-long/2addr v8, v10

    .line 183
    .local v8, "curTotalTime":J
    iget-object v10, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget v10, v10, Lcom/acrcloud/rec/ACRCloudConfig;->sessionTotalTimeoutMS:I

    int-to-long v10, v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_12

    iget-object v10, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    if-eqz v10, :cond_12

    .line 184
    iget v10, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mNextRecginzeLen:I

    if-lt v0, v10, :cond_4

    iget-boolean v10, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCancel:Z

    if-eqz v10, :cond_5

    :cond_4
    iget-boolean v10, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStop:Z

    if-eqz v10, :cond_17

    .line 185
    :cond_5
    iget-object v10, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioBufferStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 186
    .local v10, "curBuffer":[B
    array-length v12, v10

    .line 188
    .local v12, "curBufferFPLen":I
    if-le v12, v4, :cond_6

    .line 189
    move v12, v4

    .line 192
    .end local v12    # "curBufferFPLen":I
    .local v15, "curBufferFPLen":I
    :cond_6
    move v15, v12

    iget-boolean v12, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStop:Z

    if-eqz v12, :cond_7

    iget v12, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCurrentEngineType:I

    if-eq v12, v5, :cond_7

    iget-object v12, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v12, v12, Lcom/acrcloud/rec/ACRCloudConfig;->recorderType:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    sget-object v13, Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;->USER:Lcom/acrcloud/rec/ACRCloudConfig$RecorderType;

    if-eq v12, v13, :cond_7

    .line 194
    const/4 v12, 0x3

    iput v12, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCurrentEngineType:I

    .line 196
    :cond_7
    iget-boolean v12, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStop:Z

    if-eqz v12, :cond_8

    const/4 v6, 0x1

    .line 198
    :cond_8
    iget-object v12, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    iget-object v14, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    iget-object v13, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mUserParams:Ljava/util/Map;

    iget v5, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCurrentEngineType:I

    move-object/from16 v16, v13

    move-object v13, v10

    move-object/from16 v17, v14

    move v14, v15

    move/from16 v18, v15

    move-object/from16 v15, v17

    .end local v15    # "curBufferFPLen":I
    .local v18, "curBufferFPLen":I
    move/from16 v17, v5

    invoke-interface/range {v12 .. v17}, Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;->resumeRecognize([BILjava/util/Map;Ljava/util/Map;I)Lcom/acrcloud/rec/recognizer/ACRCloudResponse;

    move-result-object v5

    .line 201
    .local v5, "acrcRes":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    iget-boolean v12, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStop:Z

    if-eqz v12, :cond_a

    .line 202
    if-nez v6, :cond_9

    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getStatusCode()I

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    invoke-interface {v11}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;->hasAudioData()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 203
    nop

    .line 153
    move/from16 v19, v6

    goto/16 :goto_5

    .line 206
    :cond_9
    new-instance v11, Lcom/acrcloud/rec/ACRCloudResult;

    invoke-direct {v11}, Lcom/acrcloud/rec/ACRCloudResult;-><init>()V

    .line 207
    .local v11, "result":Lcom/acrcloud/rec/ACRCloudResult;
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getExtFingerprint()[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/acrcloud/rec/ACRCloudResult;->setAudioFingerprint([B)V

    .line 208
    invoke-virtual {v11, v10}, Lcom/acrcloud/rec/ACRCloudResult;->setRecordDataPCM([B)V

    .line 209
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getResult()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/acrcloud/rec/ACRCloudResult;->setResult(Ljava/lang/String;)V

    .line 210
    invoke-direct {v1, v11}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->onResult(Lcom/acrcloud/rec/ACRCloudResult;)V

    .line 211
    goto/16 :goto_9

    .line 214
    .end local v11    # "result":Lcom/acrcloud/rec/ACRCloudResult;
    :cond_a
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getEngineType()I

    move-result v12

    iput v12, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCurrentEngineType:I

    .line 215
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getFpTime()I

    move-result v12

    .line 216
    .local v12, "curFpTime":I
    iget-object v13, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    const-string v14, "fp_time"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getStatusCode()I

    move-result v13

    if-nez v13, :cond_c

    .line 219
    iget-object v13, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    const-string v14, "service_type"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 220
    .local v13, "curServiceType":I
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getResultType()I

    move-result v14

    sub-int v14, v13, v14

    .line 221
    .local v14, "nextServiceType":I
    if-nez v14, :cond_b

    .line 222
    iget-object v15, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    const-string v11, "service_type"

    invoke-interface {v15, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 224
    :cond_b
    iget-object v11, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    const-string v15, "service_type"

    move/from16 v19, v6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .end local v6    # "isTry":Z
    .local v19, "isTry":Z
    invoke-interface {v11, v15, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v6, Lcom/acrcloud/rec/ACRCloudResult;

    invoke-direct {v6}, Lcom/acrcloud/rec/ACRCloudResult;-><init>()V

    .line 227
    .local v6, "result":Lcom/acrcloud/rec/ACRCloudResult;
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getExtFingerprint()[B

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/acrcloud/rec/ACRCloudResult;->setAudioFingerprint([B)V

    .line 228
    invoke-virtual {v6, v10}, Lcom/acrcloud/rec/ACRCloudResult;->setRecordDataPCM([B)V

    .line 229
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getResult()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/acrcloud/rec/ACRCloudResult;->setResult(Ljava/lang/String;)V

    .line 231
    invoke-direct {v1, v6}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->onResult(Lcom/acrcloud/rec/ACRCloudResult;)V

    .end local v6    # "result":Lcom/acrcloud/rec/ACRCloudResult;
    .end local v13    # "curServiceType":I
    .end local v14    # "nextServiceType":I
    goto :goto_2

    .line 234
    .end local v19    # "isTry":Z
    .local v6, "isTry":Z
    :cond_c
    move/from16 v19, v6

    .end local v6    # "isTry":Z
    .restart local v19    # "isTry":Z
    :goto_2
    if-nez v12, :cond_11

    .line 235
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getStatusCode()I

    move-result v6

    const/16 v11, 0xbb8

    if-eq v6, v11, :cond_f

    .line 236
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getStatusCode()I

    move-result v6

    const/16 v11, 0x7d5

    if-ne v6, v11, :cond_d

    goto :goto_3

    .line 249
    :cond_d
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getStatusCode()I

    move-result v6

    if-eqz v6, :cond_e

    .line 250
    new-instance v6, Lcom/acrcloud/rec/ACRCloudResult;

    invoke-direct {v6}, Lcom/acrcloud/rec/ACRCloudResult;-><init>()V

    .line 251
    .local v6, "result":Lcom/acrcloud/rec/ACRCloudResult;
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getExtFingerprint()[B

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/acrcloud/rec/ACRCloudResult;->setAudioFingerprint([B)V

    .line 252
    invoke-virtual {v6, v10}, Lcom/acrcloud/rec/ACRCloudResult;->setRecordDataPCM([B)V

    .line 253
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getResult()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/acrcloud/rec/ACRCloudResult;->setResult(Ljava/lang/String;)V

    .line 254
    invoke-direct {v1, v6}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->onResult(Lcom/acrcloud/rec/ACRCloudResult;)V

    .line 257
    .end local v18    # "curBufferFPLen":I
    .local v6, "curBufferFPLen":I
    :cond_e
    move/from16 v6, v18

    goto :goto_4

    .line 237
    .end local v6    # "curBufferFPLen":I
    .restart local v18    # "curBufferFPLen":I
    :cond_f
    :goto_3
    move/from16 v6, v18

    if-lt v6, v4, :cond_10

    .line 238
    .end local v18    # "curBufferFPLen":I
    .restart local v6    # "curBufferFPLen":I
    new-instance v11, Lcom/acrcloud/rec/ACRCloudResult;

    invoke-direct {v11}, Lcom/acrcloud/rec/ACRCloudResult;-><init>()V

    .line 239
    .restart local v11    # "result":Lcom/acrcloud/rec/ACRCloudResult;
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getExtFingerprint()[B

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/acrcloud/rec/ACRCloudResult;->setAudioFingerprint([B)V

    .line 240
    invoke-virtual {v11, v10}, Lcom/acrcloud/rec/ACRCloudResult;->setRecordDataPCM([B)V

    .line 241
    invoke-virtual {v5}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getResult()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/acrcloud/rec/ACRCloudResult;->setResult(Ljava/lang/String;)V

    .line 242
    invoke-direct {v1, v11}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->onResult(Lcom/acrcloud/rec/ACRCloudResult;)V

    .line 243
    .end local v11    # "result":Lcom/acrcloud/rec/ACRCloudResult;
    nop

    .line 257
    :goto_4
    iget-object v11, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    const-string v13, "fp_time"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 258
    iget-object v11, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    const-string v13, "fp_time"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    iget-object v11, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    const-string v13, "service_type"

    iget-object v14, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    const-string v15, "service_type"

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v11, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    const-string v13, "engine_type"

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCurrentEngineType:I

    .line 262
    iget-object v11, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioBufferStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_6

    .line 244
    :cond_10
    iput v4, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mNextRecginzeLen:I

    .line 245
    iget-object v11, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    const-string v13, "fp_time"

    const/16 v14, 0x2ee0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v11, "ACRCloudWorker"

    const-string v13, "http error, next rec len MAX_RECOGNIZE_BUFFER_LEN"

    invoke-static {v11, v13}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    nop

    .line 153
    .end local v0    # "curBufferLen":I
    .end local v5    # "acrcRes":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    .end local v7    # "data":[B
    .end local v8    # "curTotalTime":J
    .end local v10    # "curBuffer":[B
    .end local v12    # "curFpTime":I
    .end local v19    # "isTry":Z
    .local v6, "isTry":Z
    :goto_5
    move/from16 v0, v19

    const/4 v5, 0x2

    .end local v6    # "isTry":Z
    .restart local v19    # "isTry":Z
    goto/16 :goto_0

    .line 265
    .restart local v0    # "curBufferLen":I
    .restart local v5    # "acrcRes":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    .restart local v7    # "data":[B
    .restart local v8    # "curTotalTime":J
    .restart local v10    # "curBuffer":[B
    .restart local v12    # "curFpTime":I
    .restart local v18    # "curBufferFPLen":I
    :cond_11
    move/from16 v6, v18

    .end local v18    # "curBufferFPLen":I
    .local v6, "curBufferFPLen":I
    :goto_6
    const-string v11, "ACRCloudWorker"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "curBufferLen="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "  nextRecginzeLen="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mNextRecginzeLen:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " curFpTime="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " service_type="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    const-string v15, "service_type"

    .line 266
    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " maxRecognizeBuffer="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " stop="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStop:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 265
    invoke-static {v11, v13}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    div-int/lit16 v11, v12, 0x3e8

    mul-int/2addr v11, v2

    mul-int/2addr v11, v3

    int-to-double v13, v11

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double/2addr v13, v15

    double-to-int v11, v13

    iput v11, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mNextRecginzeLen:I

    .line 270
    .end local v5    # "acrcRes":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    .end local v6    # "curBufferFPLen":I
    .end local v10    # "curBuffer":[B
    .end local v12    # "curFpTime":I
    nop

    .line 293
    move/from16 v0, v19

    goto :goto_7

    .line 272
    .end local v19    # "isTry":Z
    .local v6, "isTry":Z
    :cond_12
    iget-object v5, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget v5, v5, Lcom/acrcloud/rec/ACRCloudConfig;->sessionTotalTimeoutMS:I

    int-to-long v10, v5

    cmp-long v5, v8, v10

    if-gtz v5, :cond_13

    if-lt v0, v4, :cond_17

    .line 273
    :cond_13
    new-instance v5, Lcom/acrcloud/rec/ACRCloudResult;

    invoke-direct {v5}, Lcom/acrcloud/rec/ACRCloudResult;-><init>()V

    .line 274
    .local v5, "result":Lcom/acrcloud/rec/ACRCloudResult;
    iget-object v10, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStartRecognizeErrorMsg:Ljava/lang/String;

    if-eqz v10, :cond_14

    const-string v10, ""

    iget-object v11, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStartRecognizeErrorMsg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 275
    :cond_14
    const/16 v10, 0x7d5

    invoke-static {v10}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStartRecognizeErrorMsg:Ljava/lang/String;

    .line 278
    :cond_15
    iget-object v10, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStartRecognizeErrorMsg:Ljava/lang/String;

    invoke-virtual {v5, v10}, Lcom/acrcloud/rec/ACRCloudResult;->setResult(Ljava/lang/String;)V

    .line 279
    iget-object v10, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioBufferStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 280
    .restart local v10    # "curBuffer":[B
    invoke-virtual {v5, v10}, Lcom/acrcloud/rec/ACRCloudResult;->setRecordDataPCM([B)V

    .line 284
    invoke-direct {v1, v5}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->onResult(Lcom/acrcloud/rec/ACRCloudResult;)V

    .line 286
    iget-boolean v11, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCancel:Z

    if-nez v11, :cond_16

    .line 287
    invoke-direct/range {p0 .. p0}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->startRecognize()Z

    .line 290
    :cond_16
    iget-object v11, v1, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioBufferStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 293
    .end local v0    # "curBufferLen":I
    .end local v5    # "result":Lcom/acrcloud/rec/ACRCloudResult;
    .end local v7    # "data":[B
    .end local v8    # "curTotalTime":J
    .end local v10    # "curBuffer":[B
    :cond_17
    move v0, v6

    .line 153
    .end local v6    # "isTry":Z
    .local v0, "isTry":Z
    :goto_7
    const/4 v5, 0x2

    goto/16 :goto_0

    .line 172
    .end local v0    # "isTry":Z
    .restart local v6    # "isTry":Z
    .restart local v7    # "data":[B
    :goto_8
    nop

    .line 173
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/acrcloud/rec/ACRCloudResult;

    invoke-direct {v5}, Lcom/acrcloud/rec/ACRCloudResult;-><init>()V

    .line 174
    .restart local v5    # "result":Lcom/acrcloud/rec/ACRCloudResult;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/acrcloud/rec/ACRCloudResult;->setResult(Ljava/lang/String;)V

    .line 175
    invoke-direct {v1, v5}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->onResult(Lcom/acrcloud/rec/ACRCloudResult;)V

    .line 176
    goto :goto_9

    .line 160
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v5    # "result":Lcom/acrcloud/rec/ACRCloudResult;
    :catch_1
    move-exception v0

    .line 161
    .local v0, "ex":Lcom/acrcloud/rec/utils/ACRCloudException;
    new-instance v5, Lcom/acrcloud/rec/ACRCloudResult;

    invoke-direct {v5}, Lcom/acrcloud/rec/ACRCloudResult;-><init>()V

    .line 162
    .restart local v5    # "result":Lcom/acrcloud/rec/ACRCloudResult;
    invoke-static {v8}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/acrcloud/rec/ACRCloudResult;->setResult(Ljava/lang/String;)V

    .line 163
    invoke-direct {v1, v5}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->onResult(Lcom/acrcloud/rec/ACRCloudResult;)V

    .line 164
    nop

    .line 294
    .end local v0    # "ex":Lcom/acrcloud/rec/utils/ACRCloudException;
    .end local v5    # "result":Lcom/acrcloud/rec/ACRCloudResult;
    .end local v7    # "data":[B
    :cond_18
    :goto_9
    return-void
.end method

.method private startRecognize()Z
    .locals 6

    .line 95
    const-string v0, "ACRCloudWorker"

    const-string v1, "startRecognize"

    invoke-static {v0, v1}, Lcom/acrcloud/rec/utils/ACRCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecognizer:Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;

    iget-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mUserParams:Ljava/util/Map;

    invoke-interface {v1, v2}, Lcom/acrcloud/rec/recognizer/IACRCloudRecognizer;->startRecognize(Ljava/util/Map;)Lcom/acrcloud/rec/recognizer/ACRCloudResponse;

    move-result-object v1

    .line 100
    .local v1, "acrcRes":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getStatusCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 101
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    .line 102
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    .line 104
    iget-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    const-string v3, "ekey"

    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->geteKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    const-string v3, "ekey"

    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->geteKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    const-string v3, "fp_time"

    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getFpTime()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    const-string v3, "fp_time"

    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getFpTime()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    const-string v3, "service_type"

    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getServiceType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    const-string v3, "service_type"

    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getServiceType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    const-string v3, "engine_type"

    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getEngineType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mRecParams:Ljava/util/Map;

    const-string v3, "engine_type"

    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getEngineType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getAutoIntervalMS()I

    move-result v2

    if-lez v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    const-string v3, "auto_interval_ms"

    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getAutoIntervalMS()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getEngineType()I

    move-result v2

    iput v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCurrentEngineType:I

    .line 121
    iget-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v2, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    .line 122
    .local v2, "rate":I
    iget-object v3, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v3, v3, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v3, v3, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    .line 124
    .local v3, "channels":I
    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getFpTime()I

    move-result v4

    mul-int/2addr v4, v2

    mul-int/2addr v4, v3

    mul-int/lit8 v4, v4, 0x2

    div-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mNextRecginzeLen:I

    .line 126
    iget-object v4, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mACRCloudWorkerListener:Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;

    iget-object v5, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mInitParams:Ljava/util/Map;

    invoke-interface {v4, v5}, Lcom/acrcloud/rec/worker/IACRCloudWorkerListener;->onStartRecognize(Ljava/util/Map;)V

    .line 128
    return v0

    .line 129
    .end local v2    # "rate":I
    .end local v3    # "channels":I
    :cond_1
    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0xbb8

    if-ne v2, v3, :cond_2

    .line 130
    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getResult()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStartRecognizeErrorMsg:Ljava/lang/String;

    .line 139
    .end local v1    # "acrcRes":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    goto :goto_0

    .line 132
    .restart local v1    # "acrcRes":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    :cond_2
    new-instance v2, Lcom/acrcloud/rec/ACRCloudResult;

    invoke-direct {v2}, Lcom/acrcloud/rec/ACRCloudResult;-><init>()V

    .line 133
    .local v2, "ares":Lcom/acrcloud/rec/ACRCloudResult;
    invoke-virtual {v1}, Lcom/acrcloud/rec/recognizer/ACRCloudResponse;->getResult()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/acrcloud/rec/ACRCloudResult;->setResult(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, v2}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->onResult(Lcom/acrcloud/rec/ACRCloudResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    const/4 v0, 0x0

    return v0

    .line 137
    .end local v1    # "acrcRes":Lcom/acrcloud/rec/recognizer/ACRCloudResponse;
    .end local v2    # "ares":Lcom/acrcloud/rec/ACRCloudResult;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    const/16 v2, 0x7da

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/acrcloud/rec/utils/ACRCloudException;->toErrorString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStartRecognizeErrorMsg:Ljava/lang/String;

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method


# virtual methods
.method public reqCancel()V
    .locals 1

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mCancel:Z

    .line 67
    return-void
.end method

.method public reqStop()V
    .locals 1

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStop:Z

    .line 71
    return-void
.end method

.method public run()V
    .locals 3

    .line 298
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mStartRecognizeTime:J

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    invoke-interface {v0}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;->init()V

    .line 304
    iget-object v0, p0, Lcom/acrcloud/rec/worker/ACRCloudWorker;->mAudioDataSource:Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSource;->setStatus(Z)V
    :try_end_0
    .catch Lcom/acrcloud/rec/utils/ACRCloudException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    nop

    .line 312
    invoke-direct {p0}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->startRecognize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->resumeRecognize()V

    .line 316
    :cond_0
    invoke-direct {p0}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->reset()V

    .line 317
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "ex":Lcom/acrcloud/rec/utils/ACRCloudException;
    new-instance v1, Lcom/acrcloud/rec/ACRCloudResult;

    invoke-direct {v1}, Lcom/acrcloud/rec/ACRCloudResult;-><init>()V

    .line 307
    .local v1, "ares":Lcom/acrcloud/rec/ACRCloudResult;
    invoke-virtual {v0}, Lcom/acrcloud/rec/utils/ACRCloudException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/acrcloud/rec/ACRCloudResult;->setResult(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0, v1}, Lcom/acrcloud/rec/worker/ACRCloudWorker;->onResult(Lcom/acrcloud/rec/ACRCloudResult;)V

    .line 309
    return-void
.end method
