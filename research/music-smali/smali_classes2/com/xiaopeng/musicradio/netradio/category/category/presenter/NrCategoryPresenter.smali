.class public Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;
.super Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;
.source "NrCategoryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter<",
        "Lcom/xiaopeng/musicradio/netradio/category/category/view/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->b:Z

    return p1
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/category/category/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/netradio/category/category/view/b;->showLoadingView()V

    .line 45
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter$1;-><init>(Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/netradio/logic/b;->a(Lbkv;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 83
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->g()V

    .line 84
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->b:Z

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->c()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string v0, "NRCategoryPresenter"

    const-string v1, "onCreate"

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 34
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->b:Z

    if-eqz p1, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->c()V

    :cond_1
    return-void
.end method

.method public onSpeechStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/category/category/presenter/NrCategoryPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/netradio/category/category/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/netradio/category/category/view/b;->notifySpeechChange()V

    :cond_0
    return-void
.end method
