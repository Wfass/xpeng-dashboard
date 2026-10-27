.class Lcom/alibaba/sdk/android/httpdns/probe/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/alibaba/sdk/android/httpdns/probe/f;

.field private a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private a:[Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private port:I


# direct methods
.method public constructor <init>(JLjava/lang/String;[Ljava/lang/String;ILcom/alibaba/sdk/android/httpdns/probe/f;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:Lcom/alibaba/sdk/android/httpdns/probe/f;

    iput-wide p1, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->i:J

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:[Ljava/lang/String;

    iput p5, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->port:I

    iput-object p6, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:Lcom/alibaba/sdk/android/httpdns/probe/f;

    return-void
.end method

.method private a([Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/probe/c;
    .locals 11

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v5, v0, v1

    aget-object v6, p1, v1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/32 v1, 0x7fffffff

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-wide v7, v3

    goto :goto_0

    :cond_0
    move-wide v7, v1

    :goto_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v9, v0

    goto :goto_1

    :cond_1
    move-wide v9, v1

    :goto_1
    new-instance v0, Lcom/alibaba/sdk/android/httpdns/probe/c;

    iget-object v3, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->h:Ljava/lang/String;

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/alibaba/sdk/android/httpdns/probe/c;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/util/concurrent/ConcurrentHashMap;)[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_4

    move v3, v2

    :goto_2
    array-length v4, v0

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_3

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-int/lit8 v6, v3, 0x1

    aget-object v7, v0, v6

    invoke-virtual {p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v4, v4, v7

    if-lez v4, :cond_2

    aget-object v4, v0, v3

    aget-object v5, v0, v6

    aput-object v5, v0, v3

    aput-object v4, v0, v6

    :cond_2
    move v3, v6

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:[Ljava/lang/String;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/c;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/alibaba/sdk/android/httpdns/probe/g;

    iget-object v4, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:[Ljava/lang/String;

    aget-object v4, v4, v1

    iget v5, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->port:I

    iget-object v6, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/alibaba/sdk/android/httpdns/probe/g;-><init>(Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x2710

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:Lcom/alibaba/sdk/android/httpdns/probe/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/httpdns/probe/a;->a(Ljava/util/concurrent/ConcurrentHashMap;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->a:Lcom/alibaba/sdk/android/httpdns/probe/f;

    iget-wide v2, p0, Lcom/alibaba/sdk/android/httpdns/probe/a;->i:J

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/httpdns/probe/a;->a([Ljava/lang/String;)Lcom/alibaba/sdk/android/httpdns/probe/c;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/sdk/android/httpdns/probe/f;->a(JLcom/alibaba/sdk/android/httpdns/probe/c;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    return-void
.end method
