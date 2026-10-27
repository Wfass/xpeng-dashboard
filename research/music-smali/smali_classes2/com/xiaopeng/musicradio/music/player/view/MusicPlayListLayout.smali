.class public Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "MusicPlayListLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/player/view/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/player/view/e;",
        "Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/player/view/e;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicPlayListLayout"


# instance fields
.field private mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

.field private mFirstVisibleItemPosition:I

.field private mLastVisibleItemPosition:I

.field protected mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

.field private mRvState:I

.field private mScrollRun:Ljava/lang/Runnable;

.field private mUpdateDurationRun:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRvState:I

    .line 224
    new-instance p1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$4;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$4;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    .line 240
    new-instance p1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$5;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$5;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mUpdateDurationRun:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRvState:I

    .line 224
    new-instance p1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$4;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$4;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    .line 240
    new-instance p1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$5;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$5;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mUpdateDurationRun:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRvState:I

    .line 224
    new-instance p1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$4;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$4;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    .line 240
    new-instance p1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$5;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$5;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mUpdateDurationRun:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mFirstVisibleItemPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mFirstVisibleItemPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mLastVisibleItemPosition:I

    return p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->scrollToPlay()V

    return-void
.end method

.method static synthetic access$102(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mLastVisibleItemPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/music/player/view/k;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;IZ)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->refreshLoadMoreState(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRvState:I

    return p0
.end method

.method static synthetic access$602(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRvState:I

    return p1
.end method

.method static synthetic access$700(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->request()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private refreshLoadMoreState(IZ)V
    .locals 1

    const/4 p2, 0x1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/view/k;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/k;->i()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 136
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 137
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/music/player/view/k;->a(Ljava/util/List;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/view/k;->f()Z

    move-result p1

    if-nez p1, :cond_1

    .line 141
    new-instance p1, Lcom/xiaopeng/musicradio/music/player/view/k$d;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/music/player/view/k$d;-><init>()V

    .line 142
    iput-boolean p2, p1, Lcom/xiaopeng/musicradio/music/player/view/k$d;->f:Z

    .line 143
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/k;->i()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 144
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/k;->a(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private request()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->f()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private scrollToPlay()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->c()I

    move-result v0

    .line 233
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->a(I)V

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->b()V

    .line 236
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mUpdateDurationRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mUpdateDurationRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected createAdapter()Lcom/xiaopeng/musicradio/music/player/view/k;
    .locals 2

    .line 121
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;
    .locals 1

    .line 65
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 70
    sget v0, Lbez$d;->rv_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 206
    sget v0, Lbez$f;->layout_music_play_list:I

    return v0
.end method

.method protected getItemBottom()I
    .locals 1

    .line 129
    sget v0, Lbez$b;->music_playlist_bottom:I

    return v0
.end method

.method protected getItemPadding()I
    .locals 1

    .line 125
    sget v0, Lbez$b;->music_playlist_padding:I

    return v0
.end method

.method public notifyList()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/k;->notifyDataSetChanged()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 249
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 267
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_1

    const-string p1, "VIEW_PLAY_LIST"

    if-nez p2, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->scrollToPlay()V

    .line 271
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->stopScroll()V

    .line 274
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshColor(IIII)V
    .locals 0

    .line 282
    iget-object p4, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 p4, -0x1

    if-ne p1, p4, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lapo;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 286
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lbez$a;->player_vip_label:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lbez$a;->player_common_tag_bg_day:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/musicradio/music/player/view/k;->a(II)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/musicradio/music/player/view/k;->a(II)V

    :goto_0
    return-void
.end method

.method public refreshLoadState(IZ)V
    .locals 0

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->refreshLoadMoreState(IZ)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/view/k;->a(Lcom/xiaopeng/musicradio/music/player/view/k$c;)V

    return-void
.end method

.method protected setView()V
    .locals 5

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getItemPadding()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getItemBottom()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 78
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    new-instance v3, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    new-instance v2, Lcom/xiaopeng/musicradio/commonui/widget/b;

    invoke-direct {v2, v1}, Lcom/xiaopeng/musicradio/commonui/widget/b;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->createAdapter()Lcom/xiaopeng/musicradio/music/player/view/k;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    const-string v0, "MusicPlayListLayout"

    const-string v1, "setView: ====== "

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->bB:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->a(Ljava/lang/String;Lbxu;ZZ)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->c(I)V

    .line 85
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->enableViewVuiMode(Z)V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 294
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->setVisibility(I)V

    .line 297
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->b()V

    :cond_0
    return-void
.end method

.method public submitList(Ljava/util/List;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/music/player/view/k$d;",
            ">;Z)V"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/k;->getItemCount()I

    move-result v0

    .line 213
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/music/player/view/k;->a(Ljava/util/List;)V

    .line 214
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->b(I)V

    if-eqz p2, :cond_2

    if-eqz v0, :cond_0

    .line 216
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne v0, p1, :cond_2

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->c()I

    move-result p1

    .line 219
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 220
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mScrollRun:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public updateList()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 260
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mFirstVisibleItemPosition:I

    .line 261
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mLastVisibleItemPosition:I

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mAdapter:Lcom/xiaopeng/musicradio/music/player/view/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/view/k;->j()V

    return-void
.end method
