.class public Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "SearchResultMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/search/result/view/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 40
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 92
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object p1

    invoke-virtual {p1}, Lbnz;->b()V

    return-void
.end method

.method public onNewVoiceSearchRsult(Lasi$d;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 45
    invoke-virtual {p1}, Lasi$d;->d()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 46
    invoke-virtual {p1}, Lasi$d;->b()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/view/e;

    invoke-interface {p1, v3}, Lcom/xiaopeng/musicradio/search/result/view/e;->a(I)V

    goto/16 :goto_0

    .line 50
    :cond_0
    invoke-virtual {p1}, Lasi$d;->b()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/view/e;

    invoke-interface {p1, v2}, Lcom/xiaopeng/musicradio/search/result/view/e;->a(I)V

    goto/16 :goto_0

    .line 54
    :cond_1
    invoke-virtual {p1}, Lasi$d;->b()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/view/e;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/search/result/view/e;->a(I)V

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {p1}, Lasi$d;->b()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/view/e;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/search/result/view/e;->a(I)V

    goto :goto_0

    .line 62
    :cond_3
    invoke-virtual {p1}, Lasi$d;->b()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/view/e;

    invoke-interface {p1, v2}, Lcom/xiaopeng/musicradio/search/result/view/e;->a(I)V

    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {p1}, Lasi$d;->b()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/view/e;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/search/result/view/e;->a(I)V

    goto :goto_0

    .line 72
    :cond_5
    invoke-virtual {p1}, Lasi$d;->b()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/view/e;

    invoke-interface {p1, v3}, Lcom/xiaopeng/musicradio/search/result/view/e;->a(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onSearchTopBarKeyword(Lbnw$c;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/view/e;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/result/view/e;->a()I

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/result/view/e;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/search/result/view/e;->a(I)V

    :cond_0
    return-void
.end method
