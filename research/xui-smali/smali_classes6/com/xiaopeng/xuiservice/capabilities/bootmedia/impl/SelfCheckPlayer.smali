.class public Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;
.super Ljava/lang/Object;
.source "SelfCheckPlayer.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/capabilities/bootmedia/BootPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;,
        Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;
    }
.end annotation


# static fields
.field private static final MSG_ANIMA_STARTED:Ljava/lang/String; = "2"

.field private static final MSG_ANIMA_STOPPED:Ljava/lang/String; = "3"

.field private static final MSG_KEY:Ljava/lang/String; = "SelfCheck"

.field private static final TAG:Ljava/lang/String; = "SelfCheckPlayer"


# instance fields
.field private final hasSelfCheck:Z

.field private final mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

.field private volatile mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

.field private final processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

.field private final shouldPlay:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;)V
    .locals 4
    .param p1, "processor"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isInternationalEnable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "XP_Allow_Self_Check"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->hasSelfCheck:Z

    .line 39
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->shouldPlay:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    invoke-direct {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    .line 61
    const-string v0, "SelfCheckPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelfCheckPlayer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    .line 64
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$POirm6How1cZGzBM-Fyt0oBnom0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$POirm6How1cZGzBM-Fyt0oBnom0;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .line 29
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->createAndPrepareMediaPlayer(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->releaseMediaPlayer()V

    return-void
.end method

.method private addViewToWindow()V
    .locals 3

    .line 134
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 135
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 136
    const-string v1, "selfCheck"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    const/16 v1, 0x846

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 138
    const/16 v1, 0xa8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 141
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 142
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 143
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 144
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget v1, v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->screenId:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenId:I

    .line 146
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v2, v2, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->rootView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    return-void
.end method

.method private changeStatus(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;)V
    .locals 3
    .param p1, "newStatus"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    .line 68
    const-string v0, "SelfCheckPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Status change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    .line 70
    return-void
.end method

.method private checkAndPlay()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->PREPARED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->shouldPlay:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 152
    :cond_0
    const-string v0, "SelfCheckPlayer"

    const-string v1, "Starting media playback"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->PLAYING:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->changeStatus(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;)V

    .line 155
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->hasSelfCheck:Z

    if-eqz v0, :cond_1

    .line 156
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->get()Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;

    move-result-object v0

    const-string v1, "SelfCheck"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->sendAppState(Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SelfCheckPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v1, "Playback failed"

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->finishPlayback(Ljava/lang/String;)V

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 150
    :cond_2
    :goto_1
    return-void
.end method

.method private cleanupResources()V
    .locals 3

    .line 194
    const-string v0, "SelfCheckPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up resources "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->releaseMediaPlayer()V

    .line 197
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->removeView()V

    .line 198
    return-void
.end method

.method private createAndPrepareMediaPlayer(Landroid/view/SurfaceHolder;)V
    .locals 9
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$SAjUq1UEvzCOPdY6gI6w1IAbLW4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$SAjUq1UEvzCOPdY6gI6w1IAbLW4;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$5ddbs9su4pMudwpQ_ReWnfbLE8c;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$5ddbs9su4pMudwpQ_ReWnfbLE8c;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 115
    const v0, 0x7f0d000d

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->getResourceDescriptor(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    const/4 v1, 0x0

    .line 116
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v3, v2, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 119
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$9XAu295ERbLDxY4Xd0ija8Ggztw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$9XAu295ERbLDxY4Xd0ija8Ggztw;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 130
    goto :goto_2

    .line 117
    .restart local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_2
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 126
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catch_2
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SelfCheckPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create and prepare MediaPlayer failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$VLVEHCZ_uCzuT0028sKu6GQ8VgI;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$VLVEHCZ_uCzuT0028sKu6GQ8VgI;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method private finishPlayback(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    if-ne v0, v1, :cond_0

    return-void

    .line 180
    :cond_0
    const-string v0, "SelfCheckPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finishing playback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->changeStatus(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->shouldPlay:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->hasSelfCheck:Z

    if-eqz v0, :cond_1

    .line 185
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->get()Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;

    move-result-object v0

    const-string v1, "SelfCheck"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/systemui/systemstate/SystemStateManager;->sendAppState(Ljava/lang/String;Ljava/lang/String;)Z

    .line 187
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->cleanupResources()V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->processor:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    invoke-interface {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;->afterProcess()V

    .line 191
    :cond_2
    return-void
.end method

.method private getResourceDescriptor(I)Landroid/content/res/AssetFileDescriptor;
    .locals 5
    .param p1, "resId"    # I

    .line 167
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 168
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 170
    .local v1, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_0

    .line 174
    return-object v1

    .line 171
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private initialize()V
    .locals 4

    .line 74
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->windowManager:Landroid/view/WindowManager;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0c001c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->rootView:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->rootView:Landroid/view/View;

    const v2, 0x7f09014b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->surfaceView:Landroid/view/SurfaceView;

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 95
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->addViewToWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SelfCheckPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialize failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->cleanupResources()V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$POirm6How1cZGzBM-Fyt0oBnom0(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->initialize()V

    return-void
.end method

.method public static synthetic lambda$createAndPrepareMediaPlayer$0(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V
    .locals 1

    .line 108
    const-string v0, "Playback finished"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->finishPlayback(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$createAndPrepareMediaPlayer$1(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 108
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$ToI9Cgt0pNcrSBdMUP0JHjr1PTU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$ToI9Cgt0pNcrSBdMUP0JHjr1PTU;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$createAndPrepareMediaPlayer$2(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;I)V
    .locals 3
    .param p1, "what"    # I

    .line 111
    const-string v0, "SelfCheckPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "Playback failed"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->finishPlayback(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static synthetic lambda$createAndPrepareMediaPlayer$3(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 110
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$D30Q5Dvs-LUvXBTmC5VjhNqfwDU;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$D30Q5Dvs-LUvXBTmC5VjhNqfwDU;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$createAndPrepareMediaPlayer$4(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V
    .locals 2

    .line 120
    const-string v0, "SelfCheckPlayer"

    const-string v1, "MediaPlayer prepared"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->PREPARED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->changeStatus(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;)V

    .line 122
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->checkAndPlay()V

    .line 123
    return-void
.end method

.method public static synthetic lambda$createAndPrepareMediaPlayer$5(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .line 119
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$MRAHoxaYLpxOUfnOsnZ6ucK9qoU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$MRAHoxaYLpxOUfnOsnZ6ucK9qoU;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$createAndPrepareMediaPlayer$6(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V
    .locals 1

    .line 129
    const-string v0, "Prepare failed"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->finishPlayback(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$play$7(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->shouldPlay:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 231
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->checkAndPlay()V

    .line 232
    return-void
.end method

.method public static synthetic lambda$release$9(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    if-ne v0, v1, :cond_0

    return-void

    .line 249
    :cond_0
    const-string v0, "SelfCheckPlayer"

    const-string v1, "Release player"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->STOPPED:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->changeStatus(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;)V

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->shouldPlay:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 252
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->cleanupResources()V

    .line 253
    return-void
.end method

.method public static synthetic lambda$stop$8(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mStatus:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;->PLAYING:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$Status;

    if-ne v0, v1, :cond_0

    .line 239
    const-string v0, "User stop"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->finishPlayback(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SelfCheckPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Release error, : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 213
    :cond_1
    return-void
.end method

.method private removeView()V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->rootView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SelfCheckPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove view failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->mScreen:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer$ScreenPlayer;->rootView:Landroid/view/View;

    .line 223
    iput-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;->windowManager:Landroid/view/WindowManager;

    .line 225
    :cond_0
    return-void
.end method


# virtual methods
.method public play()V
    .locals 2

    .line 229
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$xM3cDqP04-uBgiGedlckkG-LMro;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$xM3cDqP04-uBgiGedlckkG-LMro;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 233
    return-void
.end method

.method public release()V
    .locals 2

    .line 246
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$S-EklfDZKPI_6V1OrwNDC_HRn1s;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$S-EklfDZKPI_6V1OrwNDC_HRn1s;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method

.method public stop()V
    .locals 2

    .line 237
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$Idhj6k7ceQVJfZiXmQAKns11tac;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$SelfCheckPlayer$Idhj6k7ceQVJfZiXmQAKns11tac;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/SelfCheckPlayer;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 242
    return-void
.end method
