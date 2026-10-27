.class public Lcom/xiaopeng/musicradio/view/MusicItemLoadingView;
.super Lcom/xiaopeng/xui/view/XView;
.source "MusicItemLoadingView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getLoadingDrawable()Lcom/xiaopeng/xui/drawable/XLoadingDrawable;
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/MusicItemLoadingView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    instance-of v1, v0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    if-eqz v1, :cond_0

    .line 44
    check-cast v0, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 29
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onAttachedToWindow()V

    .line 30
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/MusicItemLoadingView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 34
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onDetachedFromWindow()V

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicItemLoadingView;->getLoadingDrawable()Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->cancelAnimations()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .line 50
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 51
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicItemLoadingView;->getLoadingDrawable()Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 53
    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method
