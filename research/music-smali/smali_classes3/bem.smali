.class public Lbem;
.super Lbdw;
.source "NeteaseManagerModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbem$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lbdw;-><init>()V

    return-void
.end method

.method public static a()Lbem;
    .locals 1

    .line 32
    sget-object v0, Lbem$a;->a:Lbem;

    return-object v0
.end method

.method static synthetic a(Lbem;)V
    .locals 0

    .line 24
    invoke-virtual {p0}, Lbem;->b()V

    return-void
.end method


# virtual methods
.method protected c()Lbsh;
    .locals 2

    .line 55
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsg;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsh;

    return-object v0
.end method

.method protected d()Lbef;
    .locals 1

    .line 60
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->d()Lbel;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "netease_play_list"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public receiveLogout(Lasj$u;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "NeteaseManagerModel"

    const-string v0, "receiveLogout: "

    .line 37
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lbem;->g()V

    .line 39
    new-instance p1, Lasj$n;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lasj$n;-><init>(Z)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public receiveMusicBinded(Lasj$t;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "NeteaseManagerModel"

    const-string v0, "receiveMusicBinded: "

    .line 44
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance p1, Lbem$1;

    invoke-direct {p1, p0}, Lbem$1;-><init>(Lbem;)V

    invoke-static {p1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
