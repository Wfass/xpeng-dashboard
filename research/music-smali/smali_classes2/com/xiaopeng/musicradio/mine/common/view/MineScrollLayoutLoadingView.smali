.class public Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;
.super Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;
.source "MineScrollLayoutLoadingView.java"


# instance fields
.field private k:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

.field private l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 19
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->l:I

    return-void
.end method

.method private a()V
    .locals 3

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->getMeasuredHeight()I

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->k:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 68
    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->k:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->getTopHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->l:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 69
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;I)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->k:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    .line 46
    iput p2, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->l:I

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->a()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 52
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->onLayout(ZIIII)V

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->a()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->onMeasure(II)V

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->a()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView;->onSizeChanged(IIII)V

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->a()V

    return-void
.end method

.method public setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->k:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    .line 41
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->a()V

    return-void
.end method
