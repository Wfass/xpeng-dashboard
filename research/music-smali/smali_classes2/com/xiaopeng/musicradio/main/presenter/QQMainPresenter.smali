.class public Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;
.super Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;
.source "QQMainPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "sub"

    .line 104
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "guesslike"

    .line 105
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v1, Lblp;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblp;

    invoke-interface {p1}, Lblp;->openGuessLike()V

    return v0

    :cond_1
    const-string v1, "programhistory"

    .line 108
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 109
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v1, Lblp;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lblp;

    invoke-interface {p1}, Lblp;->openProgramHistory()V

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    invoke-static {}, Layg;->a()Layg;

    move-result-object v0

    invoke-virtual {v0}, Layg;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    :cond_0
    invoke-static {}, Lbjl;->j()V

    .line 119
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->h()V

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lbez$g;->bt_nophone_music:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;I)V

    return-void

    .line 124
    :cond_1
    new-instance v0, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter$1;-><init>(Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method

.method public d()Z
    .locals 3

    .line 137
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->d()Z

    move-result v0

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBtConnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QQMainPresenter"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 143
    invoke-static {}, Lbic;->a()Lbic;

    move-result-object v0

    invoke-virtual {v0}, Lbic;->e()Z

    move-result v0

    return v0
.end method

.method public onAccountTypeChange(Lasj$b;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAccountTypeChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QQMainPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/main/view/a;->ChangeAccountType()V

    :cond_0
    return-void
.end method

.method public onAppFirstFrame(Lcom/xiaopeng/musicradio/event/common/CommonEvent$d;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AppFirstFrameEvent getView() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QQMainPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/main/view/a;->onAppFirstFrameComplete()V

    :cond_0
    return-void
.end method

.method public onAppInstalledEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$f;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAppInstalledEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQMainPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$f;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$f;->b()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/main/view/a;->onAppInstalled(IZ)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/main/presenter/MainPresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "QQMainPresenter"

    const-string v0, "onCreate: "

    .line 42
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSelectMainTab(Lcom/xiaopeng/musicradio/event/common/CommonEvent$as;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSelectMainTab: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$as;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QQMainPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/view/a;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$as;->a:Landroid/net/Uri;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/main/view/a;->selectTab(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public selectChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ar;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/main/presenter/QQMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/main/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ar;->a()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/main/view/a;->switchAudio(I)V

    :cond_0
    return-void
.end method
