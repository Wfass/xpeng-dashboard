.class public Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "AVLoadingIndicatorView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AVLoadingIndicatorView"


# instance fields
.field private mIndicatorColor:I

.field private mIsPlaying:Z

.field private mLoadingView:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, v1, v0, v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    sget v0, Lcom/xiaopeng/musicradio/common/k$h;->AVLoadingIndicatorView:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    sget v0, Lcom/xiaopeng/musicradio/common/k$h;->AVLoadingIndicatorView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 48
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->AVLoadingIndicatorView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->AVLoadingIndicatorView_indicatorColor:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->mIndicatorColor:I

    .line 52
    new-instance p1, Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->mLoadingView:Lcom/xiaopeng/xui/widget/XImageView;

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->mLoadingView:Lcom/xiaopeng/xui/widget/XImageView;

    sget p2, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_playing_s:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 54
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x11

    .line 55
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 56
    iget-object p2, p0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->mLoadingView:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->mIndicatorColor:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setIndicatorColor(I)V

    .line 59
    sget-object p1, Lbya;->DISABLED:Lbya;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVuiMode(Lbya;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/4 v0, 0x4

    .line 82
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onAttachedToWindow()V

    .line 112
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->startAnimation()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 119
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->mIsPlaying:Z

    return-void
.end method

.method public setIndicator(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 63
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->mIndicatorColor:I

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->mLoadingView:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/by;->a(Landroid/widget/ImageView;I)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->startAnimation()V

    return-void
.end method

.method public smoothToHide()V
    .locals 1

    const/4 v0, 0x4

    .line 77
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    return-void
.end method

.method public smoothToShow()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->startAnimation()V

    return-void
.end method

.method public startAnimation()V
    .locals 2

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->mIsPlaying:Z

    .line 93
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->mIndicatorColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 94
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setIndicatorColor(I)V

    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->mIsPlaying:Z

    .line 100
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->mIndicatorColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 101
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setIndicatorColor(I)V

    :cond_0
    return-void
.end method
