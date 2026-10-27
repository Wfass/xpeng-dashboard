.class public Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;
.super Lcom/xiaopeng/xui/widget/XTextView;
.source "XSliderNumberIndicator.java"


# instance fields
.field private final mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

.field private mSimpleSlider:Lcom/xiaopeng/xui/widget/XSimpleSlider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p1, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator$1;-><init>(Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;)V

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    const-string p1, "tnum"

    .line 42
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->setFontFeatureSettings(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->mSimpleSlider:Lcom/xiaopeng/xui/widget/XSimpleSlider;

    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->mOnSlideChangeListener:Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XSimpleSlider;->removeOnSliderChangeListener(Lxiaopeng/widget/SimpleSlider$OnSlideChangeListener;)V

    :cond_0
    return-void
.end method

.method public setupWithSlider(Lcom/xiaopeng/xui/widget/XSimpleSlider;)V
    .locals 1

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

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/XSliderNumberIndicator;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
