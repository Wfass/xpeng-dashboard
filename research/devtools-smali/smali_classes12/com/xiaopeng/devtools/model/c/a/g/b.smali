.class public Lcom/xiaopeng/devtools/model/c/a/g/b;
.super Ljava/lang/Object;
.source "RecordModel.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/c/a/g/a;


# static fields
.field private static final tA:Ljava/lang/String;

.field private static final tB:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mFile:Ljava/io/File;

.field private mPlayer:Landroid/media/MediaPlayer;

.field private sU:Landroid/media/MediaRecorder;

.field private tC:Landroid/media/MediaPlayer$OnCompletionListener;

.field private tD:Landroid/media/MediaRecorder$OnInfoListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/record/xpTest.amr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a/g/b;->tA:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/record/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a/g/b;->tB:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mPlayer:Landroid/media/MediaPlayer;

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mContext:Landroid/content/Context;

    .line 26
    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mFile:Ljava/io/File;

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mContext:Landroid/content/Context;

    .line 33
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/g/b;->tB:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mFile:Ljava/io/File;

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->tC:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 48
    iput-object p2, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->tD:Landroid/media/MediaRecorder$OnInfoListener;

    .line 49
    return-void
.end method

.method public gM()Z
    .locals 1

    .line 41
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/g/b;->tA:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aY(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public play()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mPlayer:Landroid/media/MediaPlayer;

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lcom/xiaopeng/devtools/model/c/a/g/b;->tA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->tC:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    :cond_0
    :goto_0
    return-void
.end method

.method public releaseAll()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 127
    :cond_1
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/g/b;->tA:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aX(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public startRecord()V
    .locals 4

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    sget-object v1, Lcom/xiaopeng/devtools/model/c/a/g/b;->tA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    const v1, 0x927c0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->tD:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v1, "RecordModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call startAmr(File mRecAudioFile) failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 76
    :catch_1
    move-exception v0

    .line 77
    const-string v1, "RecordModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call startAmr(File mRecAudioFile) failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    nop

    .line 81
    :goto_1
    return-void
.end method

.method public stopPlay()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->mPlayer:Landroid/media/MediaPlayer;

    .line 115
    :cond_0
    return-void
.end method

.method public stopRecord()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 86
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/g/b;->sU:Landroid/media/MediaRecorder;

    .line 91
    return-void
.end method
