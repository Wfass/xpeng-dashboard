.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAudio;
.super Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;
.source "ActionAudio.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "repeat"    # I
    .param p3, "audioFocus"    # I

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;-><init>(Ljava/lang/String;II)V

    .line 9
    return-void
.end method

.method public static synthetic lambda$GQ_qz7y3c2tIER5c59Rx4HIyL_c(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAudio;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAudio;->stopAudio()V

    return-void
.end method

.method public static synthetic lambda$mFnEDeUuiqEs3On1Z8phgsw6uJI(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAudio;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAudio;->startAudio()V

    return-void
.end method

.method private startAudio()V
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAudio;->initMediaPlayer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAudio;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 25
    :cond_0
    return-void
.end method

.method private stopAudio()V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAudio;->stopAndReleaseMediaPlayer()V

    .line 29
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 2

    .line 13
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionAudio$mFnEDeUuiqEs3On1Z8phgsw6uJI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionAudio$mFnEDeUuiqEs3On1Z8phgsw6uJI;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAudio;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 18
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionAudio$GQ_qz7y3c2tIER5c59Rx4HIyL_c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionAudio$GQ_qz7y3c2tIER5c59Rx4HIyL_c;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionAudio;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 19
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 5
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
