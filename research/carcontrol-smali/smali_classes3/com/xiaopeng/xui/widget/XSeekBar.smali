.class public Lcom/xiaopeng/xui/widget/XSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "XSeekBar.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;
.implements Lcom/xiaopeng/xui/vui/XuiView;


# instance fields
.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->init()V

    .line 33
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XSeekBar;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 38
    invoke-static {p0, p2, p3, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->init()V

    .line 40
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XSeekBar;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object p0
.end method

.method private init()V
    .locals 1

    .line 44
    new-instance v0, Lcom/xiaopeng/xui/widget/XSeekBar$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XSeekBar$1;-><init>(Lcom/xiaopeng/xui/widget/XSeekBar;)V

    .line 67
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 109
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->releaseVui()V

    return-void
.end method

.method public synthetic lambda$onVuiElementEvent$0$XSeekBar(Ljava/lang/Double;Landroid/view/View;)V
    .locals 4

    .line 125
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSeekBar;->setProgress(I)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->getWidth()I

    move-result p1

    int-to-double v2, p1

    mul-double/2addr v0, v2

    double-to-int p1, v0

    const/4 v0, 0x0

    .line 129
    invoke-static {p2, p1, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;II)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 85
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->onAttachedToWindow()V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->vuiViewAttachedToWindow()V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 77
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 94
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDetachedFromWindow()V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->vuiViewDetachedFromWindow()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 157
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;->onVisibilityChanged(Landroid/view/View;I)V

    .line 158
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/widget/XSeekBar;->onVisibilityChangedThemeRefresh(I)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 1

    const-string v0, "SeekBar onVuiElementEvent"

    .line 120
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->logD(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 122
    :cond_0
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    if-eqz p2, :cond_1

    .line 124
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSeekBar$twr8Odj0LvE20-byQgA0ZzaiIm8;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XSeekBar$twr8Odj0LvE20-byQgA0ZzaiIm8;-><init>(Lcom/xiaopeng/xui/widget/XSeekBar;Ljava/lang/Double;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 138
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    .line 139
    invoke-static {}, Lcom/xiaopeng/xui/utils/FlavorUtils;->isV5()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 141
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSeekBar;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 143
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSeekBar;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setThemeRefreshable(Z)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setThemeRefreshable(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setVisibility(I)V

    .line 104
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XSeekBar;->setVuiVisibility(Landroid/view/View;I)V

    return-void
.end method
