.class public Lcom/xiaopeng/xui/widget/media/XMediaController;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "XMediaController.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;
    }
.end annotation


# instance fields
.field customLayoutId:I

.field displayStyle:I

.field iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

.field isGestureDragging:Z

.field onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

.field progressUpdateHandler:Landroid/os/Handler;

.field progressUpdateRunnable:Ljava/lang/Runnable;

.field x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

.field x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

.field x_tv_duration:Lcom/xiaopeng/xui/widget/XTextView;

.field x_tv_progress:Lcom/xiaopeng/xui/widget/XTextView;

.field x_v_custom:Landroid/view/ViewGroup;

.field x_vs_custom:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p3, 0x0

    .line 30
    iput p3, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->displayStyle:I

    .line 31
    iput-boolean p3, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->isGestureDragging:Z

    .line 41
    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateHandler:Landroid/os/Handler;

    .line 147
    new-instance p4, Lcom/xiaopeng/xui/widget/media/XMediaController$2;

    invoke-direct {p4, p0}, Lcom/xiaopeng/xui/widget/media/XMediaController$2;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaController;)V

    iput-object p4, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateRunnable:Ljava/lang/Runnable;

    .line 57
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xui/widget/media/XMediaController;->setOrientation(I)V

    const/16 p4, 0x10

    .line 58
    invoke-virtual {p0, p4}, Lcom/xiaopeng/xui/widget/media/XMediaController;->setGravity(I)V

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_media_controller_layout:I

    invoke-virtual {p4, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->isInEditMode()Z

    move-result p4

    if-eqz p4, :cond_0

    return-void

    .line 63
    :cond_0
    sget-object p4, Lcom/xiaopeng/xpui/R$styleable;->XMediaController:[I

    invoke-virtual {p1, p2, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XMediaController_controller_display_style:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->displayStyle:I

    .line 65
    sget p2, Lcom/xiaopeng/xpui/R$styleable;->XMediaController_controller_custom_layout:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->customLayoutId:I

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->init()V

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/widget/media/XMediaController$1;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/media/XMediaController$1;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaController;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/media/XMediaController;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->updateDisplayUI()V

    return-void
.end method

.method public static getTimeByMillis(I)Ljava/lang/String;
    .locals 5

    .line 204
    div-int/lit16 p0, p0, 0x3e8

    if-lez p0, :cond_2

    .line 206
    div-int/lit8 v0, p0, 0x3c

    .line 207
    rem-int/lit8 p0, p0, 0x3c

    const-string v1, ""

    const-string v2, "0"

    const/16 v3, 0x9

    .line 208
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

    .line 209
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

    .line 210
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

.method private init()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->initView()V

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->initEvent()V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/xui/widget/media/-$$Lambda$XMediaController$06s4OuMpxgGg7UxWav2v4NUcSrc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/media/-$$Lambda$XMediaController$06s4OuMpxgGg7UxWav2v4NUcSrc;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaController;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    new-instance v1, Lcom/xiaopeng/xui/widget/media/XMediaController$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/media/XMediaController$3;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaController;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setOnSlideChangeListener(Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 82
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_ib_play:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 83
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_tv_progress:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_tv_progress:Lcom/xiaopeng/xui/widget/XTextView;

    .line 84
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_slider_current_progress:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    .line 85
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_tv_duration:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_tv_duration:Lcom/xiaopeng/xui/widget/XTextView;

    .line 86
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_vs_custom:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_vs_custom:Landroid/view/ViewStub;

    .line 87
    iget v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->customLayoutId:I

    if-lez v1, :cond_0

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_vs_custom:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method private updateDisplayUI()V
    .locals 5

    .line 120
    iget v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->displayStyle:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$color;->x_color_text_1:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 125
    instance-of v2, v0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 126
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/xiaopeng/xpui/R$color;->x_color_text_1:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_tv_duration:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$color;->x_color_text_1:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_tv_progress:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$color;->x_color_text_1:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    goto :goto_2

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

    const v2, -0x1e1d1b

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 135
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 137
    instance-of v3, v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 138
    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_tv_duration:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_tv_progress:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method public finishGestureDrag()V
    .locals 4

    const/4 v0, 0x0

    .line 286
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->isGestureDragging:Z

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->seekTo(I)V

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public gestureDragTo(I)V
    .locals 2

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->isGestureDragging:Z

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getUIProgress()I
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getProgress()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$initEvent$0$XMediaController(Landroid/view/View;)V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 162
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 163
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {p1, v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->setPlayState(I)V

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    if-eqz p1, :cond_1

    .line 165
    invoke-interface {p1, v1}, Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;->onPlayStateChanged(I)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 247
    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->setPlayState(I)V

    .line 248
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 240
    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->setPlayState(I)V

    .line 241
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setCustomLayoutId(I)V
    .locals 1

    .line 112
    iput p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->customLayoutId:I

    if-lez p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_vs_custom:Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_vs_custom:Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method public setDisplayStyle(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->displayStyle:I

    .line 268
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    return-void
.end method

.method public setOnMediaControlListener(Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    return-void
.end method

.method public setSource(Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->setSource(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    :cond_0
    return-void
.end method

.method public setVideoView(Lcom/xiaopeng/xui/widget/media/IVideoView;)V
    .locals 1

    .line 217
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz p1, :cond_0

    .line 219
    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/widget/media/IVideoView;->setMediaController(Lcom/xiaopeng/xui/widget/media/XMediaController;)V

    .line 220
    new-instance v0, Lcom/xiaopeng/xui/widget/media/XMediaController$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/media/XMediaController$4;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaController;)V

    invoke-interface {p1, v0}, Lcom/xiaopeng/xui/widget/media/IVideoView;->setOnMediaCallBack(Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;)V

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 254
    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->setPlayState(I)V

    .line 255
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_2

    .line 95
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-interface {v0}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getDuration()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setMax(I)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getDuration()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setDragRange(II)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_tv_duration:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getDuration()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getTimeByMillis(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_tv_progress:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getProgress()I

    move-result v1

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getTimeByMillis(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getPlayState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageButton;->setSelected(Z)V

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageButton;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->updateDisplayUI()V

    return-void
.end method
