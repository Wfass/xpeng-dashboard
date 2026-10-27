.class public Lbrave/sampler/RateLimitingSampler;
.super Lbrave/sampler/Sampler;
.source "RateLimitingSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrave/sampler/RateLimitingSampler$AtLeast10;,
        Lbrave/sampler/RateLimitingSampler$LessThan10;,
        Lbrave/sampler/RateLimitingSampler$MaxFunction;
    }
.end annotation


# static fields
.field static final NANOS_PER_DECISECOND:I

.field static final NANOS_PER_SECOND:J


# instance fields
.field final maxFunction:Lbrave/sampler/RateLimitingSampler$MaxFunction;

.field final nextReset:Ljava/util/concurrent/atomic/AtomicLong;

.field final usage:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lbrave/sampler/RateLimitingSampler;->NANOS_PER_SECOND:J

    .line 40
    sget-wide v0, Lbrave/sampler/RateLimitingSampler;->NANOS_PER_SECOND:J

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lbrave/sampler/RateLimitingSampler;->NANOS_PER_DECISECOND:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 5
    .param p1, "tracesPerSecond"    # I

    .line 46
    invoke-direct {p0}, Lbrave/sampler/Sampler;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lbrave/sampler/RateLimitingSampler;->usage:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 47
    nop

    .line 48
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    new-instance v0, Lbrave/sampler/RateLimitingSampler$LessThan10;

    invoke-direct {v0, p1}, Lbrave/sampler/RateLimitingSampler$LessThan10;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lbrave/sampler/RateLimitingSampler$AtLeast10;

    invoke-direct {v0, p1}, Lbrave/sampler/RateLimitingSampler$AtLeast10;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lbrave/sampler/RateLimitingSampler;->maxFunction:Lbrave/sampler/RateLimitingSampler$MaxFunction;

    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 50
    .local v0, "now":J
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    sget-wide v3, Lbrave/sampler/RateLimitingSampler;->NANOS_PER_SECOND:J

    add-long/2addr v3, v0

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lbrave/sampler/RateLimitingSampler;->nextReset:Ljava/util/concurrent/atomic/AtomicLong;

    .line 51
    return-void
.end method

.method public static create(I)Lbrave/sampler/Sampler;
    .locals 2
    .param p0, "tracesPerSecond"    # I

    .line 34
    if-ltz p0, :cond_1

    .line 35
    if-nez p0, :cond_0

    sget-object v0, Lbrave/sampler/Sampler;->NEVER_SAMPLE:Lbrave/sampler/Sampler;

    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lbrave/sampler/RateLimitingSampler;

    invoke-direct {v0, p0}, Lbrave/sampler/RateLimitingSampler;-><init>(I)V

    return-object v0

    .line 34
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tracesPerSecond < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public isSampled(J)Z
    .locals 15
    .param p1, "ignoredTraceId"    # J

    move-object v0, p0

    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 55
    .local v1, "now":J
    iget-object v3, v0, Lbrave/sampler/RateLimitingSampler;->nextReset:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 57
    .local v3, "updateAt":J
    sub-long v5, v1, v3

    neg-long v5, v5

    .line 58
    .local v5, "nanosUntilReset":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-gtz v9, :cond_0

    move v9, v11

    goto :goto_0

    :cond_0
    move v9, v10

    .line 59
    .local v9, "shouldReset":Z
    :goto_0
    if-eqz v9, :cond_1

    .line 60
    iget-object v12, v0, Lbrave/sampler/RateLimitingSampler;->nextReset:Ljava/util/concurrent/atomic/AtomicLong;

    sget-wide v13, Lbrave/sampler/RateLimitingSampler;->NANOS_PER_SECOND:J

    add-long/2addr v13, v3

    invoke-virtual {v12, v3, v4, v13, v14}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 61
    iget-object v12, v0, Lbrave/sampler/RateLimitingSampler;->usage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12, v10}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 65
    :cond_1
    iget-object v12, v0, Lbrave/sampler/RateLimitingSampler;->maxFunction:Lbrave/sampler/RateLimitingSampler$MaxFunction;

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move-wide v7, v5

    :goto_1
    invoke-virtual {v12, v7, v8}, Lbrave/sampler/RateLimitingSampler$MaxFunction;->max(J)I

    move-result v7

    .line 68
    .local v7, "max":I
    :cond_3
    iget-object v8, v0, Lbrave/sampler/RateLimitingSampler;->usage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    .line 69
    .local v8, "prev":I
    add-int/lit8 v12, v8, 0x1

    .line 70
    .local v12, "next":I
    if-le v12, v7, :cond_4

    return v10

    .line 71
    :cond_4
    iget-object v13, v0, Lbrave/sampler/RateLimitingSampler;->usage:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13, v8, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 72
    return v11
.end method
