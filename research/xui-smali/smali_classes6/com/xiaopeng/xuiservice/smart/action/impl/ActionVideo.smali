.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;
.super Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;
.source "ActionVideo.java"


# instance fields
.field private final h:D

.field private surfaceView:Landroid/view/SurfaceView;

.field private final w:D

.field private final x:D

.field private final y:D


# direct methods
.method public constructor <init>(Ljava/lang/String;IIDDDD)V
    .locals 0
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "repeat"    # I
    .param p3, "audioFocus"    # I
    .param p4, "x"    # D
    .param p6, "y"    # D
    .param p8, "w"    # D
    .param p10, "h"    # D

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;-><init>(Ljava/lang/String;II)V

    .line 23
    iput-wide p4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->x:D

    .line 24
    iput-wide p6, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->y:D

    .line 25
    iput-wide p8, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->w:D

    .line 26
    iput-wide p10, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->h:D

    .line 27
    return-void
.end method

.method private hideVideoViewAndStop()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->surfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 81
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 82
    .local v1, "windowManager":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->surfaceView:Landroid/view/SurfaceView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 83
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->surfaceView:Landroid/view/SurfaceView;

    .line 85
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public static synthetic lambda$Nff0DGgZs0WUR1tbITochHeecOA(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->hideVideoViewAndStop()V

    return-void
.end method

.method public static synthetic lambda$r-MD7BuZATSxrbQVwdzBlI-Qsro(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->showVideoViewAndPlay()V

    return-void
.end method

.method private showVideoViewAndPlay()V
    .locals 12

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->initMediaPlayer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 47
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 48
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo$1;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->surfaceView:Landroid/view/SurfaceView;

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo$2;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;)V

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 74
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/view/WindowManager;

    .line 75
    .local v10, "windowManager":Landroid/view/WindowManager;
    iget-object v11, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->surfaceView:Landroid/view/SurfaceView;

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->x:D

    iget-wide v4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->y:D

    iget-wide v6, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->w:D

    iget-wide v8, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->h:D

    move-object v1, v0

    invoke-static/range {v1 .. v9}, Lcom/xiaopeng/xuiservice/smart/action/util/WindowUtil;->createWindowLayoutParam(Landroid/content/Context;DDDD)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v10, v11, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionVideo$r-MD7BuZATSxrbQVwdzBlI-Qsro;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionVideo$r-MD7BuZATSxrbQVwdzBlI-Qsro;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 32
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 36
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionVideo$Nff0DGgZs0WUR1tbITochHeecOA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionVideo$Nff0DGgZs0WUR1tbITochHeecOA;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 37
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionMediaPlayer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
