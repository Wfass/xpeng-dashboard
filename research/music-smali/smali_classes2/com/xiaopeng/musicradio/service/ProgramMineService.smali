.class public Lcom/xiaopeng/musicradio/service/ProgramMineService;
.super Lcom/xiaopeng/musicradio/service/a;
.source "ProgramMineService.java"

# interfaces
.implements Lblo;


# static fields
.field private static final TAG:Ljava/lang/String; = "ProgramMineService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
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

    .line 182
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v0

    invoke-virtual {v0}, Lbmn;->d()V

    :cond_0
    return-void
.end method

.method public getCollectedProgramList(Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 43
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/f;

    .line 44
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 45
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v1

    invoke-virtual {v1}, Lbea;->g()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "getCollectedProgramList"

    .line 46
    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/datalist/g;->a(Lcom/xiaopeng/musicradio/datalist/f;Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/g;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/r;->a(Ljava/lang/Object;)V

    return-object v0

    .line 49
    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/service/ProgramMineService$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/musicradio/service/ProgramMineService$1;-><init>(Lcom/xiaopeng/musicradio/service/ProgramMineService;Lcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public getHistoryCount()J
    .locals 2

    .line 204
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v0

    invoke-virtual {v0}, Lbmo;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHistoryProgramList(Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 72
    check-cast p1, Lcom/xiaopeng/musicradio/datalist/f;

    .line 73
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 74
    new-instance v1, Lcom/xiaopeng/musicradio/service/ProgramMineService$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/musicradio/service/ProgramMineService$2;-><init>(Lcom/xiaopeng/musicradio/service/ProgramMineService;Lcom/xiaopeng/musicradio/datalist/f;Landroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-object v0
.end method

.method public getPlayState()I
    .locals 1

    .line 168
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPlayState()I

    move-result v0

    return v0
.end method

.method public getPlayingProgram()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 163
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    return-object v0
.end method

.method public getReadLoveCount()J
    .locals 2

    .line 199
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v0

    invoke-virtual {v0}, Lbmp;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public isCollected(Ljava/lang/Object;)Z
    .locals 3

    .line 189
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v0

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbmp;->c(J)Z

    move-result p1

    return p1

    .line 191
    :cond_0
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 192
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbmp;->c(J)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public play(Ljava/lang/Object;)V
    .locals 6

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play:target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    instance-of v0, p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reading_album_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 145
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getChannelId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 146
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getChannelId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/aj;->a(J)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    .line 149
    :cond_1
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v2

    invoke-virtual {v2, v0}, Lbmt;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->pause()V

    goto :goto_0

    .line 152
    :cond_2
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v2

    invoke-virtual {v2}, Lbmt;->isNotPlayable()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p1, "isNotPlayable:play skipped"

    .line 153
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_3
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$i;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$i;-><init>(ILjava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 157
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbmt;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    :goto_0
    return-void
.end method

.method public removeHistoryProgram(Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeHistoryProgram:target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 121
    new-instance v1, Lcom/xiaopeng/musicradio/service/ProgramMineService$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/xiaopeng/musicradio/service/ProgramMineService$4;-><init>(Lcom/xiaopeng/musicradio/service/ProgramMineService;Ljava/lang/Object;Landroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public setCollectedProgram(Ljava/lang/Object;Z)Ljava/lang/Object;
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

    .line 97
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

    const-string v1, "ProgramMineService"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Landroidx/lifecycle/r;

    invoke-direct {v0}, Landroidx/lifecycle/r;-><init>()V

    .line 99
    new-instance v1, Lcom/xiaopeng/musicradio/service/ProgramMineService$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/service/ProgramMineService$3;-><init>(Lcom/xiaopeng/musicradio/service/ProgramMineService;Ljava/lang/Object;ZLandroidx/lifecycle/r;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public startDetail(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDetail:target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",fromSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ProgramMineService"

    invoke-static {v0, p3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    instance-of p3, p2, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-eqz p3, :cond_0

    .line 175
    check-cast p2, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 176
    invoke-static {p1, p2}, Lbmz;->a(Landroid/content/Context;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    :cond_0
    return-void
.end method
