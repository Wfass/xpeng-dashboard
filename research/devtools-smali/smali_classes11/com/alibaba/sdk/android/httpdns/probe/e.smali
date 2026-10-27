.class public Lcom/alibaba/sdk/android/httpdns/probe/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService;


# instance fields
.field private a:Lcom/alibaba/sdk/android/httpdns/probe/b;

.field private a:Ljava/util/concurrent/atomic/AtomicLong;

.field private b:Lcom/alibaba/sdk/android/httpdns/probe/f;

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/e;->a:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/e;->a:Lcom/alibaba/sdk/android/httpdns/probe/b;

    new-instance v0, Lcom/alibaba/sdk/android/httpdns/probe/e$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/httpdns/probe/e$1;-><init>(Lcom/alibaba/sdk/android/httpdns/probe/e;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/e;->b:Lcom/alibaba/sdk/android/httpdns/probe/f;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/probe/e;)Lcom/alibaba/sdk/android/httpdns/probe/b;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/probe/e;->a:Lcom/alibaba/sdk/android/httpdns/probe/b;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/probe/e;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/httpdns/probe/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic a(Lcom/alibaba/sdk/android/httpdns/probe/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/alibaba/sdk/android/httpdns/probe/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 9

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/d/a;->a()Lcom/alibaba/sdk/android/httpdns/d/a;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/sdk/android/httpdns/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getProbeStatus(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService$a;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService$a;->b:Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService$a;

    return-object p1

    :cond_0
    sget-object p1, Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService$a;->a:Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService$a;

    return-object p1
.end method

.method public launchIPProbeTask(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 10

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/a/a;->a()Lcom/alibaba/sdk/android/httpdns/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/a/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "ip probe is forbidden"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/i;->f(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/httpdns/probe/e;->getProbeStatus(Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService$a;

    move-result-object v0

    sget-object v1, Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService$a;->a:Lcom/alibaba/sdk/android/httpdns/probe/IPProbeService$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/e;->a:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/probe/a;

    iget-object v9, p0, Lcom/alibaba/sdk/android/httpdns/probe/e;->b:Lcom/alibaba/sdk/android/httpdns/probe/f;

    move-object v3, v1

    move-object v6, p1

    move-object v7, p3

    move v8, p2

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/sdk/android/httpdns/probe/a;-><init>(JLjava/lang/String;[Ljava/lang/String;ILcom/alibaba/sdk/android/httpdns/probe/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const-string p1, "already launch the same task, drop the task"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/i;->f(Ljava/lang/String;)V

    return-void
.end method

.method public setIPListUpdateCallback(Lcom/alibaba/sdk/android/httpdns/probe/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/probe/e;->a:Lcom/alibaba/sdk/android/httpdns/probe/b;

    return-void
.end method

.method public stopIPProbeTask(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop ip probe task for host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/e;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
