.class public Lcom/xiaopeng/musicradio/MineInit;
.super Lbex;
.source "MineInit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lbex;-><init>()V

    return-void
.end method


# virtual methods
.method public igOff()V
    .locals 0

    return-void
.end method

.method public igOn()V
    .locals 0

    return-void
.end method

.method public initDelay()V
    .locals 1

    .line 28
    new-instance v0, Lcom/xiaopeng/musicradio/MineInit$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/MineInit$1;-><init>(Lcom/xiaopeng/musicradio/MineInit;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public initNow()V
    .locals 0

    .line 22
    invoke-static {}, Larp;->a()Larp;

    return-void
.end method

.method public initPlayer()V
    .locals 0

    return-void
.end method

.method public onMusicBinded()V
    .locals 0

    return-void
.end method

.method public registerService()V
    .locals 3

    .line 38
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lasu;

    const-string v2, "com.xiaopeng.musicradio.service.MineService"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
