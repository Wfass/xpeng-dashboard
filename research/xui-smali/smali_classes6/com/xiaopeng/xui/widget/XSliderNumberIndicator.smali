.class public Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;
.super Lcom/xiaopeng/xui/widget/XTextView;
.source "XSliderNumberIndicator.java"


# instance fields
.field private final mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

.field private mSimpleSlider:Lcom/xiaopeng/xui/widget/XSimpleSlider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator$1;-><init>(Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    .line 42
    const-string v0, "tnum"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->mSimpleSlider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->mSimpleSlider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->removeOnSliderChangeListener(Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;)V

    .line 56
    :cond_0
    return-void
.end method

.method public setupWithSlider(Lcom/xiaopeng/xui/widget/XSimpleSlider;)V
    .locals 1
    .param p1, "slider"    # Lcom/xiaopeng/xui/widget/XSimpleSlider;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->mSimpleSlider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->removeOnSliderChangeListener(Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->addOnSliderChangeListener(Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;)V

    .line 49
    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method
