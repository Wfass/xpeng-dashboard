.class public Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;
.super Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;
.source "MineEventPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/main/view/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/mine/common/presenter/MineBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 23
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lase$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    .line 118
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/b;->b()V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$ab;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 62
    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/main/view/b;->c(Z)V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$ac;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 70
    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/main/view/b;->c(Z)V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$l;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lasj$l;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lasj$l;->b()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/mine/main/view/b;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 30
    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/main/view/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$p;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    .line 110
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/b;->a()V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$r;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p1}, Lasj$r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lasj$r;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lasj$r;->c()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/musicradio/mine/main/view/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$s;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 38
    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/main/view/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$t;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 46
    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/main/view/b;->b(Z)V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$u;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 54
    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/main/view/b;->b(Z)V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$v;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    .line 134
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/b;->c()V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$x;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1}, Lasj$x;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lasj$x;->b()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/musicradio/mine/main/view/b;->a(JZ)V

    :cond_0
    return-void
.end method

.method public onEvent(Lbfh$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    .line 150
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/b;->f()V

    :cond_0
    return-void
.end method

.method public onEvent(Lbfh$f;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    .line 142
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/b;->e()V

    :cond_0
    return-void
.end method

.method public onEvent(Lbfh$g;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public onEvent(Lbfh$i;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    .line 158
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/b;->g()V

    :cond_0
    return-void
.end method

.method public onEvent(Lbju$b;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    .line 179
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/b;->i()V

    :cond_0
    return-void
.end method

.method public onEvent(Lblv$a;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    .line 171
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/b;->h()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$r;->b()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/musicradio/mine/main/view/b;->b(JZ)V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$y;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/MineEventPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/b;

    if-eqz p1, :cond_0

    .line 126
    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/b;->d()V

    :cond_0
    return-void
.end method
