.class public Lcom/xiaopeng/musicradio/program/category/presenter/a;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/a;
.source "ReadingCategoriesPresenterNew.java"

# interfaces
.implements Laxy$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/a<",
        "Lcom/xiaopeng/musicradio/program/category/view/c;",
        ">;",
        "Laxy$a;"
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/ReadingCategoryListBeanV3$DataBean$ListBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/category/presenter/a;)Ljava/util/List;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/category/presenter/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a;->b:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->f()V

    const-string p1, "ReadingCategPNew"

    const-string v0, "onPowerChange loadCategories"

    .line 108
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public dealNetValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/category/view/c;->onNetworkValid()V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/c;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/category/view/c;->setLoadingState(I)V

    .line 56
    :cond_0
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/program/category/presenter/a$1;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/a;)V

    invoke-virtual {v0, v1, v2}, Lbmv;->a(ZLbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public i_()V
    .locals 2

    .line 33
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->i_()V

    .line 34
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Laxy;->a(Laxy$a;)V

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/c;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/category/view/c;->showCategories(Ljava/util/List;)V

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/category/view/c;->setLoadingState(I)V

    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->f()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/a;->g()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/category/view/c;->updateList()V

    :cond_0
    return-void
.end method

.method public r_()V
    .locals 1

    .line 48
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/a;->r_()V

    .line 49
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Laxy;->b(Laxy$a;)V

    return-void
.end method
