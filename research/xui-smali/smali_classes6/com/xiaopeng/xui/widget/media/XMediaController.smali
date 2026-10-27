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
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->displayStyle:I

    .line 31
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->isGestureDragging:Z

    .line 41
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateHandler:Landroid/os/Handler;

    .line 147
    new-instance v1, Lcom/xiaopeng/xui/widget/media/XMediaController$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/media/XMediaController$2;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaController;)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateRunnable:Ljava/lang/Runnable;

    .line 57
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->setOrientation(I)V

    .line 58
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xui/widget/media/XMediaController;->setGravity(I)V

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/xiaopeng/xpui/R$layout;->x_media_controller_layout:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    sget-object v1, Lcom/xiaopeng/xpui/R$styleable;->XMediaController:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 64
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XMediaController_controller_display_style:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->displayStyle:I

    .line 65
    sget v2, Lcom/xiaopeng/xpui/R$styleable;->XMediaController_controller_custom_layout:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->customLayoutId:I

    .line 66
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->init()V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/xui/widget/media/XMediaController$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/media/XMediaController$1;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaController;)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->addCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/media/XMediaController;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/media/XMediaController;

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->updateDisplayUI()V

    return-void
.end method

.method public static getTimeByMillis(I)Ljava/lang/String;
    .locals 7
    .param p0, "millis"    # I

    .line 204
    div-int/lit16 v0, p0, 0x3e8

    .line 205
    .local v0, "seconds":I
    if-lez v0, :cond_2

    .line 206
    div-int/lit8 v1, v0, 0x3c

    .line 207
    .local v1, "minutes":I
    rem-int/lit8 v2, v0, 0x3c

    .line 208
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

    .line 209
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

    .line 210
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

    .line 212
    .end local v1    # "minutes":I
    .end local v2    # "remainingSeconds":I
    .end local v3    # "remainingSecondsStr":Ljava/lang/String;
    .end local v4    # "minutesStr":Ljava/lang/String;
    :cond_2
    const-string v1, "00:00"

    return-object v1
.end method

.method private init()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->initView()V

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->initEvent()V

    .line 79
    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_ib_play:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/xui/widget/media/-$$Lambda$XMediaController$O1voyhqqsKCu7TOyz_04intFMXY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/media/-$$Lambda$XMediaController$O1voyhqqsKCu7TOyz_04intFMXY;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaController;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    new-instance v1, Lcom/xiaopeng/xui/widget/media/XMediaController$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/media/XMediaController$3;-><init>(Lcom/xiaopeng/xui/widget/media/XMediaController;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setOnSlideChangeListener(Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;)V

    .line 197
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
    iget v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->customLayoutId:I

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_vs_custom:Landroid/view/ViewStub;

    iget v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->customLayoutId:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_vs_custom:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    .line 91
    :cond_0
    return-void
.end method

.method public static synthetic lambda$initEvent$0(Lcom/xiaopeng/xui/widget/media/XMediaController;Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

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

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    move v0, v1

    .line 163
    .local v0, "platState":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xui/widget/media/IVideoView;->setPlayState(I)V

    .line 164
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;->onPlayStateChanged(I)V

    .line 168
    .end local v0    # "platState":I
    :cond_1
    return-void
.end method

.method private updateDisplayUI()V
    .locals 6

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
    nop

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 125
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 126
    move-object v2, v1

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xiaopeng/xpui/R$color;->x_color_text_1:I

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 123
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_0

    .line 130
    .end local v1    # "i":I
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
    nop

    .restart local v1    # "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, "v":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 138
    move-object v3, v1

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 135
    .end local v1    # "v":Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_1

    .line 142
    .end local v1    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_tv_duration:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_tv_progress:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 145
    :goto_2
    return-void
.end method


# virtual methods
.method public finishGestureDrag()V
    .locals 4

    .line 286
    const/4 v0, 0x0

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

    .line 289
    return-void
.end method

.method public gestureDragTo(I)V
    .locals 2
    .param p1, "position"    # I

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->isGestureDragging:Z

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->progressUpdateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setProgress(I)V

    .line 283
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

.method public pause()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->setPlayState(I)V

    .line 248
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    .line 250
    :cond_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->setPlayState(I)V

    .line 241
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    .line 243
    :cond_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "progress"    # I

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->seekTo(I)V

    .line 236
    :cond_0
    return-void
.end method

.method public setCustomLayoutId(I)V
    .locals 1
    .param p1, "customLayoutId"    # I

    .line 112
    iput p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->customLayoutId:I

    .line 113
    if-lez p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_vs_custom:Landroid/view/ViewStub;

    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_vs_custom:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_v_custom:Landroid/view/ViewGroup;

    .line 117
    :cond_0
    return-void
.end method

.method public setDisplayStyle(I)V
    .locals 0
    .param p1, "displayStyle"    # I

    .line 267
    iput p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->displayStyle:I

    .line 268
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    .line 269
    return-void
.end method

.method public setOnMediaControlListener(Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;)V
    .locals 0
    .param p1, "onMediaControlListener"    # Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    .line 200
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    .line 201
    return-void
.end method

.method public setSource(Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;)V
    .locals 2
    .param p1, "videoItem"    # Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/media/IVideoView$XVideoItem;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->setSource(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    .line 264
    :cond_0
    return-void
.end method

.method public setVideoView(Lcom/xiaopeng/xui/widget/media/IVideoView;)V
    .locals 1
    .param p1, "iVideoView"    # Lcom/xiaopeng/xui/widget/media/IVideoView;

    .line 217
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    .line 218
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

    .line 230
    return-void
.end method

.method public stop()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->setPlayState(I)V

    .line 255
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/media/XMediaController;->update()V

    .line 257
    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->x_slider_current_progress:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController;->iVideoView:Lcom/xiaopeng/xui/widget/media/IVideoView;

    invoke-interface {v1}, Lcom/xiaopeng/xui/widget/media/IVideoView;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->setMax(I)V

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

    nop

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

    .line 109
    return-void
.end method
