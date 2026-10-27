.class Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;
.super Ljava/lang/Object;
.source "RdDetailFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


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

    .line 567
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 5

    .line 570
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    const/4 v0, 0x1

    if-nez p1, :cond_a

    .line 573
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;

    move-result-object p1

    invoke-virtual {p1}, Lbly;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_9

    if-gez p2, :cond_0

    goto/16 :goto_2

    .line 577
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;

    move-result-object p1

    invoke-virtual {p1}, Lbly;->i()I

    move-result p1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$2900(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->t()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 578
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$3000(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->o()V

    return-void

    .line 582
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 583
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;

    move-result-object v1

    invoke-virtual {v1}, Lbly;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 584
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$3100(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 586
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$3200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->v()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setChannelId(I)V

    .line 587
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 590
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;

    move-result-object v1

    invoke-virtual {v1, p2}, Lbly;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 591
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getPaymentType()I

    move-result v2

    if-ne v2, v0, :cond_6

    .line 592
    invoke-static {}, Lbmx;->i()V

    .line 593
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$3300(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->c(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 594
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$3400(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d(Ljava/util/List;I)V

    goto :goto_1

    .line 596
    :cond_4
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 597
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$3500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)V

    goto :goto_1

    .line 599
    :cond_5
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4$1;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;Ljava/util/List;I)V

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    sget v4, Lcom/xiaopeng/musicradio/program/b$g;->play_vip_no_login_hint:I

    .line 609
    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getPaymentType()I

    move-result v1

    .line 599
    invoke-virtual {v0, v2, v3, v1}, Lbmn;->a(Lbdo;Ljava/lang/String;I)V

    goto :goto_1

    .line 612
    :cond_6
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getPaymentType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$3700(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$3800(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d(Ljava/util/List;I)V

    goto :goto_1

    .line 616
    :cond_7
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4$2;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;Ljava/util/List;I)V

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    sget v4, Lcom/xiaopeng/musicradio/program/b$g;->play_payment_no_login_hint:I

    .line 626
    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getPaymentType()I

    move-result v1

    .line 616
    invoke-virtual {v0, v2, v3, v1}, Lbmn;->a(Lbdo;Ljava/lang/String;I)V

    goto :goto_1

    .line 629
    :cond_8
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$4000(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d(Ljava/util/List;I)V

    .line 632
    :goto_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 633
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "click"

    .line 634
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$4100(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "album"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string p2, "program"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-static {v0}, Lbrw;->h(Ljava/util/Map;)V

    goto :goto_3

    :cond_9
    :goto_2
    return-void

    :cond_a
    const/16 p2, 0xb

    if-ne p1, p2, :cond_c

    .line 641
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;

    move-result-object p1

    invoke-virtual {p1}, Lbly;->j()I

    move-result p1

    .line 642
    sget p2, Lbly;->g:I

    if-ne p1, p2, :cond_b

    .line 643
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$4200(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->k()V

    .line 644
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;

    move-result-object p1

    sget p2, Lbly;->d:I

    invoke-virtual {p1, p2}, Lbly;->b(I)V

    goto :goto_3

    .line 645
    :cond_b
    sget p2, Lbly;->e:I

    if-ne p1, p2, :cond_c

    .line 646
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$4300(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b(Z)V

    .line 647
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment$4;->a:Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;->access$1500(Lcom/xiaopeng/musicradio/program/choice/view/RdDetailFragment;)Lbly;

    move-result-object p1

    sget p2, Lbly;->d:I

    invoke-virtual {p1, p2}, Lbly;->b(I)V

    :cond_c
    :goto_3
    return-void
.end method
