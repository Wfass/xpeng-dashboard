.class public Lbqk;
.super Ljava/lang/Object;
.source "ScheduledThreadModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbqk$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/ScheduledExecutorService;

.field private b:Z

.field private c:Lbqk$a;


# direct methods
.method public constructor <init>(Lbqk$a;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lbqk;->b:Z

    .line 19
    iput-object p1, p0, Lbqk;->c:Lbqk$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 34
    iget-object v0, p0, Lbqk;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 35
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_0
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lbqk;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lbqk;->b:Z

    return-void
.end method

.method public a(I)V
    .locals 9

    .line 23
    iget-object v0, p0, Lbqk;->c:Lbqk$a;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lbqk;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lbqk;->b:Z

    .line 27
    iget-object v1, p0, Lbqk;->a:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v1, :cond_1

    .line 28
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v1, p0, Lbqk;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 30
    :cond_1
    iget-object v2, p0, Lbqk;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v4, 0x0

    int-to-long v6, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v3, p0

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_2
    :goto_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 43
    iget-object v0, p0, Lbqk;->c:Lbqk$a;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Lbqk$a;->a()V

    :cond_0
    return-void
.end method
