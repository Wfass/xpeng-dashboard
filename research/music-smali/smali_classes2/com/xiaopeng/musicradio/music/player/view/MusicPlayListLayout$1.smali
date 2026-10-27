.class Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MusicPlayListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 5

    if-eqz p1, :cond_4

    .line 90
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 91
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 92
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 93
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v2

    .line 94
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p1

    .line 95
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v4

    invoke-static {v3, v4}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$002(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;I)I

    .line 96
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-static {v3, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$102(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;I)I

    if-nez p2, :cond_3

    const/4 v0, 0x1

    sub-int/2addr v1, v0

    if-ne v2, v1, :cond_3

    if-lez p1, :cond_3

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->mRv:Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getId()I

    move-result p1

    const/16 v1, 0x3e8

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$200(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/music/player/view/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/view/k;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$300(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->d()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 105
    :cond_1
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 106
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$400(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/player/presenter/MusicPlayListPresenter;->e()V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$500(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;IZ)V

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$602(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;I)I

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout$1;->a:Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;->access$700(Lcom/xiaopeng/musicradio/music/player/view/MusicPlayListLayout;)V

    :cond_4
    return-void
.end method
