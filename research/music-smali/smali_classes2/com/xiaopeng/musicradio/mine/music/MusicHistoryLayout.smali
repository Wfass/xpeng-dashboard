.class public Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MusicHistoryLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/history/main/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/mine/history/main/view/a;",
        "Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/history/main/view/a;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

.field private mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

.field private mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

.field private mMusicHistoryAlbumView:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;

.field private mMusicHistoryMusicView:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryMusicView;

.field private mPosition:I

.field private mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

.field private mVuiMode:Lbya;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    sget-object p1, Lbya;->NORMAL:Lbya;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mVuiMode:Lbya;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    sget-object p1, Lbya;->NORMAL:Lbya;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mVuiMode:Lbya;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    sget-object p1, Lbya;->NORMAL:Lbya;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mVuiMode:Lbya;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;)Lcom/xiaopeng/musicradio/mine/music/MusicHistoryMusicView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mMusicHistoryMusicView:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryMusicView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;Lcom/xiaopeng/musicradio/mine/music/MusicHistoryMusicView;)Lcom/xiaopeng/musicradio/mine/music/MusicHistoryMusicView;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mMusicHistoryMusicView:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryMusicView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mPosition:I

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;)Lbya;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mVuiMode:Lbya;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;)Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mMusicHistoryAlbumView:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;)Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mMusicHistoryAlbumView:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;
    .locals 1

    .line 74
    new-instance v0, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineHistoryPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 2

    .line 79
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    .line 80
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->rv_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 81
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->loading_tips_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 205
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->music_history_layout:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 172
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 182
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 184
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 186
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object p1

    invoke-virtual {p1}, Lbea;->d()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 188
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object p1

    invoke-virtual {p1}, Lbea;->f()Z

    move-result p1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    .line 190
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object p1

    invoke-virtual {p1}, Lbea;->f()Z

    move-result p1

    goto :goto_0

    .line 192
    :cond_2
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object p1

    invoke-virtual {p1}, Lbea;->e()Z

    move-result p1

    :goto_0
    if-nez p1, :cond_3

    .line 196
    invoke-static {}, Laxb;->a()Laxb;

    move-result-object p1

    invoke-virtual {p1}, Laxb;->c()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 198
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->updateLoadingStatus(I)V

    :cond_3
    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method public setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mPosition:I

    return-void
.end method

.method public setRecyclerState(Lbya;)V
    .locals 1

    .line 228
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mVuiMode:Lbya;

    .line 229
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->setVuiMode(Lbya;)V

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mMusicHistoryMusicView:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryMusicView;

    if-eqz p1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mVuiMode:Lbya;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryMusicView;->setRecyclerState(Lbya;)V

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mMusicHistoryAlbumView:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;

    if-eqz p1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mVuiMode:Lbya;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->setRecyclerState(Lbya;)V

    :cond_1
    return-void
.end method

.method protected setView()V
    .locals 8

    .line 86
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v1, Lcom/xiaopeng/musicradio/mine/widget/b;

    sget v2, Lcom/xiaopeng/musicradio/mine/a$d;->music_mine_view_layout:I

    const-string v3, "music_mine_view_layout"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/mine/widget/b;-><init>(ILjava/lang/String;Laxs;)V

    .line 90
    new-instance v2, Lcom/xiaopeng/musicradio/mine/widget/b;

    sget v3, Lcom/xiaopeng/musicradio/mine/a$d;->music_history_music_view_layout:I

    invoke-static {}, Laxb;->a()Laxb;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$1;

    invoke-direct {v5, p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$1;-><init>(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;)V

    const-string v6, "history_music_view_layout"

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/xiaopeng/musicradio/mine/widget/b;-><init>(ILjava/lang/String;Laxs;Lcom/xiaopeng/musicradio/mine/widget/b$a;)V

    .line 99
    new-instance v3, Lcom/xiaopeng/musicradio/mine/widget/b;

    sget v4, Lcom/xiaopeng/musicradio/mine/a$d;->music_history_album_view_layout:I

    invoke-static {}, Laxb;->a()Laxb;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$2;

    invoke-direct {v6, p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$2;-><init>(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;)V

    const-string v7, "history_album_view_layout"

    invoke-direct {v3, v4, v7, v5, v6}, Lcom/xiaopeng/musicradio/mine/widget/b;-><init>(ILjava/lang/String;Laxs;Lcom/xiaopeng/musicradio/mine/widget/b$a;)V

    .line 112
    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/h;->c()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v0, v5, v1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e;Ljava/util/List;Ljava/lang/Object;Lme/drakeet/multitype/c;)V

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/h;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v0, v4, v2}, Lcom/xiaopeng/musicradio/utils/ak;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e;Ljava/util/List;Ljava/lang/Object;Lme/drakeet/multitype/c;)V

    .line 114
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/h;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/utils/ak;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e;Ljava/util/List;Ljava/lang/Object;Lme/drakeet/multitype/c;)V

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_history:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(I)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-array v2, v1, [Lbxx;

    sget-object v3, Lbxx;->SCROLLBYY:Lbxx;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Laxt;->a(Landroid/view/View;[Lbxx;)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setItemViewCacheSize(I)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setDrawingCacheEnabled(Z)V

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/high16 v3, 0x100000

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setDrawingCacheQuality(I)V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v3, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$3;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$3;-><init>(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-static {v0, v4}, Laxt;->b(Landroid/view/View;Z)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->goto_login_collect:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setGotoLoginText(I)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    new-instance v3, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$4;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout$4;-><init>(Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setGotoLoginCallback(Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView$a;)V

    .line 150
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v3, Lbsi;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsi;

    .line 151
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v3

    invoke-virtual {v3}, Lbdu;->d()I

    move-result v3

    .line 152
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eq v3, v1, :cond_2

    const/4 v1, 0x2

    if-eq v3, v1, :cond_1

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-interface {v0}, Lbsi;->getKugouUserMain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 161
    :cond_1
    invoke-interface {v0}, Lbsi;->getNeteaseUserMain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 155
    :cond_2
    invoke-interface {v0}, Lbsi;->getQqUserMain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public updateHistoryInfo()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mMusicHistoryMusicView:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryMusicView;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryMusicView;->updateHistoryInfo()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mMusicHistoryAlbumView:Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;

    if-eqz v0, :cond_1

    .line 219
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;->updateHistoryAlbum()V

    :cond_1
    return-void
.end method

.method public updateLoadingStatus(I)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryLayout;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    return-void
.end method
