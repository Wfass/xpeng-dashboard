.class public Lbdv;
.super Lbdw;
.source "QqManagerModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbdv$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lbdw;-><init>()V

    return-void
.end method

.method public static a()Lbdv;
    .locals 1

    .line 27
    sget-object v0, Lbdv$a;->a:Lbdv;

    return-object v0
.end method


# virtual methods
.method public receiveLogout(Lasj$s;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "QqManagerModel"

    const-string v0, "receiveLogout: "

    .line 32
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lbdv;->g()V

    .line 34
    new-instance p1, Lasj$n;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lasj$n;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public receiveMusicBinded(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "QqManagerModel"

    const-string v0, "receiveMusicBinded: "

    .line 39
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance p1, Lbdv$1;

    invoke-direct {p1, p0}, Lbdv$1;-><init>(Lbdv;)V

    invoke-static {p1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
