.class public Lcom/xiaopeng/commonfunc/model/test/RecordModel;
.super Ljava/lang/Object;
.source "RecordModel.java"


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

    .line 21
    const-class v0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/record/xpTest.amr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->BASE_PATH:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/record/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    .line 27
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mFile:Ljava/io/File;

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mFile:Ljava/io/File;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public play()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 92
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public releaseAll()V
    .locals 1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_1
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 119
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public startRecord()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 46
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    sget-object v1, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->BASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    const v1, 0x927c0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->TAG:Ljava/lang/String;

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

    .line 61
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->TAG:Ljava/lang/String;

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

    .line 65
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 66
    :goto_1
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 104
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 70
    return-void

    .line 72
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 78
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RecordModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 79
    return-void
.end method
