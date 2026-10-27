.class public final Lzipkin2/internal/DelayLimiter;
.super Ljava/lang/Object;
.source "DelayLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/internal/DelayLimiter$Suppression;,
        Lzipkin2/internal/DelayLimiter$Ticker;,
        Lzipkin2/internal/DelayLimiter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TC;",
            "Lzipkin2/internal/DelayLimiter$Suppression<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field final cardinality:J

.field final suppressions:Ljava/util/concurrent/DelayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/DelayQueue<",
            "Lzipkin2/internal/DelayLimiter$Suppression<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field final ticker:Lzipkin2/internal/DelayLimiter$Ticker;

.field final ttlNanos:J


# direct methods
.method constructor <init>(Lzipkin2/internal/DelayLimiter$Builder;)V
    .locals 2
    .param p1, "builder"    # Lzipkin2/internal/DelayLimiter$Builder;

    .line 81
    .local p0, "this":Lzipkin2/internal/DelayLimiter;, "Lzipkin2/internal/DelayLimiter<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lzipkin2/internal/DelayLimiter;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    new-instance v0, Ljava/util/concurrent/DelayQueue;

    invoke-direct {v0}, Ljava/util/concurrent/DelayQueue;-><init>()V

    iput-object v0, p0, Lzipkin2/internal/DelayLimiter;->suppressions:Ljava/util/concurrent/DelayQueue;

    .line 82
    iget-object v0, p1, Lzipkin2/internal/DelayLimiter$Builder;->ticker:Lzipkin2/internal/DelayLimiter$Ticker;

    iput-object v0, p0, Lzipkin2/internal/DelayLimiter;->ticker:Lzipkin2/internal/DelayLimiter$Ticker;

    .line 83
    iget-wide v0, p1, Lzipkin2/internal/DelayLimiter$Builder;->ttlNanos:J

    iput-wide v0, p0, Lzipkin2/internal/DelayLimiter;->ttlNanos:J

    .line 84
    iget v0, p1, Lzipkin2/internal/DelayLimiter$Builder;->cardinality:I

    int-to-long v0, v0

    iput-wide v0, p0, Lzipkin2/internal/DelayLimiter;->cardinality:J

    .line 85
    return-void
.end method

.method public static create()Lzipkin2/internal/DelayLimiter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">()",
            "Lzipkin2/internal/DelayLimiter<",
            "TC;>;"
        }
    .end annotation

    .line 26
    new-instance v0, Lzipkin2/internal/DelayLimiter$Builder;

    invoke-direct {v0}, Lzipkin2/internal/DelayLimiter$Builder;-><init>()V

    invoke-virtual {v0}, Lzipkin2/internal/DelayLimiter$Builder;->build()Lzipkin2/internal/DelayLimiter;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lzipkin2/internal/DelayLimiter$Builder;
    .locals 1

    .line 30
    new-instance v0, Lzipkin2/internal/DelayLimiter$Builder;

    invoke-direct {v0}, Lzipkin2/internal/DelayLimiter$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method cleanupExpiredSuppressions()V
    .locals 3

    .line 127
    .local p0, "this":Lzipkin2/internal/DelayLimiter;, "Lzipkin2/internal/DelayLimiter<TC;>;"
    :goto_0
    iget-object v0, p0, Lzipkin2/internal/DelayLimiter;->suppressions:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->poll()Ljava/util/concurrent/Delayed;

    move-result-object v0

    check-cast v0, Lzipkin2/internal/DelayLimiter$Suppression;

    move-object v1, v0

    .local v1, "expiredSuppression":Lzipkin2/internal/DelayLimiter$Suppression;, "Lzipkin2/internal/DelayLimiter$Suppression<TC;>;"
    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lzipkin2/internal/DelayLimiter;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v1, Lzipkin2/internal/DelayLimiter$Suppression;->context:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .line 121
    .local p0, "this":Lzipkin2/internal/DelayLimiter;, "Lzipkin2/internal/DelayLimiter<TC;>;"
    iget-object v0, p0, Lzipkin2/internal/DelayLimiter;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 122
    iget-object v0, p0, Lzipkin2/internal/DelayLimiter;->suppressions:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->clear()V

    .line 123
    return-void
