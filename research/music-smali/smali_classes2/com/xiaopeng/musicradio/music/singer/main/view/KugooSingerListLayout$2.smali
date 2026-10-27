.class Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "KugooSingerListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->loadMoreListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    if-eqz p1, :cond_3

    .line 68
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 70
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 71
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 72
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p1

    if-nez p2, :cond_3

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    if-lez p1, :cond_3

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getId()I

    move-result p1

    const/16 p2, 0x3e8

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mSingerAdapter:Lbjh;

    check-cast p1, Lbjg;

    invoke-virtual {p1}, Lbjg;->g()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->access$000(Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->e()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 81
    :cond_1
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 82
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->access$100(Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;

    iget-object p2, p2, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mAreaCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mTypeCode:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/KugooSingerPresenter;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->access$200(Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;I)V

    :cond_3
    return-void
.end method
