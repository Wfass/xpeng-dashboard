.class public abstract Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;
.super Lcom/xiaopeng/xui/app/XDialog;
.source "BaseVideoDialog.java"


# static fields
.field protected static final LCC_VIDEO_PATH:Ljava/lang/String; = "/system/etc/lcc.mp4"

.field protected static final MEM_PARK_VIDEO_PATH:Ljava/lang/String; = "/system/etc/lcc.mp4"

.field private static final TAG:Ljava/lang/String; = "XPilotVideoDialog"


# instance fields
.field audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field protected isInit:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mForceWatch:Z

.field protected mIvCover:Landroid/widget/ImageView;

.field protected mIvPlayer:Landroid/widget/ImageView;

.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field protected mTextureView:Landroid/view/SurfaceView;

.field protected mTvTips:Lcom/xiaopeng/xui/widget/XTextView;

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 65
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$style;->XDialogView_Large_Video:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;-><init>(Landroid/content/Context;I)V

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "style"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/XDialog;-><init>(Landroid/content/Context;I)V

    .line 45
    new-instance p2, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$BaseVideoDialog$6vgux-cXXPs283ZIZZ0-ygCV0Mk;

    invoke-direct {p2, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$BaseVideoDialog$6vgux-cXXPs283ZIZZ0-ygCV0Mk;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;)V

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/16 p2, 0x800

    .line 72
    invoke-virtual {p0, p2}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->setSystemDialog(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->getLayoutId()I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->bindView(Landroid/view/View;)V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->initViews()V

    .line 77
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->setCustomView(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 213
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_0
    return-void
.end method

.method private initMedia(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoPath"
        }
    .end annotation

    const-string v0, "XPilotVideoDialog"

    const-string v1, "init media..."

    const/4 v2, 0x0

    .line 148
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 149
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 150
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 152
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mIvCover:Landroid/widget/ImageView;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mIvCover:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$BaseVideoDialog$RU2EJYhYXc9wVajU3oRYJjghumw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$BaseVideoDialog$RU2EJYhYXc9wVajU3oRYJjghumw;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;)V

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const-string p1, " perhaps has not video. init media occur an exception..."

    .line 167
    invoke-static {v0, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    .line 168
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->enableVui()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mContext:Landroid/content/Context;

    new-array p1, p1, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v3

    aput-object v3, p1, v2

    const-string v2, "XPilotLccVideoDialog"

    invoke-virtual {v0, v2, v1, p1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)V

    .line 173
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$BaseVideoDialog$MXa7iRVJfiZOVcn2VyJw7d1MpyM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$BaseVideoDialog$MXa7iRVJfiZOVcn2VyJw7d1MpyM;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method private pausePlayback()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->setPlayIconState(Z)V

    :cond_0
    return-void
.end method

.method private requestAudioFocus()V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    :cond_0
    return-void
.end method

.method private setPlayIconState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "play"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mIvPlayer:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mIvPlayer:Landroid/widget/ImageView;

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$drawable;->ic_icon_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mIvPlayer:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected abstract bindView(Landroid/view/View;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation
.end method

.method protected abstract enableVui()Z
.end method

.method protected abstract getLayoutId()I
.end method

.method protected initViews()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mTextureView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog$1;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mTextureView:Landroid/view/SurfaceView;

    new-instance v1, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$BaseVideoDialog$m2oMx6QIaLggweN70LaGbuH8eOc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/view/dialog/-$$Lambda$BaseVideoDialog$m2oMx6QIaLggweN70LaGbuH8eOc;-><init>(Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public synthetic lambda$initMedia$2$BaseVideoDialog(Landroid/media/MediaPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mp"
        }
    .end annotation

    .line 159
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 161
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    const/4 p1, 0x1

    .line 162
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->isInit:Z

    return-void
.end method

.method public synthetic lambda$initMedia$3$BaseVideoDialog(Landroid/media/MediaPlayer;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mp"
        }
    .end annotation

    const/4 p1, 0x0

    .line 174
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->setPlayIconState(Z)V

    const/4 v0, 0x1

    .line 175
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->enableVui()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mContext:Landroid/content/Context;

    new-array v0, v0, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->getContentView()Landroid/view/ViewGroup;

    move-result-object v3

    aput-object v3, v0, p1

    const-string p1, "XPilotLccVideoDialog"

    invoke-virtual {v1, p1, v2, v0}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$initViews$1$BaseVideoDialog(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    .line 107
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->isInit:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 108
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->isInit:Z

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 110
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->setPlayIconState(Z)V

    .line 114
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->requestAudioFocus()V

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mIvCover:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 119
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->setPlayIconState(Z)V

    .line 120
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->abandonAudioFocus()V

    goto :goto_0

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 125
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->setPlayIconState(Z)V

    .line 126
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->requestAudioFocus()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$BaseVideoDialog(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "focusChange"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio focus change...  focus change type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XPilotVideoDialog"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->pausePlayback()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 3

    const-string v0, "XPilotVideoDialog"

    const-string v1, "release ..."

    const/4 v2, 0x0

    .line 134
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->abandonAudioFocus()V

    return-void
.end method

.method protected setForceWatch(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceWatch"
        }
    .end annotation

    .line 225
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mForceWatch:Z

    return-void
.end method

.method protected setVideoPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoPath"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mVideoPath:Ljava/lang/String;

    return-void
.end method

.method protected setVideoTips(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tips"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mTvTips:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 195
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mForceWatch:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->setPositiveButtonEnable(Z)Lcom/xiaopeng/xui/app/XDialog;

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mVideoPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->initMedia(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->setPlayIconState(Z)V

    .line 198
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->requestAudioFocus()V

    .line 199
    invoke-super {p0}, Lcom/xiaopeng/xui/app/XDialog;->show()V

    .line 200
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->enableVui()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/dialog/BaseVideoDialog;->mContext:Landroid/content/Context;

    const-string v2, "XPilotLccVideoDialog"

    invoke-virtual {v0, p0, v1, v2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initVuiDialog(Lcom/xiaopeng/xui/app/XDialog;Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
