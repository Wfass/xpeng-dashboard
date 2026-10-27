.class public Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MusicCollectLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/mine/collect/main/view/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/mine/collect/main/view/a;",
        "Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/mine/collect/main/view/a;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MusicCollectLayout"


# instance fields
.field private mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

.field private mCollectedAlbumView:Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;

.field private mCollectedMusicView:Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;

.field private mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

.field private mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

.field private mPosition:I

.field private mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

.field private mVuiMode:Lbya;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 56
    sget-object p1, Lbya;->NORMAL:Lbya;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mVuiMode:Lbya;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    sget-object p1, Lbya;->NORMAL:Lbya;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mVuiMode:Lbya;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    sget-object p1, Lbya;->NORMAL:Lbya;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mVuiMode:Lbya;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;)Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mCollectedMusicView:Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;)Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mCollectedMusicView:Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mPosition:I

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;)Lbya;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mVuiMode:Lbya;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;)Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mCollectedAlbumView:Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;)Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mCollectedAlbumView:Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;

    return-object p1
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;
    .locals 1

    .line 73
    new-instance v0, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/mine/music/present/MusicMineCollectPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 2

    .line 78
    new-instance v0, Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    .line 79
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->rv_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 80
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->loading_tips_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    return-void
.end method

.method public getAlbumCount()I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mCollectedAlbumView:Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 188
    sget v0, Lcom/xiaopeng/musicradio/mine/a$d;->music_collect_layout:I

    return v0
.end method

.method public getMusicCount()I
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mCollectedMusicView:Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 170
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method public setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 226
    iput p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mPosition:I

    return-void
.end method

.method public setRecyclerState(Lbya;)V
    .locals 1

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mVuiMode:Lbya;

    .line 231
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->setVuiMode(Lbya;)V

    .line 232
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mCollectedMusicView:Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;

    if-eqz p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mVuiMode:Lbya;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;->setRecyclerState(Lbya;)V

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mCollectedAlbumView:Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;

    if-eqz p1, :cond_1

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mVuiMode:Lbya;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->setRecyclerState(Lbya;)V

    :cond_1
    return-void
.end method

.method protected setView()V
    .locals 8

    .line 85
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v1, Lcom/xiaopeng/musicradio/mine/widget/b;

    sget v2, Lcom/xiaopeng/musicradio/mine/a$d;->music_mine_view_layout:I

    const-string v3, "music_mine_view_layout"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/mine/widget/b;-><init>(ILjava/lang/String;Laxs;)V

    .line 90
    new-instance v2, Lcom/xiaopeng/musicradio/mine/widget/b;

    sget v3, Lcom/xiaopeng/musicradio/mine/a$d;->music_collected_music_view_layout:I

    invoke-static {}, Laxa;->a()Laxa;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$1;

    invoke-direct {v5, p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$1;-><init>(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;)V

    const-string v6, "collected_music_view_layout"

    invoke-direct {v2, v3, v6, v4, v5}, Lcom/xiaopeng/musicradio/mine/widget/b;-><init>(ILjava/lang/String;Laxs;Lcom/xiaopeng/musicradio/mine/widget/b$a;)V

    .line 99
    new-instance v3, Lcom/xiaopeng/musicradio/mine/widget/b;

    sget v4, Lcom/xiaopeng/musicradio/mine/a$d;->music_collected_album_view_layout:I

    invoke-static {}, Laxa;->a()Laxa;

    move-result-object v5

    new-instance v6, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$2;

    invoke-direct {v6, p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$2;-><init>(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;)V

    const-string v7, "collected_album_view_layout"

    invoke-direct {v3, v4, v7, v5, v6}, Lcom/xiaopeng/musicradio/mine/widget/b;-><init>(ILjava/lang/String;Laxs;Lcom/xiaopeng/musicradio/mine/widget/b$a;)V

    .line 109
    iget-object v4, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/h;->c()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v0, v5, v1}, Lcom/xiaopeng/musicradio/utils/ak;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e;Ljava/util/List;Ljava/lang/Object;Lme/drakeet/multitype/c;)V

    .line 110
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/h;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v0, v4, v2}, Lcom/xiaopeng/musicradio/utils/ak;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e;Ljava/util/List;Ljava/lang/Object;Lme/drakeet/multitype/c;)V

    .line 111
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/h;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/utils/ak;->a(Lcom/xiaopeng/musicradio/widget/recyclerview/e;Ljava/util/List;Ljava/lang/Object;Lme/drakeet/multitype/c;)V

    .line 113
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->empty_no_collected:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(I)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-array v2, v1, [Lbxx;

    sget-object v3, Lbxx;->SCROLLBYY:Lbxx;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Laxt;->a(Landroid/view/View;[Lbxx;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setItemViewCacheSize(I)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setDrawingCacheEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/high16 v3, 0x100000

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setDrawingCacheQuality(I)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    new-instance v3, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$3;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$3;-><init>(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mRvList:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    invoke-static {v0, v4}, Laxt;->b(Landroid/view/View;Z)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->goto_login_collect:I

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setGotoLoginText(I)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;

    new-instance v3, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$4;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$4;-><init>(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;)V

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/mine/common/view/MineScrollLayoutLoadingView;->setGotoLoginCallback(Lcom/xiaopeng/musicradio/mine/common/view/MineLoadingTipsView$a;)V

    .line 147
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v3, Lbsi;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsi;

    .line 148
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v3

    invoke-virtual {v3}, Lbdu;->d()I

    move-result v3

    .line 149
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eq v3, v1, :cond_2

    const/4 v1, 0x2

    if-eq v3, v1, :cond_1

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-interface {v0}, Lbsi;->getKugouUserMain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 158
    :cond_1
    invoke-interface {v0}, Lbsi;->getNeteaseUserMain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 152
    :cond_2
    invoke-interface {v0}, Lbsi;->getQqUserMain()Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void
.end method

.method public updateAlbumLove(Z)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mCollectedAlbumView:Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedAlbumView;->updateAlbumLove(Z)V

    :cond_0
    return-void
.end method

.method public updateLoadingStatus(I)V
    .locals 2

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLoadingStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicCollectLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mHolder:Lcom/xiaopeng/musicradio/mine/widget/d;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/d;->b(I)V

    return-void
.end method

.method public updateMusicLove(Z)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->mCollectedMusicView:Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/music/MusicCollectedMusicView;->updateMusicLove(Z)V

    :cond_0
    return-void
.end method
