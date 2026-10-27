.class public Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;
.super Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
.source "MusicLoadingView.java"


# instance fields
.field private k:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->l:I

    return-void
.end method

.method private a()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 4

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->getMeasuredHeight()I

    move-result v1

    .line 80
    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->k:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getTopHeight()I

    move-result v2

    if-lez v2, :cond_0

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 81
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->setVisibility(I)V

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 83
    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->k:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getTopHeight()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 84
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 86
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->setVisibility(I)V

    .line 88
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->a()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 53
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->onLayout(ZIIII)V

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->b()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->onMeasure(II)V

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->b()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->onSizeChanged(IIII)V

    .line 37
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->b()V

    return-void
.end method

.method public setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->k:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->b()V

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    .line 60
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/common/MusicLoadingView;->a()V

    return-void
.end method
