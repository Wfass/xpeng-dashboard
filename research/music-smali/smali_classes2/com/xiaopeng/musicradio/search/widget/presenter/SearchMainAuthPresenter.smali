.class public Lcom/xiaopeng/musicradio/search/widget/presenter/SearchMainAuthPresenter;
.super Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;
.source "SearchMainAuthPresenter.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/common/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter<",
        "Lcom/xiaopeng/musicradio/search/widget/view/a;",
        ">;",
        "Lcom/xiaopeng/musicradio/common/f;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public changeAccountType(Lasj$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/presenter/SearchMainAuthPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/presenter/SearchMainAuthPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/search/widget/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/search/widget/view/a;->changeAccountType()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 22
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MusicMainAuthPresenter"

    const-string v0, "onCreateView"

    .line 23
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method
