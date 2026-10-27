.class Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;
.super Ljava/lang/Thread;
.source "ACRCloudAudioDataSourceRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ACRCloudRecordThread"
.end annotation


# instance fields
.field private volatile isRecording:Z

.field private mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

.field final synthetic this$0:Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;


# direct methods
.method public constructor <init>(Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;Lcom/acrcloud/rec/ACRCloudConfig;)V
    .locals 1
    .param p1, "this$0"    # Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;
    .param p2, "config"    # Lcom/acrcloud/rec/ACRCloudConfig;

    .line 200
    iput-object p1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->this$0:Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->isRecording:Z

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 201
    iput-object p2, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->setDaemon(Z)V

    .line 203
    return-void
.end method


# virtual methods
.method public onAudioDataAvailable([B)V
    .locals 4
    .param p1, "buffer"    # [B

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->this$0:Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;

    invoke-static {v0}, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;->access$000(Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;)Lcom/acrcloud/rec/record/IACRCloudRecorder;

    move-result-object v0

    invoke-interface {v0}, Lcom/acrcloud/rec/record/IACRCloudRecorder;->getAudioBufferSize()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iget-object v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v1, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->rate:I

    iget-object v2, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v2, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->channels:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v0, v1

    .line 214
    .local v0, "oneBufferTime":I
    iget-object v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->this$0:Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;

    invoke-static {v1}, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;->access$100(Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->this$0:Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;

    invoke-static {v1}, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;->access$200(Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    iget-object v2, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v2, v2, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget v2, v2, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->reservedRecordBufferMS:I

    div-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_0

    .line 216
    iget-object v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->this$0:Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;

    invoke-static {v1}, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;->access$200(Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->this$0:Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;

    invoke-static {v1}, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;->access$100(Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->this$0:Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;

    invoke-static {v1}, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;->access$300(Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;)Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->mConfig:Lcom/acrcloud/rec/ACRCloudConfig;

    iget-object v1, v1, Lcom/acrcloud/rec/ACRCloudConfig;->recorderConfig:Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;

    iget-boolean v1, v1, Lcom/acrcloud/rec/ACRCloudConfig$RecorderConfig;->isVolumeCallback:Z

    if-eqz v1, :cond_1

    .line 221
    array-length v1, p1

    invoke-static {p1, v1}, Lcom/acrcloud/rec/utils/ACRCloudUtils;->calculateVolume([BI)D

    move-result-wide v1

    .line 222
    .local v1, "volume":D
    iget-object v3, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->this$0:Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;

    invoke-static {v3}, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;->access$300(Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;)Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/acrcloud/rec/data/IACRCloudAudioDataSourceListener;->onVolumeChanged(D)V

    .line 225
    .end local v1    # "volume":D
    :cond_1
    iget-object v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->this$0:Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;

    invoke-static {v1}, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;->access$200(Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v0    # "oneBufferTime":I
    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public run()V
    .locals 3

    .line 234
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->isRecording:Z

    .line 235
    const/4 v0, 0x5

    .line 237
    .local v0, "retryReadNum":I
    :goto_0
    iget-boolean v2, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->isRecording:Z

    if-eqz v2, :cond_3

    .line 238
    iget-object v2, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->this$0:Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;

    invoke-static {v2}, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;->access$000(Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;)Lcom/acrcloud/rec/record/IACRCloudRecorder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 239
    iput-boolean v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->isRecording:Z

    .line 240
    goto :goto_1

    .line 243
    :cond_0
    iget-object v2, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->this$0:Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;

    invoke-static {v2}, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;->access$000(Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder;)Lcom/acrcloud/rec/record/IACRCloudRecorder;

    move-result-object v2

    invoke-interface {v2}, Lcom/acrcloud/rec/record/IACRCloudRecorder;->read()[B

    move-result-object v2

    .line 245
    .local v2, "buffer":[B
    if-nez v2, :cond_2

    .line 246
    if-lez v0, :cond_1

    .line 247
    add-int/lit8 v0, v0, -0x1

    .line 248
    goto :goto_0

    .line 250
    :cond_1
    iput-boolean v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->isRecording:Z

    .line 251
    goto :goto_1

    .line 253
    :cond_2
    const/4 v0, 0x5

    .line 255
    invoke-virtual {p0, v2}, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->onAudioDataAvailable([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v2    # "buffer":[B
    goto :goto_0

    .line 260
    .end local v0    # "retryReadNum":I
    :cond_3
    :goto_1
    goto :goto_2

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    iput-boolean v1, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->isRecording:Z

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/acrcloud/rec/data/ACRCloudAudioDataSourceRecorder$ACRCloudRecordThread;->isRecording:Z

    .line 207
    return-void
.end method
