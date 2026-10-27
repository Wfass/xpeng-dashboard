.class public Lcom/xiaopeng/musicradio/service/NetRadioMineService;
.super Lcom/xiaopeng/musicradio/service/a;
.source "NetRadioMineService.java"

# interfaces
.implements Lbjr;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetRadioMineService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/service/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public checkoutDataCollect()V
    .locals 1

    .line 160
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Layv;->a()Layv;

    move-result-object v0

    invoke-virtual {v0}, Layv;->d()V

    :cond_0
    return-void
.end method

.method public getCollectedNetRadioList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 35
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/f;

    .line 36
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 37
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1}, Lbea;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "getCollectedNetRadioList"

    .line 38
    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-object v0

    .line 41
    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/service/NetRadioMineService$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/musicradio/service/NetRadioMineService$1;-><init>(Lcom/xiaopeng/musicradio/service/NetRadioMineService;Lcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public getHistoryCount()J
    .locals 2

    .line 182
    invoke-static {}, Lbcy;->a()Lbcy;

    move-result-object v0

    invoke-virtual {v0}, Lbcy;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHistoryNetRadioList(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 56
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/f;

    .line 57
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 58
    new-instance v1, Lcom/xiaopeng/musicradio/service/NetRadioMineService$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/musicradio/service/NetRadioMineService$2;-><init>(Lcom/xiaopeng/musicradio/service/NetRadioMineService;Lcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public getLoveCount()J
    .locals 2

    .line 177
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v0

    invoke-virtual {v0}, Lbda;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPlayState()I
    .locals 1

    .line 155
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->q()I

    move-result v0

    return v0
.end method

.method public getPlayingInfo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    return-object v0
.end method

.method public isCollected(Ljava/lang/Object;)Z
    .locals 3

    .line 167
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    if-eqz v0, :cond_0

    .line 168
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v0

    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lbda;->a(J)Z

    move-result p1

    return p1

    .line 169
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 170
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbda;->a(J)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public play(Ljava/lang/Object;)V
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play:target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/service/NetRadioMineService;->play(Ljava/lang/Object;Z)V

    return-void
.end method

.method public play(Ljava/lang/Object;Z)V
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play:target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    const/4 v0, 0x0

    .line 125
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/netradio/logic/a;->d()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_5

    .line 129
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 131
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->q()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-void

    .line 134
    :cond_2
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/logic/a;->q()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_6

    .line 136
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/logic/a;->p()V

    goto :goto_0

    .line 138
    :cond_3
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/netradio/logic/a;->q()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 139
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/netradio/logic/a;->o()V

    goto :goto_0

    .line 141
    :cond_4
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    .line 144
    :cond_5
    invoke-static {}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a()Lcom/xiaopeng/musicradio/netradio/logic/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/netradio/logic/a;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public removeHistoryNetRadio(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCollectedNetRadio:target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 97
    new-instance v1, Lcom/xiaopeng/musicradio/service/NetRadioMineService$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/musicradio/service/NetRadioMineService$4;-><init>(Lcom/xiaopeng/musicradio/service/NetRadioMineService;Ljava/lang/Object;Landroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public setCollectedNetRadio(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Z)TT;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCollectedNetRadio:target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",collect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 75
    new-instance v1, Lcom/xiaopeng/musicradio/service/NetRadioMineService$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/service/NetRadioMineService$3;-><init>(Lcom/xiaopeng/musicradio/service/NetRadioMineService;Ljava/lang/Object;ZLandroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-object v0
.end method
