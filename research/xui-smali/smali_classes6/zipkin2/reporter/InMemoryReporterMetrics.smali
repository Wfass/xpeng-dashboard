.class public final Lzipkin2/reporter/InMemoryReporterMetrics;
.super Ljava/lang/Object;
.source "InMemoryReporterMetrics.java"

# interfaces
.implements Lzipkin2/reporter/ReporterMetrics;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;
    }
.end annotation


# instance fields
.field private final messagesDropped:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final metrics:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lzipkin2/reporter/InMemoryReporterMetrics;->metrics:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lzipkin2/reporter/InMemoryReporterMetrics;->messagesDropped:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private get(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;)J
    .locals 3
    .param p1, "key"    # Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    .line 119
    iget-object v0, p0, Lzipkin2/reporter/InMemoryReporterMetrics;->metrics:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 120
    .local v0, "atomic":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method static increment(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;I)V
    .locals 6
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;TK;I)V"
        }
    .end annotation

    .line 128
    .local p0, "metrics":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;Ljava/util/concurrent/atomic/AtomicLong;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p2, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 131
    .local v0, "metric":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_1

    .line 132
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v2, p2

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 133
    if-nez v0, :cond_1

    return-void

    .line 137
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    .line 138
    .local v1, "oldValue":J
    int-to-long v3, p2

    add-long/2addr v3, v1

    .line 139
    .local v3, "update":J
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 140
    .end local v1    # "oldValue":J
    .end local v3    # "update":J
    :cond_2
    goto :goto_0
.end method

.method private increment(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;I)V
    .locals 1
    .param p1, "key"    # Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;
    .param p2, "quantity"    # I

    .line 124
    iget-object v0, p0, Lzipkin2/reporter/InMemoryReporterMetrics;->metrics:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, p1, p2}, Lzipkin2/reporter/InMemoryReporterMetrics;->increment(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;I)V

    .line 125
    return-void
.end method

.method private update(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;I)V
    .locals 5
    .param p1, "key"    # Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;
    .param p2, "update"    # I

    .line 145
    iget-object v0, p0, Lzipkin2/reporter/InMemoryReporterMetrics;->metrics:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 146
    .local v0, "metric":Ljava/util/concurrent/atomic/AtomicLong;
    if-nez v0, :cond_0

    .line 147
    iget-object v1, p0, Lzipkin2/reporter/InMemoryReporterMetrics;->metrics:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v3, p2

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 148
    if-nez v0, :cond_0

    return-void

    .line 150
    :cond_0
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 151
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 115
    iget-object v0, p0, Lzipkin2/reporter/InMemoryReporterMetrics;->metrics:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 116
    return-void
.end method

.method public incrementMessageBytes(I)V
    .locals 1
    .param p1, "quantity"    # I

    .line 66
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->messageBytes:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-direct {p0, v0, p1}, Lzipkin2/reporter/InMemoryReporterMetrics;->increment(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;I)V

    .line 67
    return-void
.end method

.method public incrementMessages()V
    .locals 2

    .line 38
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->messages:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lzipkin2/reporter/InMemoryReporterMetrics;->increment(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;I)V

    .line 39
    return-void
.end method

.method public incrementMessagesDropped(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 46
    iget-object v0, p0, Lzipkin2/reporter/InMemoryReporterMetrics;->messagesDropped:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lzipkin2/reporter/InMemoryReporterMetrics;->increment(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Object;I)V

    .line 47
    return-void
.end method

.method public incrementSpanBytes(I)V
    .locals 1
    .param p1, "quantity"    # I

    .line 82
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spanBytes:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-direct {p0, v0, p1}, Lzipkin2/reporter/InMemoryReporterMetrics;->increment(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;I)V

    .line 83
    return-void
.end method

.method public incrementSpans(I)V
    .locals 1
    .param p1, "quantity"    # I

    .line 74
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spans:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-direct {p0, v0, p1}, Lzipkin2/reporter/InMemoryReporterMetrics;->increment(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;I)V

    .line 75
    return-void
.end method

.method public incrementSpansDropped(I)V
    .locals 1
    .param p1, "quantity"    # I

    .line 91
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spansDropped:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-direct {p0, v0, p1}, Lzipkin2/reporter/InMemoryReporterMetrics;->increment(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;I)V

    .line 92
    return-void
.end method

.method public messageBytes()J
    .locals 2

    .line 70
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->messageBytes:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-direct {p0, v0}, Lzipkin2/reporter/InMemoryReporterMetrics;->get(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method public messages()J
    .locals 2

    .line 42
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->messages:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-direct {p0, v0}, Lzipkin2/reporter/InMemoryReporterMetrics;->get(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method public messagesDropped()J
    .locals 6

    .line 58
    const-wide/16 v0, 0x0

    .line 59
    .local v0, "result":J
    iget-object v2, p0, Lzipkin2/reporter/InMemoryReporterMetrics;->messagesDropped:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    .line 60
    .local v3, "count":Ljava/util/concurrent/atomic/AtomicLong;
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 61
    .end local v3    # "count":Ljava/util/concurrent/atomic/AtomicLong;
    goto :goto_0

    .line 62
    :cond_0
    return-wide v0
.end method

.method public messagesDroppedByCause()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lzipkin2/reporter/InMemoryReporterMetrics;->messagesDropped:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 51
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<+Ljava/lang/Throwable;>;Ljava/lang/Long;>;"
    iget-object v1, p0, Lzipkin2/reporter/InMemoryReporterMetrics;->messagesDropped:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 52
    .local v2, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/Throwable;>;Ljava/util/concurrent/atomic/AtomicLong;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .end local v2    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<+Ljava/lang/Throwable;>;Ljava/util/concurrent/atomic/AtomicLong;>;"
    goto :goto_0

    .line 54
    :cond_0
    return-object v0
.end method

.method public queuedBytes()J
    .locals 2

    .line 111
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spanBytesPending:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-direct {p0, v0}, Lzipkin2/reporter/InMemoryReporterMetrics;->get(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method public queuedSpans()J
    .locals 2

    .line 103
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spansPending:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-direct {p0, v0}, Lzipkin2/reporter/InMemoryReporterMetrics;->get(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method public spanBytes()J
    .locals 2

    .line 86
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spanBytes:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-direct {p0, v0}, Lzipkin2/reporter/InMemoryReporterMetrics;->get(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method public spans()J
    .locals 2

    .line 78
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spans:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-direct {p0, v0}, Lzipkin2/reporter/InMemoryReporterMetrics;->get(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method public spansDropped()J
    .locals 2

    .line 95
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spansDropped:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-direct {p0, v0}, Lzipkin2/reporter/InMemoryReporterMetrics;->get(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;)J

    move-result-wide v0

    return-wide v0
.end method

.method public updateQueuedBytes(I)V
    .locals 1
    .param p1, "update"    # I

    .line 107
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spanBytesPending:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-direct {p0, v0, p1}, Lzipkin2/reporter/InMemoryReporterMetrics;->update(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;I)V

    .line 108
    return-void
.end method

.method public updateQueuedSpans(I)V
    .locals 1
    .param p1, "update"    # I

    .line 99
    sget-object v0, Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;->spansPending:Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;

    invoke-direct {p0, v0, p1}, Lzipkin2/reporter/InMemoryReporterMetrics;->update(Lzipkin2/reporter/InMemoryReporterMetrics$MetricKey;I)V

    .line 100
    return-void
.end method
