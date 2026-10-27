.class public Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "LoginManagerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/mine/main/view/a;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 629
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->b:Ljava/util/Map;

    .line 632
    sget-object v0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->b:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "collect"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sheet"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->b:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "history"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onSyncLoading()V

    .line 111
    :cond_0
    invoke-static {}, Laya;->a()Laya;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$1;-><init>(Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Laya;->a(JLbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public b(J)V
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onSyncLoading()V

    .line 238
    :cond_0
    invoke-static {}, Laya;->a()Laya;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$2;-><init>(Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;)V

    invoke-virtual {v0, p1, p2, v1}, Laya;->c(JLbkv;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public c()V
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    invoke-virtual {v1}, Lbdm;->g()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onQqAuthChanged(Z)V

    :cond_0
    return-void
.end method

.method public changeTab(Lasj$e;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 654
    invoke-virtual {p1}, Lasj$e;->b()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/a;->updateData()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 306
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v1

    invoke-virtual {v1}, Lbdx;->e()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onXmlyAuthChanged(Z)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 9

    .line 312
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/musicradio/mine/main/view/a;

    if-eqz v1, :cond_5

    .line 314
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->d()Z

    move-result v0

    .line 316
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v2

    const-class v3, Lbsh;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsh;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 318
    invoke-interface {v2}, Lbsh;->getNickName()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 322
    invoke-interface {v2}, Lbsh;->getUserLogo()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 326
    invoke-interface {v2}, Lbsh;->isVip()Z

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 330
    invoke-interface {v2}, Lbsh;->isGreenVip()Z

    move-result v5

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 334
    invoke-interface {v2}, Lbsh;->getVipEndTime()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v3

    .line 336
    :goto_3
    invoke-interface {v2}, Lbsh;->getVipDetial()Ljava/util/List;

    move-result-object v7

    move-object v2, v8

    move-object v3, v4

    move v4, v6

    move-object v6, v0

    .line 337
    invoke-interface/range {v1 .. v7}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountInfo:nickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginManagerPresenter"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public f()V
    .locals 9

    .line 343
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/musicradio/mine/main/view/a;

    if-eqz v1, :cond_5

    .line 345
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->e()Z

    move-result v0

    .line 347
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v2

    const-class v3, Lbsg;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsg;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 349
    invoke-interface {v2}, Lbsg;->getNickName()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 353
    invoke-interface {v2}, Lbsg;->getUserLogo()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 357
    invoke-interface {v2}, Lbsg;->isVip()Z

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 361
    invoke-interface {v2}, Lbsg;->isGreenVip()Z

    move-result v5

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 365
    invoke-interface {v2}, Lbsg;->getVipEndTime()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v3

    .line 367
    :goto_3
    invoke-interface {v2}, Lbsg;->getVipDetial()Ljava/util/List;

    move-result-object v7

    move-object v2, v8

    move-object v3, v4

    move v4, v6

    move-object v6, v0

    .line 368
    invoke-interface/range {v1 .. v7}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onNeteaaseAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNeteaseAccountInfo:nickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginManagerPresenter"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public g()V
    .locals 9

    .line 374
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/musicradio/mine/main/view/a;

    if-eqz v1, :cond_5

    .line 376
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->f()Z

    move-result v0

    .line 378
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v2

    const-class v3, Lbsf;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsf;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 380
    invoke-interface {v2}, Lbsf;->getNickName()Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 384
    invoke-interface {v2}, Lbsf;->getUserLogo()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    const/4 v5, 0x0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 388
    invoke-interface {v2}, Lbsf;->isVip()Z

    move-result v6

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 392
    invoke-interface {v2}, Lbsf;->isGreenVip()Z

    move-result v5

    :cond_3
    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    .line 396
    invoke-interface {v2}, Lbsf;->getVipEndTime()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v3

    .line 398
    :goto_3
    invoke-interface {v2}, Lbsf;->getVipDetial()Ljava/util/List;

    move-result-object v7

    move-object v2, v8

    move-object v3, v4

    move v4, v6

    move-object v6, v0

    .line 399
    invoke-interface/range {v1 .. v7}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onKugouAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getKugouAccountInfo:nickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginManagerPresenter"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public h()V
    .locals 2

    .line 405
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->b()Lbeg;

    move-result-object v0

    check-cast v0, Lben;

    .line 406
    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$3;-><init>(Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;)V

    invoke-interface {v0, v1}, Lben;->a(Lbeo;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 420
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->d()Lbel;

    move-result-object v0

    .line 421
    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$4;-><init>(Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;)V

    invoke-interface {v0, v1}, Lben;->a(Lbeo;)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 435
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->e()Lbej;

    move-result-object v0

    .line 436
    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$5;-><init>(Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;)V

    invoke-interface {v0, v1}, Lben;->a(Lbeo;)V

    return-void
.end method

.method public k()V
    .locals 7

    .line 450
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/a;

    if-eqz v0, :cond_4

    .line 452
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1}, Lbea;->g()Z

    move-result v1

    .line 454
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v2

    const-class v3, Lbsj;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbsj;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 456
    invoke-interface {v2}, Lbsj;->getNickName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 460
    invoke-interface {v2}, Lbsj;->getUserLogo()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    :goto_1
    const/4 v6, 0x0

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 464
    invoke-interface {v2}, Lbsj;->isVip()Z

    move-result v6

    :cond_2
    if-eqz v1, :cond_3

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 468
    invoke-interface {v2}, Lbsj;->getVipEndTime()Ljava/lang/String;

    move-result-object v3

    .line 470
    :cond_3
    invoke-interface {v0, v4, v5, v6, v3}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onXmlyAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getXmlyAccountInfo:nickName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginManagerPresenter"

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ext/cornet/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public l()V
    .locals 2

    .line 476
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->b()Lbeh;

    move-result-object v0

    check-cast v0, Lbeq;

    .line 477
    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter$6;-><init>(Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;)V

    invoke-interface {v0, v1}, Lbeq;->a(Lbdp;)V

    return-void
.end method

.method public m()V
    .locals 2

    .line 524
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    invoke-virtual {v1}, Lbdm;->d()Lbel;

    move-result-object v1

    invoke-virtual {v1}, Lbel;->g()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onNeteaseAuthChanged(Z)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 530
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v1

    invoke-virtual {v1}, Lbdm;->e()Lbej;

    move-result-object v1

    invoke-virtual {v1}, Lbej;->g()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onNeteaseAuthChanged(Z)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 65
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 71
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lasj$ab;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "LoginManagerPresenter"

    const-string v0, "ReadingBinded"

    .line 553
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->d()V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$ac;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "LoginManagerPresenter"

    const-string v0, "ReadingUnBinded"

    .line 561
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->d()V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "LoginManagerPresenter"

    const-string v0, "NeteaseBinded"

    .line 509
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->n()V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$i;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "LoginManagerPresenter"

    const-string v0, "MusicUnBinded"

    .line 545
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->n()V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "LoginManagerPresenter"

    const-string v0, "MusicBinded"

    .line 493
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->c()V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$s;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "LoginManagerPresenter"

    const-string v0, "MusicUnBinded"

    .line 537
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 538
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 539
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->c()V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$t;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "LoginManagerPresenter"

    const-string v0, "NeteaseBinded"

    .line 501
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->m()V

    :cond_0
    return-void
.end method

.method public onEvent(Lasj$u;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "LoginManagerPresenter"

    const-string v0, "NeteaseUnBinded"

    .line 517
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->m()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$an;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "LoginManagerPresenter"

    const-string v0, "ReadingVipInfo"

    .line 583
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->k()V

    :cond_0
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "LoginManagerPresenter"

    const-string v1, "UserVipInfo"

    .line 569
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 571
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->f()V

    goto :goto_0

    .line 573
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;->a()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 574
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->g()V

    goto :goto_0

    .line 576
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->e()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMusicDataLoadEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$w;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "LoginManagerPresenter"

    const-string v1, "onMusicDataLoadEvent"

    .line 607
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$w;->a()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onMusicDataLoad(I)V

    :cond_0
    return-void
.end method

.method public onProgramDataLoadEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ai;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "LoginManagerPresenter"

    const-string v1, "onProgramDataLoadEvent"

    .line 591
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ai;->a()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onProgramDataLoad(I)V

    :cond_0
    return-void
.end method

.method public onRadioDataLoadEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ak;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "LoginManagerPresenter"

    const-string v1, "onRadioDataLoadEvent"

    .line 599
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ak;->a()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onRadioDataLoad(I)V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 77
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p1}, Lbdm;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 78
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbsh;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsh;

    if-eqz p1, :cond_0

    .line 80
    invoke-interface {p1}, Lbsh;->fetchUserInfo()V

    .line 84
    :cond_0
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p1}, Lbdm;->d()Lbel;

    move-result-object p1

    invoke-virtual {p1}, Lbel;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 85
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbsg;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsg;

    if-eqz p1, :cond_1

    .line 87
    invoke-interface {p1}, Lbsg;->fetchUserInfo()V

    .line 91
    :cond_1
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object p1

    invoke-virtual {p1}, Lbdm;->e()Lbej;

    move-result-object p1

    invoke-virtual {p1}, Lbej;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 92
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbsf;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsf;

    if-eqz p1, :cond_2

    .line 94
    invoke-interface {p1}, Lbsf;->fetchUserInfo()V

    .line 98
    :cond_2
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object p1

    invoke-virtual {p1}, Lbdx;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class v0, Lbsj;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbsj;

    if-eqz p1, :cond_3

    .line 101
    invoke-interface {p1}, Lbsj;->fetchUserInfo()V

    :cond_3
    return-void
.end method

.method public onSwitchElement(Lcom/xiaopeng/musicradio/event/common/b$a;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchElement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginManagerPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 642
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/b$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    return-void

    .line 646
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 647
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->d(Ljava/lang/Object;)V

    .line 648
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/mine/main/view/a;->selectTab(I)V

    :cond_2
    return-void
.end method

.method public onSyncFailEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ay;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "LoginManagerPresenter"

    const-string v0, "onSyncFailEvent"

    .line 615
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 617
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/mine/main/view/a;->onSyncStart()V

    :cond_0
    return-void
.end method
