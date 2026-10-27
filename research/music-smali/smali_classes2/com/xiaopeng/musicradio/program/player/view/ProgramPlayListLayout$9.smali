.class Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;
.super Ljava/lang/Object;
.source "ProgramPlayListLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


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

    .line 268
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    const/4 v0, 0x1

    if-nez p1, :cond_e

    .line 275
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;

    move-result-object p1

    invoke-virtual {p1}, Lbly;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p2, p1, :cond_d

    if-gez p2, :cond_0

    goto/16 :goto_1

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;

    move-result-object p1

    invoke-virtual {p1}, Lbly;->i()I

    move-result p1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$2100(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 280
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$2200(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m()V

    return-void

    .line 284
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 285
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v1

    .line 286
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/az;->b(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 288
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;

    move-result-object v2

    invoke-virtual {v2}, Lbly;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 289
    invoke-static {v3, v1}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 291
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_4

    return-void

    .line 298
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$2300(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$2400(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)I

    move-result v0

    if-ne v0, p2, :cond_6

    .line 300
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$2500(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 301
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$2600(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m()V

    goto/16 :goto_2

    .line 303
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$2700(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->l()V

    goto/16 :goto_2

    .line 306
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$2800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Ljava/util/List;I)V

    goto/16 :goto_2

    .line 309
    :cond_7
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;

    move-result-object v1

    invoke-virtual {v1, p2}, Lbly;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 310
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getPaymentType()I

    move-result v2

    if-ne v2, v0, :cond_a

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$2900(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$3000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Ljava/util/List;I)V

    goto/16 :goto_2

    .line 314
    :cond_8
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 315
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$3100(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V

    goto/16 :goto_2

    .line 317
    :cond_9
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9$1;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;Ljava/util/List;I)V

    sget p1, Lcom/xiaopeng/musicradio/program/b$g;->play_vip_no_login_hint:I

    .line 327
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getPaymentType()I

    move-result p2

    .line 317
    invoke-virtual {v0, v2, p1, p2}, Lbmn;->a(Lbdo;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 330
    :cond_a
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getPaymentType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$3300(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$3400(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Ljava/util/List;I)V

    goto :goto_2

    .line 334
    :cond_b
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9$2;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;Ljava/util/List;I)V

    sget p1, Lcom/xiaopeng/musicradio/program/b$g;->play_payment_no_login_hint:I

    .line 344
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->getPaymentType()I

    move-result p2

    .line 334
    invoke-virtual {v0, v2, p1, p2}, Lbmn;->a(Lbdo;Ljava/lang/String;I)V

    goto :goto_2

    .line 347
    :cond_c
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$3600(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Ljava/util/List;I)V

    goto :goto_2

    :cond_d
    :goto_1
    return-void

    :cond_e
    const/16 p2, 0xb

    if-ne p1, p2, :cond_10

    .line 351
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;

    move-result-object p1

    invoke-virtual {p1}, Lbly;->j()I

    move-result p1

    .line 352
    sget p2, Lbly;->g:I

    if-ne p1, p2, :cond_f

    .line 353
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$3700(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Z)V

    .line 354
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;

    move-result-object p1

    sget p2, Lbly;->d:I

    invoke-virtual {p1, p2}, Lbly;->b(I)V

    goto :goto_2

    .line 355
    :cond_f
    sget p2, Lbly;->e:I

    if-ne p1, p2, :cond_10

    .line 356
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$3800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b(Z)V

    .line 357
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$9;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;

    move-result-object p1

    sget p2, Lbly;->d:I

    invoke-virtual {p1, p2}, Lbly;->b(I)V

    :cond_10
    :goto_2
    return-void
.end method
