.class public Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;
.super Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;
.source "NrAllRadioLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lbxt;


# static fields
.field private static final TAG:Ljava/lang/String; = "NRAllRadioLayout"


# instance fields
.field private mAllradioTv:Lcom/xiaopeng/xui/widget/XTextView;

.field private mChange:Lcom/xiaopeng/xui/widget/XImageButton;

.field private mChangeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMore:Lcom/xiaopeng/xui/widget/XImageView;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mTitleLlayout:Lcom/xiaopeng/xui/widget/XLinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 73
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mChangeItems:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mItems:Ljava/util/List;

    .line 66
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mChangeItems:Ljava/util/List;

    .line 64
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mItems:Ljava/util/List;

    .line 66
    new-instance p2, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p2}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mChangeItems:Ljava/util/List;

    .line 64
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mItems:Ljava/util/List;

    .line 66
    new-instance p2, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p2}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method private refreshAll()V
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$4;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    invoke-virtual {v0}, Lbkd;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    invoke-virtual {v2}, Lbkd;->getItemCount()I

    move-result v2

    const-string v3, "payload"

    invoke-virtual {v0, v1, v2, v3}, Lbkd;->notifyItemRangeChanged(IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setChange()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setVisibility(I)V

    return-void
.end method

.method private setTitleListener()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mTitleLlayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mMore:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public change()V
    .locals 5

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mChangeItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mChangeItems:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lbkd;->a(Ljava/util/List;Z)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mChangeItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mChangeItems:Ljava/util/List;

    invoke-interface {v0, v3, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mChangeItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mChangeItems:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 254
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->change()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->createPresenter()Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;
    .locals 1

    .line 90
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllRadioPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 2

    .line 96
    sget v0, Lbuc$d;->more:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mMore:Lcom/xiaopeng/xui/widget/XImageView;

    .line 97
    sget v0, Lbuc$d;->change:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    .line 98
    sget v0, Lbuc$d;->allradio_tv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAllradioTv:Lcom/xiaopeng/xui/widget/XTextView;

    .line 99
    sget v0, Lbuc$d;->title_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mTitleLlayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 100
    sget v0, Lbuc$d;->allradio_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    .line 102
    sget v0, Lbuc$d;->allradio_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVuiCanControlScroll(Z)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 176
    sget v0, Lbuc$f;->netradio_layout_allradio:I

    return v0
.end method

.method public getData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;)V"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    const/4 v0, 0x0

    .line 268
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->showLoadingTip(I)V

    .line 269
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 270
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 271
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mChangeItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 272
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mChangeItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 274
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    invoke-virtual {v1}, Lbkd;->j()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 275
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eq v1, p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mItems:Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lbkd;->a(Ljava/util/List;Z)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mItems:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lbkd;->a(Ljava/util/List;Z)V

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lbkd;->notifyItemRangeChanged(II)V

    :goto_0
    return-void
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;)V
    .locals 2

    .line 108
    new-instance v0, Lbkd;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lbkd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    .line 109
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->handleInflate(Landroid/view/LayoutInflater;)V

    return-void
.end method

.method public notifySpeechChange()V
    .locals 0

    .line 207
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->refreshAll()V

    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 193
    sget v0, Lbuc$d;->title_layout:I

    if-ne p1, v0, :cond_0

    .line 194
    invoke-static {}, Lbkg;->b()V

    .line 195
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "/xpnetradio/activity/allradio"

    invoke-static {p1, v1, v0}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 197
    invoke-static {}, Lbkg;->e()V

    goto :goto_0

    .line 200
    :cond_0
    sget v0, Lbuc$d;->allradio_loading:I

    if-ne p1, v0, :cond_1

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/main/presenter/NrBasePresenter;->c()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 234
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 235
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    invoke-virtual {p1}, Lbkd;->notifyDataSetChanged()V

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->reviewOnScreenChange()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 212
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/netradio/concentration/main/view/NrBaseLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public reviewOnScreenChange()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mItems:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbkd;->a(Ljava/util/List;Z)V

    .line 261
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->setTitleListener()V

    .line 262
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->setChange()V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$2;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;)V

    invoke-virtual {v0, v1}, Lbkd;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mItemTipView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mChange:Lcom/xiaopeng/xui/widget/XImageButton;

    new-instance v1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$3;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 8

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    iget v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->al(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbkd;->a(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 116
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42100000    # 36.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    .line 117
    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    const/16 v1, 0x64

    .line 118
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->c(I)V

    .line 119
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 120
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$1;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout$1;-><init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mAdapter:Lbkd;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->enableViewVuiMode(Z)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemViewCacheSize(I)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-static {v0, v1}, Lbxo;->a(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 138
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->al(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 140
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->setTitleListener()V

    .line 141
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioLayout;->setChange()V

    return-void
.end method
