.class public Lcom/xiaopeng/xui/widget/media/XVideoLayout;
.super Lcom/xiaopeng/xui/widget/XRelativeLayout;
.source "XVideoLayout.java"


# static fields
.field public static final TYPE_INSIDE:I = 0x1

.field public static final TYPE_OUTSIDE:I


# instance fields
.field controllerShowHandler:Landroid/os/Handler;

.field private currentLayoutType:I

.field mAudioManager:Landroid/media/AudioManager;

.field window:Landroid/view/Window;

.field xVideoItem:Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

.field x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field x_duration:Lcom/xiaopeng/xui/widget/XTextView;

.field x_gesture_controller:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

.field x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

.field x_param_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field x_progress_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field x_seek_to:Lcom/xiaopeng/xui/widget/XTextView;

.field x_slider_icon:Lcom/xiaopeng/xui/widget/XImageView;

.field x_slider_title:Lcom/xiaopeng/xui/widget/XTextView;

.field x_title_back:Lcom/xiaopeng/xui/widget/XImageButton;

.field x_title_text:Lcom/xiaopeng/xui/widget/XTextView;

.field x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

.field x_video_view:Lcom/xiaopeng/xui/widget/media/XVideoView;

.field x_video_window:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
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

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->currentLayoutType:I

    .line 67
    new-instance v1, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/xui/widget/media/XVideoLayout$1;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoLayout;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->controllerShowHandler:Landroid/os/Handler;

    .line 105
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_video_layout:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XVideoLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 107
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XVideoLayout_video_layout_type:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->currentLayoutType:I

    .line 108
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->init()V

    .line 110
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->initData()V

    .line 111
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->initEvent()V

    .line 112
    new-instance v0, Lcom/xiaopeng/xui/widget/media/-$$Lambda$XVideoLayout$vad0ksy5yuCXoIE_n9ySCQBrb2U;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/media/-$$Lambda$XVideoLayout$vad0ksy5yuCXoIE_n9ySCQBrb2U;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->post(Ljava/lang/Runnable;)Z

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xui/widget/media/-$$Lambda$XVideoLayout$VDBIqhETNYdNuUWRX8DOC4dRB04;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/media/-$$Lambda$XVideoLayout$VDBIqhETNYdNuUWRX8DOC4dRB04;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    .line 41
    iget v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->currentLayoutType:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->showBrightnessSlider()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoLayout;

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getBrightness()F

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xui/widget/media/XVideoLayout;F)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoLayout;
    .param p1, "x1"    # F

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->setBrightness(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xui/widget/media/XVideoLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoLayout;
    .param p1, "x1"    # I

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->showVolumeSlider(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xui/widget/media/XVideoLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XVideoLayout;
    .param p1, "x1"    # I

    .line 41
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->showProgressSlider(I)V

    return-void
.end method

.method private getBrightness()F
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->window:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->window:Landroid/view/Window;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 296
    .local v0, "result":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 297
    return v0

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 300
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 302
    .local v2, "value":I
    :try_start_0
    const-string v3, "screen_brightness"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 305
    goto :goto_0

    .line 303
    :catch_0
    move-exception v3

    .line 304
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 306
    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    int-to-float v3, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    return v3
.end method

.method private init()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->initView()V

    .line 118
    return-void
.end method

.method private initData()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_view:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->setVideoView(Lcom/xiaopeng/xui/widget/media/IVideoView;)V

    .line 141
    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_gesture_controller:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    new-instance v1, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout$2;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->setGesturePlayerListener(Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;)V

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_title_back:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/xui/widget/media/XVideoLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout$3;-><init>(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    return-void
.end method

.method private initView()V
    .locals 2

    .line 121
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_video_window:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_window:Landroid/view/View;

    .line 122
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_video_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/media/XVideoView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_view:Lcom/xiaopeng/xui/widget/media/XVideoView;

    .line 123
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_param_slider:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    .line 124
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_gesture_controller:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_gesture_controller:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    .line 125
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_title_back:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_title_back:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 126
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_title_text:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_title_text:Lcom/xiaopeng/xui/widget/XTextView;

    .line 127
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_titlebar_frame:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 128
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_controller_frame:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 129
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_video_controller:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/media/XMediaController;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    .line 130
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_slider_icon:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_slider_icon:Lcom/xiaopeng/xui/widget/XImageView;

    .line 131
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_slider_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_slider_title:Lcom/xiaopeng/xui/widget/XTextView;

    .line 132
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_param_slider_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 133
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_progress_slider_content:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_progress_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 134
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_seek_to:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_seek_to:Lcom/xiaopeng/xui/widget/XTextView;

    .line 135
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_duration:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_duration:Lcom/xiaopeng/xui/widget/XTextView;

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->currentLayoutType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->setDisplayStyle(I)V

    .line 137
    return-void
.end method

.method public static synthetic lambda$VDBIqhETNYdNuUWRX8DOC4dRB04(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->updateLayoutType()V

    return-void
.end method

.method public static synthetic lambda$vad0ksy5yuCXoIE_n9ySCQBrb2U(Lcom/xiaopeng/xui/widget/media/XVideoLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->updateLayoutType()V

    return-void
.end method

.method private setBrightness(F)V
    .locals 5
    .param p1, "brightness"    # F

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->window:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->window:Landroid/view/Window;

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 277
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 278
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 279
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 280
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 281
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    float-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    .line 282
    const v1, 0x3dcccccd    # 0.1f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 285
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->window:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 286
    return-void
.end method

.method private showBrightnessSlider()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_progress_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setMin(I)V

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setMax(I)V

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setDragRange(II)V

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_slider_icon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/xpui/R$drawable;->ic_brightness_s:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_slider_title:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lcom/xiaopeng/xpui/R$string;->x_video_brightness:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 244
    return-void
.end method

.method private showProgressSlider(I)V
    .locals 2
    .param p1, "duration"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_progress_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setMin(I)V

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setMax(I)V

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setDragRange(II)V

    .line 265
    return-void
.end method

.method private showVolumeSlider(I)V
    .locals 3
    .param p1, "maxVolume"    # I

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_progress_slider_content:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setMin(I)V

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setMax(I)V

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_param_slider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setDragRange(II)V

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_slider_icon:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/xpui/R$drawable;->ic_volume1_s:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_slider_title:Lcom/xiaopeng/xui/widget/XTextView;

    sget v1, Lcom/xiaopeng/xpui/R$string;->x_video_volume:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 255
    return-void
.end method

.method private updateLayoutType()V
    .locals 6

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_window:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 344
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 345
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 346
    iget v3, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->currentLayoutType:I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 347
    sget v3, Lcom/xiaopeng/xpui/R$id;->x_controller_frame:I

    invoke-virtual {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 348
    sget v1, Lcom/xiaopeng/xpui/R$id;->x_titlebar_frame:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 349
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$dimen;->x_common_slide_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$dimen;->x_common_slide_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 350
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 351
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 353
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1, v4, v4, v4, v4}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setPadding(IIII)V

    .line 354
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 355
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1, v4}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    .line 357
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_title_back:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$color;->x_color_text_1:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 358
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_title_text:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$color;->x_color_text_1:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 361
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/16 v2, 0x1ea

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 362
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget v3, Lcom/xiaopeng/xpui/R$drawable;->x_video_inside_top:I

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setBackgroundResource(I)V

    .line 363
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_titlebar_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/xiaopeng/xpui/R$dimen;->x_common_status_bar_height:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v4, v3, v4, v4}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setPadding(IIII)V

    .line 364
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 365
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget v2, Lcom/xiaopeng/xpui/R$drawable;->x_video_inside_bottom:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setBackgroundResource(I)V

    .line 366
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_title_back:Lcom/xiaopeng/xui/widget/XImageButton;

    const v2, -0x1e1d1b

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 367
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_title_text:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 369
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_window:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 370
    return-void
.end method


# virtual methods
.method public getCurrentLayoutType()I
    .locals 1

    .line 403
    iget v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->currentLayoutType:I

    return v0
.end method

.method public getMaxVolume()I
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->mAudioManager:Landroid/media/AudioManager;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method public getVolume()I
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->mAudioManager:Landroid/media/AudioManager;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 333
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onAttachedToWindow()V

    .line 334
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 338
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onDetachedFromWindow()V

    .line 340
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_controller_frame:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->setControllerShow(Z)V

    .line 399
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setControllerShow(Z)V
    .locals 2
    .param p1, "show"    # Z

    .line 373
    iget v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->currentLayoutType:I

    if-nez v0, :cond_0

    .line 374
    return-void

    .line 376
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 377
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->controllerShowHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->controllerShowHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 380
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->controllerShowHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->controllerShowHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 383
    :goto_0
    return-void
.end method

.method public setLayoutType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 386
    iget v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->currentLayoutType:I

    if-eq v0, p1, :cond_0

    .line 387
    iput p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->currentLayoutType:I

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->currentLayoutType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->setDisplayStyle(I)V

    .line 389
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->updateLayoutType()V

    .line 390
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->setControllerShow(Z)V

    .line 392
    :cond_0
    return-void
.end method

.method public setVideoItem(Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;)V
    .locals 2
    .param p1, "xVideoItem"    # Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    .line 415
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->xVideoItem:Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    .line 416
    if-nez p1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->stop()V

    .line 418
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_view:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/media/XVideoView;->setVideoItem(Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;)V

    .line 421
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_title_text:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->setVideoPath(Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 407
    new-instance v0, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    invoke-direct {v0}, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;-><init>()V

    .line 408
    .local v0, "xVideoItem":Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->setPath(Ljava/lang/String;)V

    .line 409
    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->xVideoItem:Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    .line 410
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_controller:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->setSource(Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;)V

    .line 411
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->x_video_view:Lcom/xiaopeng/xui/widget/media/XVideoView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/media/XVideoView;->setVideoItem(Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;)V

    .line 412
    return-void
.end method

.method public setVolume(I)V
    .locals 3
    .param p1, "progress"    # I

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->mAudioManager:Landroid/media/AudioManager;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XVideoLayout;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 315
    return-void
.end method
