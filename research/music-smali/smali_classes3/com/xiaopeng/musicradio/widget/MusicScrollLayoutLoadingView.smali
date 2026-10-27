.class public Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;
.super Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
.source "MusicScrollLayoutLoadingView.java"


# instance fields
.field private k:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 3

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->getMeasuredHeight()I

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 56
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->k:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 59
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->k:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getTopHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 60
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 43
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->onLayout(ZIIII)V

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->a()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->onMeasure(II)V

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->a()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->onSizeChanged(IIII)V

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->a()V

    return-void
.end method

.method public setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->k:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayoutLoadingView;->a()V

    return-void
.end method
