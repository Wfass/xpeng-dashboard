.class Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ProgramPlayListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 222
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 223
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$700(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/EmptyRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 224
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    .line 226
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;

    move-result-object p2

    invoke-virtual {p2}, Lbly;->getItemCount()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_2

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 227
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;

    move-result-object p2

    invoke-virtual {p2}, Lbly;->getItemCount()I

    move-result p2

    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_1

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$900(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 229
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;

    move-result-object p1

    sget p2, Lbly;->d:I

    invoke-virtual {p1, p2}, Lbly;->b(I)V

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$1000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Z)V

    .line 231
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$1102(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;Z)Z

    goto :goto_0

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;

    move-result-object p1

    sget p2, Lbly;->f:I

    invoke-virtual {p1, p2}, Lbly;->b(I)V

    goto :goto_0

    .line 236
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;

    move-result-object p2

    invoke-virtual {p2}, Lbly;->g()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 237
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$1200(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getOrderNum()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(I)I

    move-result p1

    .line 238
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$1300(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(I)V

    .line 239
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$1400(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e()Ljava/lang/String;

    move-result-object p1

    .line 240
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$1100(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 241
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$7;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$1500(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
