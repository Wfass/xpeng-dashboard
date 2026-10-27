.class Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$4;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MsSingerCollectLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->access$500(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->h()Z

    move-result v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 170
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 172
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    .line 173
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 174
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result p1

    if-nez p2, :cond_2

    const/4 p2, 0x1

    sub-int/2addr v1, p2

    if-ne v0, v1, :cond_2

    if-lez p1, :cond_2

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->access$600(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getId()I

    move-result p1

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->access$000(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lbjk;

    move-result-object p1

    invoke-virtual {p1}, Lbjk;->g()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->access$000(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lbjk;

    move-result-object p1

    invoke-virtual {p1}, Lbjk;->g()I

    move-result p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 181
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->access$700(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e()V

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->access$800(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;I)V

    nop

    :cond_2
    :goto_0
    return-void
.end method
