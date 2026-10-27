.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;
.super Ljava/lang/Object;
.source "RecordModel.java"

# interfaces
.implements Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/IRecordModel;


# static fields
.field private static final BASE_PATH:Ljava/lang/String;

.field public static final MAX_LENGTH:I = 0x927c0

.field private static final TAG:Ljava/lang/String;

.field private static final mFilePath:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mFile:Ljava/io/File;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mPlayer:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const-class v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/record/xpTest.amr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->BASE_PATH:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/record/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mFile:Ljava/io/File;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mFile:Ljava/io/File;

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 33
    :cond_0
    return-void
.end method


# virtual methods
.method public play()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public releaseAll()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 112
    :cond_1
    return-void
.end method

.method public startRecord()V
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 43
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget-object v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v1, 0x927c0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call startAmr(File mRecAudioFile) failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 58
    :catch_1
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call startAmr(File mRecAudioFile) failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 63
    :goto_1
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    .line 96
    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 68
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/record/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 73
    return-void
.end method
