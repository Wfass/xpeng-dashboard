.class public Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;
.source "MineMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/main/view/c;",
        ">;"
    }
.end annotation


# instance fields
.field protected b:Lawu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;-><init>()V

    .line 26
    new-instance v0, Laww;

    invoke-direct {v0}, Laww;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->b:Lawu;

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 31
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 37
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasj$n;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/c;->a()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/c;->a()V

    :cond_0
    return-void
.end method

.method public onGotoLogin(Lasv;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/c;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->b:Lawu;

    const-string v1, "manager"

    invoke-interface {v0, v1}, Lawu;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/main/view/c;->a(I)V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/c;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/c;->a()V

    :cond_0
    return-void
.end method

.method public onSwitchTab(Lcom/xiaopeng/musicradio/event/common/b$b;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchTab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pos  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MineMainPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;->b:Lawu;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lawu;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 84
    :cond_2
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    .line 85
    new-instance p1, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter$1;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/main/presenter/MineMainPresenter;Ljava/lang/Integer;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method
