.class public Lcom/xiaopeng/xui/widget/XSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "XSeekBar.java"

# interfaces
.implements Lcom/xiaopeng/xui/vui/VuiView;
.implements Lcom/xiaopeng/vui/commons/IVuiElementListener;


# instance fields
.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field protected mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 23
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->init()V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-static {p0, p2}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->init()V

    .line 31
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XSeekBar;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x0

    invoke-static {p0, p2, p3, v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->init()V

    .line 38
    invoke-virtual {p0, p0, p2}, Lcom/xiaopeng/xui/widget/XSeekBar;->initVui(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/XSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xui/widget/XSeekBar;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-object v0
.end method

.method private init()V
    .locals 1

    .line 42
    new-instance v0, Lcom/xiaopeng/xui/widget/XSeekBar$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XSeekBar$1;-><init>(Lcom/xiaopeng/xui/widget/XSeekBar;)V

    .line 65
    .local v0, "onSeekBarChangeListenerProxy":Landroid/widget/SeekBar$OnSeekBarChangeListener;
    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 66
    return-void
.end method

.method public static synthetic lambda$onVuiElementEvent$0(Lcom/xiaopeng/xui/widget/XSeekBar;Ljava/lang/Double;Landroid/view/View;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Double;
    .param p2, "view"    # Landroid/view/View;

    .line 121
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

    .line 122
    invoke-virtual {p1}, Ljava/lang/Double;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->setProgress(I)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 125
    .local v0, "offsetX":I
    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;II)V

    .line 126
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

    .line 105
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSeekBar;->releaseVui()V

    .line 107
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->onAttachedToWindow()V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 87
    :cond_0
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "iVuiElementBuilder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 111
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 75
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDetachedFromWindow()V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 95
    :cond_0
    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiEvent"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 116
    const-string v0, "SeekBar onVuiElementEvent"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->logD(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 118
    :cond_0
    invoke-virtual {p2, p2}, Lcom/xiaopeng/vui/commons/model/VuiEvent;->getEventValue(Lcom/xiaopeng/vui/commons/model/VuiEvent;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 119
    .local v1, "value":Ljava/lang/Double;
    if-eqz v1, :cond_1

    .line 120
    new-instance v0, Lcom/xiaopeng/xui/widget/-$$Lambda$XSeekBar$TblhEJ8EWsLpzlro7gSK773Zaig;

    invoke-direct {v0, p0, v1, p1}, Lcom/xiaopeng/xui/widget/-$$Lambda$XSeekBar$TblhEJ8EWsLpzlro7gSK773Zaig;-><init>(Lcom/xiaopeng/xui/widget/XSeekBar;Ljava/lang/Double;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSeekBar;->post(Ljava/lang/Runnable;)Z

    .line 127
    const/4 v0, 0x1

    return v0

    .line 129
    :cond_1
    return v0
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSeekBar;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 71
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 99
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setVisibility(I)V

    .line 100
    invoke-virtual {p0, p0, p1}, Lcom/xiaopeng/xui/widget/XSeekBar;->setVuiVisibility(Landroid/view/View;I)V

    .line 101
    return-void
.end method
