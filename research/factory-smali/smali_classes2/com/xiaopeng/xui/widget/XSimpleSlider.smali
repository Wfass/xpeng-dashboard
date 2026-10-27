.class public Lcom/xiaopeng/xui/widget/XSimpleSlider;
.super Lxiaopeng/widget/SimpleSlider;
.source "XSimpleSlider.java"


# instance fields
.field private mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 25
    sget v0, Lcom/xiaopeng/xpui/R$style;->XSimpleSlider:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 29
    sget v0, Lcom/xiaopeng/xpui/R$style;->XSimpleSlider:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lxiaopeng/widget/SimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/XViewDelegate;->create(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/XViewDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->getThemeViewModel()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xui/widget/-$$Lambda$1nSZItY1LxLjhgUMuj4enwCbqSg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$1nSZItY1LxLjhgUMuj4enwCbqSg;-><init>(Lcom/xiaopeng/xui/widget/XSimpleSlider;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 47
    invoke-super {p0}, Lxiaopeng/widget/SimpleSlider;->onAttachedToWindow()V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onAttachedToWindow()V

    .line 51
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 39
    invoke-super {p0, p1}, Lxiaopeng/widget/SimpleSlider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/XViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 55
    invoke-super {p0}, Lxiaopeng/widget/SimpleSlider;->onDetachedFromWindow()V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->mXViewDelegate:Lcom/xiaopeng/xui/view/XViewDelegate;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/XViewDelegate;->onDetachedFromWindow()V

    .line 59
    :cond_0
    return-void
.end method
