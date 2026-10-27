.class Lcei$a;
.super Ljava/lang/Object;
.source "MqttAsyncClient.java"

# interfaces
.implements Lced;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final synthetic b:Lcei;


# direct methods
.method constructor <init>(Lcei;Ljava/lang/String;)V
    .locals 0

    .line 1484
    iput-object p1, p0, Lcei$a;->b:Lcei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1485
    iput-object p2, p0, Lcei$a;->a:Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 6

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcei$a;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":rescheduleReconnectCycle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1508
    invoke-static {}, Lcei;->e()Lcgw;

    move-result-object v1

    invoke-static {}, Lcei;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 1509
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcei$a;->b:Lcei;

    invoke-static {v4}, Lcei;->d(Lcei;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lcei;->g()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "505"

    .line 1508
    invoke-interface {v1, v2, v0, v4, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1510
    invoke-static {}, Lcei;->h()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1511
    :try_start_0
    iget-object v1, p0, Lcei$a;->b:Lcei;

    invoke-static {v1}, Lcei;->e(Lcei;)Lcem;

    move-result-object v1

    invoke-virtual {v1}, Lcem;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1512
    iget-object v1, p0, Lcei$a;->b:Lcei;

    invoke-static {v1}, Lcei;->f(Lcei;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1513
    iget-object v1, p0, Lcei$a;->b:Lcei;

    invoke-static {v1}, Lcei;->f(Lcei;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcei$c;

    iget-object v3, p0, Lcei$a;->b:Lcei;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcei$c;-><init>(Lcei;Lcei$c;)V

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 1516
    :cond_0
    invoke-static {p1}, Lcei;->a(I)V

    .line 1517
    iget-object p1, p0, Lcei$a;->b:Lcei;

    invoke-static {p1}, Lcei;->b(Lcei;)V

    .line 1510
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public onFailure(Lceh;Ljava/lang/Throwable;)V
    .locals 4

    .line 1497
    invoke-static {}, Lcei;->e()Lcgw;

    move-result-object p2

    invoke-static {}, Lcei;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcei$a;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lceh;->c()Lcee;

    move-result-object p1

    invoke-interface {p1}, Lcee;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "502"

    invoke-interface {p2, v0, v1, p1, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1498
    invoke-static {}, Lcei;->g()I

    move-result p1

    const p2, 0x1f400

    if-ge p1, p2, :cond_0

    .line 1499
    invoke-static {}, Lcei;->g()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Lcei;->a(I)V

    .line 1501
    :cond_0
    invoke-static {}, Lcei;->g()I

    move-result p1

    invoke-direct {p0, p1}, Lcei$a;->a(I)V

    return-void
.end method

.method public onSuccess(Lceh;)V
    .locals 5

    .line 1490
    invoke-static {}, Lcei;->e()Lcgw;

    move-result-object v0

    invoke-static {}, Lcei;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcei$a;->a:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lceh;->c()Lcee;

    move-result-object p1

    invoke-interface {p1}, Lcee;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "501"

    invoke-interface {v0, v1, v2, p1, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1491
    iget-object p1, p0, Lcei$a;->b:Lcei;

    iget-object p1, p1, Lcei;->b:Lcew;

    invoke-virtual {p1, v4}, Lcew;->b(Z)V

    .line 1492
    iget-object p1, p0, Lcei$a;->b:Lcei;

    invoke-static {p1}, Lcei;->c(Lcei;)V

    return-void
.end method
