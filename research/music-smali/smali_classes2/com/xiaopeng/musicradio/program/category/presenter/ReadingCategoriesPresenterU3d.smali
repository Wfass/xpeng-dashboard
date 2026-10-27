.class public Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "ReadingCategoriesPresenterU3d.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/program/category/view/c;",
        ">;"
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
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->b:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/c;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/category/view/c;->setLoadingState(I)V

    .line 51
    :cond_0
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d$1;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;)V

    invoke-virtual {v0, v1, v2}, Lbmv;->a(ZLbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public dealNetValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/category/view/c;->onNetworkValid()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 33
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 34
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->b:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/c;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/category/view/c;->showCategories(Ljava/util/List;)V

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/c;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/category/view/c;->setLoadingState(I)V

    goto :goto_1

    .line 37
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->c()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onPowerChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPowerChange isOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReadingCategPNew"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->c()V

    const-string p1, "onPowerChange loadCategories"

    .line 88
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/ReadingCategoriesPresenterU3d;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/category/view/c;->updateList()V

    :cond_0
    return-void
.end method
