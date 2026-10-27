.class public Lcom/xiaopeng/xui/widget/XSimpleSlider;
.super Lxiaopeng/widget/SimpleSlider;
.source "XSimpleSlider.java"


# instance fields
.field private abs:Lcom/xiaopeng/xui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 25
    sget v0, Lcom/xiaopeng/xpui/R$style;->XSimpleSlider:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 29
    sget v0, Lcom/xiaopeng/xpui/R$style;->XSimpleSlider:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/XSimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lxiaopeng/widget/SimpleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    invoke-static {p0, p2, p3, p4}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->abs:Lcom/xiaopeng/xui/view/a;

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/view/a;->qN()Lcom/xiaopeng/libtheme/ThemeViewModel;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/xui/widget/-$$Lambda$65XJjg0uFgxEO0A5UZku-7-83FI;

    invoke-direct {p2, p0}, Lcom/xiaopeng/xui/widget/-$$Lambda$65XJjg0uFgxEO0A5UZku-7-83FI;-><init>(Lcom/xiaopeng/xui/widget/XSimpleSlider;)V

    invoke-virtual {p1, p2}, Lcom/xiaopeng/libtheme/ThemeViewModel;->setCallback(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 47
    invoke-super {p0}, Lxiaopeng/widget/SimpleSlider;->onAttachedToWindow()V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 51
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lxiaopeng/widget/SimpleSlider;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 55
    invoke-super {p0}, Lxiaopeng/widget/SimpleSlider;->onDetachedFromWindow()V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSimpleSlider;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 59
    :cond_0
    return-void
.end method