.end method

.method public invalidate(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Lzipkin2/internal/DelayLimiter;, "Lzipkin2/internal/DelayLimiter<TC;>;"
    .local p1, "context":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lzipkin2/internal/DelayLimiter;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzipkin2/internal/DelayLimiter$Suppression;

    .line 117
    .local v0, "suppression":Lzipkin2/internal/DelayLimiter$Suppression;, "Lzipkin2/internal/DelayLimiter$Suppression<TC;>;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lzipkin2/internal/DelayLimiter;->suppressions:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/DelayQueue;->remove(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    return-void
.end method

.method removeOneSuppression()V
    .locals 3

    .line 107
    .local p0, "this":Lzipkin2/internal/DelayLimiter;, "Lzipkin2/internal/DelayLimiter<TC;>;"
    :cond_0
    iget-object v0, p0, Lzipkin2/internal/DelayLimiter;->suppressions:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->peek()Ljava/util/concurrent/Delayed;

    move-result-object v0

    check-cast v0, Lzipkin2/internal/DelayLimiter$Suppression;

    move-object v1, v0

    .local v1, "eldest":Lzipkin2/internal/DelayLimiter$Suppression;, "Lzipkin2/internal/DelayLimiter$Suppression<TC;>;"
    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lzipkin2/internal/DelayLimiter;->suppressions:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/DelayQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lzipkin2/internal/DelayLimiter;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v1, Lzipkin2/internal/DelayLimiter$Suppression;->context:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    nop

    .line 113
    :cond_1
    return-void
.end method

.method public shouldInvoke(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 89
    .local p0, "this":Lzipkin2/internal/DelayLimiter;, "Lzipkin2/internal/DelayLimiter<TC;>;"
    .local p1, "context":Ljava/lang/Object;, "TC;"
    invoke-virtual {p0}, Lzipkin2/internal/DelayLimiter;->cleanupExpiredSuppressions()V

    .line 91
    iget-object v0, p0, Lzipkin2/internal/DelayLimiter;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 93
    :cond_0
    new-instance v0, Lzipkin2/internal/DelayLimiter$Suppression;

    iget-object v2, p0, Lzipkin2/internal/DelayLimiter;->ticker:Lzipkin2/internal/DelayLimiter$Ticker;

    iget-object v3, p0, Lzipkin2/internal/DelayLimiter;->ticker:Lzipkin2/internal/DelayLimiter$Ticker;

    invoke-virtual {v3}, Lzipkin2/internal/DelayLimiter$Ticker;->read()J

    move-result-wide v3

    iget-wide v5, p0, Lzipkin2/internal/DelayLimiter;->ttlNanos:J

    add-long/2addr v3, v5

    invoke-direct {v0, v2, p1, v3, v4}, Lzipkin2/internal/DelayLimiter$Suppression;-><init>(Lzipkin2/internal/DelayLimiter$Ticker;Ljava/lang/Object;J)V

    .line 95
    .local v0, "suppression":Lzipkin2/internal/DelayLimiter$Suppression;, "Lzipkin2/internal/DelayLimiter$Suppression<TC;>;"
    iget-object v2, p0, Lzipkin2/internal/DelayLimiter;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    return v1

    .line 97
    :cond_1
    iget-object v1, p0, Lzipkin2/internal/DelayLimiter;->suppressions:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    .line 100
    iget-object v1, p0, Lzipkin2/internal/DelayLimiter;->suppressions:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/DelayQueue;->size()I

    move-result v1

    int-to-long v1, v1

    iget-wide v3, p0, Lzipkin2/internal/DelayLimiter;->cardinality:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    invoke-virtual {p0}, Lzipkin2/internal/DelayLimiter;->removeOneSuppression()V

    .line 102
    :cond_2
    const/4 v1, 0x1

    return v1
.end method
