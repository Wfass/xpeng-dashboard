.class public Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XVideoInsideLayout.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "XVideoInsideLayout"


# instance fields
.field controllerShowHandler:Landroid/os/Handler;

.field iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

.field isGestureDragging:Z

.field isSupportBrightnessGesture:Z

.field isSupportVolumeGesture:Z

.field mAudioManager:Landroid/media/AudioManager;

.field progressUpdateHandler:Landroid/os/Handler;

.field progressUpdateRunnable:Ljava/lang/Runnable;

.field window:Landroid/view/Window;

.field x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field x_gesture_controller:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

.field x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

.field x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

.field x_param_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

.field x_slider_icon:Lcom/xiaopeng/xui/widget/XImageView;

.field x_slider_title:Lcom/xiaopeng/xui/widget/XTextView;

.field x_title_back:Lcom/xiaopeng/xui/widget/XImageButton;

.field x_title_text:Lcom/xiaopeng/xui/widget/XTextView;

.field x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field x_tv_duration:Lcom/xiaopeng/xui/widget/XTextView;

.field x_tv_progress:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isSupportVolumeGesture:Z

    .line 61
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isSupportBrightnessGesture:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isGestureDragging:Z

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    .line 85
    new-instance v0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$2;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->controllerShowHandler:Landroid/os/Handler;

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_video_control_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    sget-object v0, Lcom/xiaopeng/xpui/R$styleable;->XVideoLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->init()V

    .line 124
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->initEvent()V

    .line 125
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I

    .line 37
    invoke-static {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getTimeByMillis(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->showBrightnessSlider()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getBrightness()F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;
    .param p1, "x1"    # F

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->setBrightness(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getMaxVolume()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->showVolumeSlider(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getVolume()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->setVolume(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;
    .param p1, "x1"    # I

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->gestureDragTo(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->finishGestureDrag()V

    return-void
.end method

.method private finishGestureDrag()V
    .locals 4

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isGestureDragging:Z

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->seekTo(I)V

    goto :goto_0

    .line 307
    :cond_0
    const-string v0, "XVideoInsideLayout"

    const-string v1, "finishGestureDrag: iVideoView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    return-void
.end method

.method private gestureDragTo(I)V
    .locals 2
    .param p1, "position"    # I

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isGestureDragging:Z

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_tv_progress:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getTimeByMillis(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    return-void
.end method

.method private getBrightness()F
    .locals 5

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->window:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->window:Landroid/view/Window;

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 365
    .local v0, "result":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 366
    return v0

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 369
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 371
    .local v2, "value":I
    :try_start_0
    const-string v3, "screen_brightness"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 374
    goto :goto_0

    .line 372
    :catch_0
    move-exception v3

    .line 373
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 375
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    int-to-float v3, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    return v3
.end method

.method private getMaxVolume()I
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->mAudioManager:Landroid/media/AudioManager;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method private static getTimeByMillis(I)Ljava/lang/String;
    .locals 7
    .param p0, "millis"    # I

    .line 283
    div-int/lit16 v0, p0, 0x3e8

    .line 284
    .local v0, "seconds":I
    if-lez v0, :cond_2

    .line 285
    div-int/lit8 v1, v0, 0x3c

    .line 286
    .local v1, "minutes":I
    rem-int/lit8 v2, v0, 0x3c

    .line 287
    .local v2, "remainingSeconds":I
    const/16 v3, 0x9

    if-le v1, v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    goto :goto_0

    .line 288
    .local v4, "minutesStr":Ljava/lang/String;
    :goto_1
    if-le v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    goto :goto_2

    .line 289
    .local v3, "remainingSecondsStr":Ljava/lang/String;
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 291
    .end local v1    # "minutes":I
    .end local v2    # "remainingSeconds":I
    .end local v3    # "remainingSecondsStr":Ljava/lang/String;
    .end local v4    # "minutesStr":Ljava/lang/String;
    :cond_2
    const-string v1, "00:00"

    return-object v1
.end method

.method private getVolume()I
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->mAudioManager:Landroid/media/AudioManager;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->initView()V

    .line 129
    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_gesture_controller:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    new-instance v1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$3;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->setGesturePlayerListener(Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;)V

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_title_back:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$4;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    new-instance v1, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$5;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setOnSlideChangeListener(Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;)V

    .line 280
    return-void
.end method

.method private initView()V
    .locals 1

    .line 132
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_param_slider:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    .line 133
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_gesture_controller:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_gesture_controller:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    .line 134
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_title_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_title_back:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 135
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_title_text:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_title_text:Lcom/xiaopeng/xui/widget/XTextView;

    .line 136
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_frame:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 137
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_controller_frame:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 138
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_slider_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_icon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 139
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_slider_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_title:Lcom/xiaopeng/xui/widget/XTextView;

    .line 140
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_param_slider_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 141
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_ib_play:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 142
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_tv_progress:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_tv_progress:Lcom/xiaopeng/xui/widget/XTextView;

    .line 143
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_tv_duration:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_tv_duration:Lcom/xiaopeng/xui/widget/XTextView;

    .line 144
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_slider_current_progress:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    .line 145
    return-void
.end method

.method private setBrightness(F)V
    .locals 3
    .param p1, "brightness"    # F

    .line 342
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->window:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->window:Landroid/view/Window;

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 346
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 347
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 348
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 349
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 350
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 351
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 354
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->window:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 355
    return-void
.end method

.method private setVolume(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->mAudioManager:Landroid/media/AudioManager;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 384
    return-void
.end method

.method private showBrightnessSlider()V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVisibility(I)V

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setMin(I)V

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setMax(I)V

    .line 321
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setDragRange(II)V

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_icon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/xpui/R$drawable;->ic_brightness_s:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_title:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lcom/xiaopeng/xpui/R$string;->x_video_brightness:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 324
    return-void
.end method

.method private showVolumeSlider(I)V
    .locals 2
    .param p1, "maxVolume"    # I

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setMin(I)V

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setMax(I)V

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setDragRange(II)V

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_icon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/xpui/R$drawable;->ic_volume1_s:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_title:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lcom/xiaopeng/xpui/R$string;->x_video_volume:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 334
    return-void
.end method


# virtual methods
.method protected getUIProgress()I
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getProgress()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 402
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 403
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 407
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onDetachedFromWindow()V

    .line 409
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 414
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->setControllerShow(Z)V

    .line 416
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setControllerShow(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 428
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->controllerShowHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->controllerShowHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 432
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->controllerShowHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->controllerShowHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 435
    :goto_0
    return-void
.end method

.method public setDuration(I)V
    .locals 3
    .param p1, "millisDuration"    # I

    .line 447
    const-string v0, "cjf"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_tv_duration:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-static {p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getTimeByMillis(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setMax(I)V

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setDragRange(II)V

    .line 451
    return-void
.end method

.method public setSupportBrightnessGesture(Z)V
    .locals 0
    .param p1, "supportBrightnessGesture"    # Z

    .line 420
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isSupportBrightnessGesture:Z

    .line 421
    return-void
.end method

.method public setSupportVolumeGesture(Z)V
    .locals 0
    .param p1, "supportVolumeGesture"    # Z

    .line 424
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isSupportVolumeGesture:Z

    .line 425
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_title_text:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 444
    return-void
.end method

.method public setVideoView(Lcom/xiaopeng/xui/widget/media/IVideoView;)V
    .locals 0
    .param p1, "iVideoView"    # Lcom/xiaopeng/xui/widget/media/IVideoView;

    .line 439
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    .line 440
    return-void
.end method

.method public startPlay()V
    .locals 4

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 456
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->setControllerShow(Z)V

    .line 457
    return-void
.end method

.method public stopPlay()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 461
    return-void
.end method
