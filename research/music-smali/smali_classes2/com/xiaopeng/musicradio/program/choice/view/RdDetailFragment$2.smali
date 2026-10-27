.class Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RdDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 514
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-void

    .line 518
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1400(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 522
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_3

    .line 523
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    .line 525
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;

    move-result-object p2

    invoke-virtual {p2}, Lbly;->getItemCount()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_3

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    .line 526
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;

    move-result-object p2

    invoke-virtual {p2}, Lbly;->getItemCount()I

    move-result p2

    sub-int/2addr p2, p3

    if-ne p1, p2, :cond_2

    .line 527
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1600(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 528
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;

    move-result-object p1

    sget p2, Lbly;->d:I

    invoke-virtual {p1, p2}, Lbly;->b(I)V

    .line 529
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1700(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b(Z)V

    .line 530
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1, p3}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1802(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;Z)Z

    goto :goto_0

    .line 532
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;

    move-result-object p1

    sget p2, Lbly;->f:I

    invoke-virtual {p1, p2}, Lbly;->b(I)V

    goto :goto_0

    .line 535
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;

    move-result-object p2

    invoke-virtual {p2}, Lbly;->g()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 536
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1900(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getOrderNum()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b(I)I

    move-result p1

    .line 537
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$2000(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(I)V

    .line 538
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$2100(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i()Ljava/lang/String;

    move-result-object p1

    .line 539
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1800(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 540
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$2200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void

    .line 520
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "you should call setLayoutManager() first!!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
