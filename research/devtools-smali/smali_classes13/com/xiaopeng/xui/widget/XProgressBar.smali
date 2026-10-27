.class public Lcom/xiaopeng/xui/widget/XProgressBar;
.super Landroid/widget/ProgressBar;
.source "XProgressBar.java"


# instance fields
.field protected abs:Lcom/xiaopeng/xui/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p1}, Lcom/xiaopeng/xui/widget/XProgressBar;->a(Landroid/util/AttributeSet;II)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p1}, Lcom/xiaopeng/xui/widget/XProgressBar;->a(Landroid/util/AttributeSet;II)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lcom/xiaopeng/xui/widget/XProgressBar;->a(Landroid/util/AttributeSet;II)V

    .line 27
    return-void
.end method

.method private a(Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/a;->a(Landroid/view/View;Landroid/util/AttributeSet;II)Lcom/xiaopeng/xui/view/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XProgressBar;->abs:Lcom/xiaopeng/xui/view/a;

    .line 36
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 48
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XProgressBar;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XProgressBar;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onAttachedToWindow()V

    .line 52
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XProgressBar;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XProgressBar;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/view/a;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 44
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XProgressBar;->abs:Lcom/xiaopeng/xui/view/a;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XProgressBar;->abs:Lcom/xiaopeng/xui/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/view/a;->onDetachedFromWindow()V

    .line 60
    :cond_0
    return-void
.end method
