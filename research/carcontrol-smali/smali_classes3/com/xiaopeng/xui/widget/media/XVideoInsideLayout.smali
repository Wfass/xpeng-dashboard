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

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x1

    .line 60
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isSupportVolumeGesture:Z

    .line 61
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isSupportBrightnessGesture:Z

    const/4 p3, 0x0

    .line 63
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isGestureDragging:Z

    .line 64
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateHandler:Landroid/os/Handler;

    .line 65
    new-instance p3, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;

    invoke-direct {p3, p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$1;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    .line 85
    new-instance p3, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p0, p4}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout$2;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->controllerShowHandler:Landroid/os/Handler;

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/xiaopeng/xpui/R$layout;->x_video_control_layout:I

    invoke-virtual {p3, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    sget-object p3, Lcom/xiaopeng/xpui/R$styleable;->XVideoLayout:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 123
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->init()V

    .line 124
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->initEvent()V

    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getTimeByMillis(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->showBrightnessSlider()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)F
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getBrightness()F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;F)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->setBrightness(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)I
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getMaxVolume()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->showVolumeSlider(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)I
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getVolume()I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->setVolume(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->gestureDragTo(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->finishGestureDrag()V

    return-void
.end method

.method private finishGestureDrag()V
    .locals 4

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isGestureDragging:Z

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->seekTo(I)V

    goto :goto_0

    :cond_0
    const-string v0, "XVideoInsideLayout"

    const-string v1, "finishGestureDrag: iVideoView is null"

    .line 307
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private gestureDragTo(I)V
    .locals 2

    const/4 v0, 0x1

    .line 296
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

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getBrightness()F
    .locals 3

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

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    return v0

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "screen_brightness"

    .line 371
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 373
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_0
    int-to-float v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
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
    .locals 5

    .line 283
    div-int/lit16 p0, p0, 0x3e8

    if-lez p0, :cond_2

    .line 285
    div-int/lit8 v0, p0, 0x3c

    .line 286
    rem-int/lit8 p0, p0, 0x3c

    const-string v1, ""

    const-string v2, "0"

    const/16 v3, 0x9

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    if-le v0, v3, :cond_0

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-le p0, v3, :cond_1

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    :goto_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "00:00"

    return-object p0
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

    return-void
.end method

.method private setBrightness(F)V
    .locals 2

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
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 347
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_2

    .line 348
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    .line 349
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 350
    :cond_1
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v1, 0x0

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 351
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 354
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->window:Landroid/view/Window;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private setVolume(I)V
    .locals 3

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

    return-void
.end method

.method private showVolumeSlider(I)V
    .locals 2

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
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_icon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/xpui/R$drawable;->ic_volume1_s:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 333
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_slider_title:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/xpui/R$string;->x_video_volume:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

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

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 407
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 414
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->setControllerShow(Z)V

    .line 416
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setControllerShow(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 429
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->controllerShowHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 430
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->controllerShowHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 432
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->controllerShowHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 433
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->controllerShowHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public setDuration(I)V
    .locals 2

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cjf"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    return-void
.end method

.method public setSupportBrightnessGesture(Z)V
    .locals 0

    .line 420
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isSupportBrightnessGesture:Z

    return-void
.end method

.method public setSupportVolumeGesture(Z)V
    .locals 0

    .line 424
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->isSupportVolumeGesture:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->x_title_text:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setVideoView(Lcom/xiaopeng/xui/widget/media/IVideoView;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

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

    const/4 v0, 0x1

    .line 456
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->setControllerShow(Z)V

    return-void
.end method

.method public stopPlay()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoInsideLayout;->progressUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
