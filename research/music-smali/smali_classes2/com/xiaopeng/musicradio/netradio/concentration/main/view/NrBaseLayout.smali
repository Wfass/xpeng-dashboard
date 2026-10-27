.class public abstract Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "NrBaseLayout.java"

# interfaces
.implements Lbxt;
.implements Lcom/xiaopeng/musicradio/netradio/main/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/netradio/main/view/a;",
        "Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter<",
        "Lcom/xiaopeng/musicradio/netradio/main/view/a;",
        ">;>;",
        "Lbxt;",
        "Lcom/xiaopeng/musicradio/netradio/main/view/a;"
    }
.end annotation


# instance fields
.field public mAdapter:Lbkd;

.field public mContext:Landroid/content/Context;

.field public mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field public mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field public mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mThemeViewModel:Lapr;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mThemeViewModel:Lapr;

    return-void
.end method


# virtual methods
.method public getData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->showLoadingTip(I)V

    .line 82
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 83
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mAdapter:Lbkd;

    invoke-virtual {v1}, Lbkd;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 84
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mAdapter:Lbkd;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lbkd;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mAdapter:Lbkd;

    invoke-virtual {v1, p1, v0}, Lbkd;->a(Ljava/util/List;Z)V

    .line 88
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mAdapter:Lbkd;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lbkd;->notifyItemRangeChanged(II)V

    .line 90
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 150
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onAttachedToWindow()V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 155
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onDetachedFromWindow()V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x2

    .line 70
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showLoadingTip(I)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 137
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/4 p1, 0x3

    .line 76
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->showLoadingTip(I)V

    return-void
.end method

.method public updatePlayState(Z)V
    .locals 2

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mAdapter:Lbkd;

    invoke-virtual {p1}, Lbkd;->g()I

    move-result p1

    if-eq p1, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mAdapter:Lbkd;

    invoke-virtual {v0, p1}, Lbkd;->notifyItemChanged(I)V

    .line 100
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout$1;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;)V

    invoke-static {p1}, Lbql;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mAdapter:Lbkd;

    invoke-virtual {p1}, Lbkd;->g()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 128
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mAdapter:Lbkd;

    invoke-virtual {v1, p1}, Lbkd;->notifyItemChanged(I)V

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->mAdapter:Lbkd;

    invoke-virtual {p1, v0}, Lbkd;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method
