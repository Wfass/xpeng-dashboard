.class public Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "ProgramChoiceFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/main/view/a;
.implements Lcom/xiaopeng/musicradio/program/choice/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/program/fragment/choice"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/program/choice/view/b;",
        "Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/main/view/a;",
        "Lcom/xiaopeng/musicradio/program/choice/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProgramChoiceFragment"


# instance fields
.field private SPAN_COUNT:I

.field itemDecorationFor1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

.field itemDecorationFor2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

.field itemDecorationForFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBannerItem:Lbmi;

.field protected mFirstVisibleItemPosition:I

.field private mGuessLikeItem:Lbmj;

.field mItemClickListener:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

.field private mLastVisibleItemPosition:I

.field protected mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

.field protected mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

.field protected mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

.field private mMultiTypeAdapter:Lbma;

.field protected mRankFull1P3Count:I

.field protected mRankFull2P3Count:I

.field protected mRankFullSpanCount:I

.field private mRankItemCount:I

.field private mRankList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;",
            ">;"
        }
    .end annotation
.end field

.field private mRankTitleCount:I

.field protected mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

.field protected mRmMaxCount:I

.field private mSpanSizeLookup1P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mSpanSizeLookup2P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mSpanSizeLookupFull:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mTotalItemCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankList:Ljava/util/List;

    .line 73
    new-instance v0, Lbmi;

    invoke-direct {v0}, Lbmi;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mBannerItem:Lbmi;

    .line 74
    new-instance v0, Lbmj;

    invoke-direct {v0}, Lbmj;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mGuessLikeItem:Lbmj;

    const/4 v0, 0x6

    .line 89
    iput v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankFullSpanCount:I

    const/4 v0, 0x4

    .line 90
    iput v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankFull2P3Count:I

    const/4 v1, 0x3

    .line 91
    iput v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankFull1P3Count:I

    .line 94
    iput v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->SPAN_COUNT:I

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mLastVisibleItemPosition:I

    .line 98
    iput v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mTotalItemCount:I

    .line 100
    iput v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankTitleCount:I

    .line 101
    iput v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankItemCount:I

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mTotalItemCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mLastVisibleItemPosition:I

    return p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mLastVisibleItemPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->toPlay(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->toOpenDetail(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->toOpenAlbumList(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)Ljava/util/List;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private initMultiType()V
    .locals 7

    .line 158
    new-instance v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$2;-><init>(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mItemClickListener:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    .line 176
    new-instance v0, Lbma;

    invoke-direct {v0}, Lbma;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMultiTypeAdapter:Lbma;

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMultiTypeAdapter:Lbma;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMultiTypeAdapter:Lbma;

    const-class v1, Lbmi;

    new-instance v2, Lbme;

    invoke-direct {v2}, Lbme;-><init>()V

    invoke-virtual {v0, v1, v2}, Lbma;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMultiTypeAdapter:Lbma;

    invoke-virtual {v0}, Lbma;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbmi;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMultiTypeAdapter:Lbma;

    const-class v1, Lbmj;

    new-instance v3, Lbmf;

    invoke-direct {v3}, Lbmf;-><init>()V

    invoke-virtual {v0, v1, v3}, Lbma;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMultiTypeAdapter:Lbma;

    invoke-virtual {v0}, Lbma;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbmj;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMultiTypeAdapter:Lbma;

    const-class v1, Lbml;

    new-instance v3, Lbmh;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mItemClickListener:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    invoke-direct {v3, v4}, Lbmh;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V

    invoke-virtual {v0, v1, v3}, Lbma;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMultiTypeAdapter:Lbma;

    invoke-virtual {v0}, Lbma;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbml;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 189
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMultiTypeAdapter:Lbma;

    const-class v1, Lbmk;

    new-instance v3, Lbmg;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mItemClickListener:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    invoke-direct {v3, v4}, Lbmg;-><init>(Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V

    invoke-virtual {v0, v1, v3}, Lbma;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMultiTypeAdapter:Lbma;

    invoke-virtual {v0}, Lbma;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbmk;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 193
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/16 v3, 0x18

    invoke-virtual {v1, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMultiTypeAdapter:Lbma;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mItemClickListener:Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;

    invoke-virtual {v0, v1}, Lbma;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e$a;)V

    .line 196
    new-instance v0, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankFull2P3Count:I

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    .line 197
    new-instance v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$3;-><init>(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mSpanSizeLookup2P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mSpanSizeLookup2P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 211
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankFull2P3Count:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbez$b;->item_space_50:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbez$b;->item_space_36:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5, v3, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->itemDecorationFor2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    .line 213
    new-instance v0, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankFull1P3Count:I

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    .line 214
    new-instance v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$4;-><init>(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mSpanSizeLookup1P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mSpanSizeLookup1P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 228
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankFull1P3Count:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbez$b;->item_space_50:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lbez$b;->item_space_36:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v0, v1, v5, v3, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->itemDecorationFor1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    .line 230
    new-instance v0, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankFullSpanCount:I

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    .line 231
    new-instance v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$5;-><init>(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mSpanSizeLookupFull:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mSpanSizeLookupFull:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 245
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankFullSpanCount:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbez$b;->item_space_50:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lbez$b;->item_space_36:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v0, v1, v5, v3, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->itemDecorationForFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setHasFixedSize(Z)V

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    new-instance v1, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$6;-><init>(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setOnTipsViewClick(Landroid/view/View$OnClickListener;)V

    .line 258
    sget v0, Lbez$e;->content_top_spacing:I

    invoke-static {v0}, Lbxo;->b(I)I

    move-result v0

    .line 259
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    new-instance v2, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-direct {v2, v5, v5, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 260
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->onLoading()V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->c()V

    .line 262
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->checkIdleViewInit()V

    return-void
.end method

.method private reviewOnScreenChange(Z)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->itemDecorationForFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->itemDecorationFor2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->itemDecorationFor1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->itemDecorationFor2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->itemDecorationFor1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->itemDecorationForFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 379
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->setListView(Z)V

    return-void
.end method

.method private setListView(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 383
    iget-object v1, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankList:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v1, "ProgramChoiceFragment"

    const-string v2, "updateHotRanks: rank list is null"

    .line 384
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x7

    .line 389
    iget-object v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 390
    iget-object v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    iget-object v3, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mBannerItem:Lbmi;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    iget-object v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    iget-object v3, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mGuessLikeItem:Lbmj;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 393
    iput v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankTitleCount:I

    .line 394
    iput v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankItemCount:I

    .line 395
    iget v3, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankFullSpanCount:I

    iput v3, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRmMaxCount:I

    .line 396
    iget-object v3, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    iget v3, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankFull2P3Count:I

    iput v3, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRmMaxCount:I

    goto :goto_0

    .line 398
    :cond_1
    iget-object v3, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 399
    iget v3, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankFull1P3Count:I

    iput v3, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRmMaxCount:I

    .line 401
    :cond_2
    :goto_0
    iget-object v3, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;

    .line 402
    iget-object v6, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    new-instance v7, Lbml;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->getRankName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->getRankId()I

    move-result v9

    invoke-direct {v7, v8, v9, v1}, Lbml;-><init>(Ljava/lang/String;II)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    iget v6, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankTitleCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankTitleCount:I

    .line 405
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->getAlbumInfos()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v13, v2

    move v14, v4

    move v4, v13

    .line 406
    :goto_2
    iget v7, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRmMaxCount:I

    if-ge v4, v7, :cond_4

    if-ge v4, v6, :cond_3

    .line 408
    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->getAlbumInfos()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 409
    iget-object v15, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    new-instance v12, Lbmk;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->getRankName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->getRankId()I

    move-result v10

    move-object v7, v12

    move v11, v13

    move-object v2, v12

    move v12, v14

    invoke-direct/range {v7 .. v12}, Lbmk;-><init>(Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;III)V

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankItemCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankItemCount:I

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 414
    :cond_3
    iget-object v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    new-instance v15, Lbmk;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->getRankName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;->getRankId()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v15

    invoke-direct/range {v7 .. v12}, Lbmk;-><init>(Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;III)V

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v4, v14

    const/4 v2, 0x0

    goto :goto_1

    .line 419
    :cond_5
    iget-object v1, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMultiTypeAdapter:Lbma;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    invoke-virtual {v1, v2}, Lbma;->a(Ljava/util/List;)V

    .line 420
    iget v1, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mLastVisibleItemPosition:I

    if-lez v1, :cond_8

    iget v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mTotalItemCount:I

    if-lez v2, :cond_8

    .line 421
    iget v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mFirstVisibleItemPosition:I

    if-nez v2, :cond_6

    .line 422
    iget-object v1, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->d(I)V

    goto :goto_4

    .line 424
    :cond_6
    iget-object v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mTotalItemCount:I

    div-int/2addr v1, v2

    .line 425
    iget-object v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_7

    .line 426
    iget-object v1, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 428
    :cond_7
    iget-object v2, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->d(I)V

    .line 431
    :cond_8
    :goto_4
    iget-object v1, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMultiTypeAdapter:Lbma;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lbma;->notifyItemChanged(I)V

    .line 432
    iget-object v1, v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/16 v2, 0x320

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->updateVuiScene(I)V

    return-void
.end method

.method private toOpenAlbumList(I)V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 284
    instance-of v0, p1, Lbml;

    if-eqz v0, :cond_1

    .line 285
    check-cast p1, Lbml;

    .line 287
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lbml;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lbml;->a()I

    move-result v2

    const-string v3, "/program/fragment/sub/rank"

    invoke-static {v0, v3, v1, v2}, Lbmz;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    invoke-virtual {p1}, Lbml;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbmx;->f(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private toOpenDetail(I)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 297
    instance-of v0, p1, Lbmk;

    if-eqz v0, :cond_1

    .line 298
    check-cast p1, Lbmk;

    invoke-virtual {p1}, Lbmk;->d()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object p1

    .line 299
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lbmz;->a(Landroid/content/Context;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private toPlay(I)V
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p1, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 308
    instance-of v0, p1, Lbmk;

    if-eqz v0, :cond_1

    .line 309
    check-cast p1, Lbmk;

    invoke-virtual {p1}, Lbmk;->d()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    .line 311
    invoke-virtual {p1}, Lbmk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lbmx;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Lbmk;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lbmx;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected checkIdleViewInit()V
    .locals 4

    .line 266
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0, p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->a(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 269
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/program/a;->a()Lcom/xiaopeng/musicradio/program/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/a;->d()V

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$7;-><init>(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method protected createFragmentContext()Lcom/xiaopeng/musicradio/commonui/base/b;
    .locals 1

    .line 327
    invoke-static {}, Lcom/xiaopeng/musicradio/program/a;->a()Lcom/xiaopeng/musicradio/program/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/a;->r()Lcom/xiaopeng/musicradio/commonui/base/b;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->createPresenter()Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;
    .locals 1

    .line 144
    new-instance v0, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 110
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->choice_recyclerview:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    .line 111
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 105
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->fragment_program_choice:I

    return v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Music_Program_Choice"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->bu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 154
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->an(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 355
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "ProgramChoiceFragment"

    const-string v0, "onConfigurationChanged: ======"

    .line 356
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .line 318
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroyView()V

    .line 319
    invoke-static {}, Lcom/xiaopeng/musicradio/program/a;->a()Lcom/xiaopeng/musicradio/program/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/a;->q()V

    .line 320
    invoke-static {}, Lcom/xiaopeng/musicradio/program/a;->a()Lcom/xiaopeng/musicradio/program/a;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankTitleCount:I

    iget v2, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankItemCount:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/program/a;->a(II)V

    .line 321
    invoke-static {}, Lcom/xiaopeng/musicradio/program/a;->a()Lcom/xiaopeng/musicradio/program/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/a;->c()V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroyView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankTitleCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramChoiceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDone()V
    .locals 2

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    .line 475
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setVisibility(I)V

    const-string v0, "ProgramChoiceFragment"

    const-string v1, "onDone: =============== "

    .line 476
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFail()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    .line 469
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setVisibility(I)V

    return-void
.end method

.method public onIdleViewInit()V
    .locals 0

    return-void
.end method

.method public onLoading()V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setTipsState(I)V

    .line 482
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setVisibility(I)V

    const-string v0, "ProgramChoiceFragment"

    const-string v1, "onLoading: ==========="

    .line 483
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 337
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNewIntent: ======="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgramChoiceFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 349
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onPause()V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause: =============="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramChoiceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 343
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: ========="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramChoiceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected preCacheLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected reviewOnScreenChange()V
    .locals 1

    const/4 v0, 0x1

    .line 361
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->reviewOnScreenChange(Z)V

    return-void
.end method

.method public selectElement(I)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->c(I)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    new-instance v1, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$1;-><init>(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method protected setView()V
    .locals 5

    .line 116
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    const-string v0, "ProgramChoiceFragment"

    const-string v1, "setView: =========="

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->initMultiType()V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->ap(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->initVuiAttr(Ljava/lang/String;Lbxu;ZZ)V

    .line 121
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->onBuildScene()V

    .line 122
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->reviewOnScreenChange(Z)V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateHotRanks(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/HotRankListBean$DataBean$RankBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ProgramChoiceFragment"

    if-nez p1, :cond_0

    const-string p1, "updateHotRanks: ranklist is null"

    .line 438
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0, p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->b(Landroidx/fragment/app/Fragment;)V

    return-void

    .line 442
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRankList:Ljava/util/List;

    .line 443
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->setVisibility(I)V

    .line 444
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->reviewOnScreenChange(Z)V

    .line 445
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mMultiTypeAdapter:Lbma;

    invoke-virtual {p1}, Lbma;->notifyDataSetChanged()V

    const-string p1, "updateHotRanks: =========end==="

    .line 446
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onBuildScene()V

    .line 448
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/ProgramChoicePresenter;->d()V

    .line 449
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->a()Lcom/xiaopeng/musicradio/utils/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/utils/c;->e()Z

    move-result p1

    if-nez p1, :cond_1

    .line 450
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    new-instance v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$8;-><init>(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->post(Ljava/lang/Runnable;)Z

    .line 457
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;

    new-instance v0, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$9;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment$9;-><init>(Lcom/xiaopeng/musicradio/program/ProgramChoiceFragment;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/VuiRecyclerViewWithLoading;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updatePlayState()V
    .locals 0

    return-void
.end method
