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
.field static final a:J

.field static final b:I


# instance fields
.field final c:Lbrave/sampler/RateLimitingSampler$MaxFunction;

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field final e:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lbrave/sampler/RateLimitingSampler;->a:J

    .line 40
    sget-wide v0, Lbrave/sampler/RateLimitingSampler;->a:J

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lbrave/sampler/RateLimitingSampler;->b:I

    return-void
.end method

.method constructor <init>(I)V
    .locals 4

    .line 46
    invoke-direct {p0}, Lbrave/sampler/Sampler;-><init>()V

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lbrave/sampler/RateLimitingSampler;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 48
    new-instance v0, Lbrave/sampler/RateLimitingSampler$LessThan10;

    invoke-direct {v0, p1}, Lbrave/sampler/RateLimitingSampler$LessThan10;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lbrave/sampler/RateLimitingSampler$AtLeast10;

    invoke-direct {v0, p1}, Lbrave/sampler/RateLimitingSampler$AtLeast10;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lbrave/sampler/RateLimitingSampler;->c:Lbrave/sampler/RateLimitingSampler$MaxFunction;

    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 50
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    sget-wide v2, Lbrave/sampler/RateLimitingSampler;->a:J

    add-long/2addr v0, v2

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lbrave/sampler/RateLimitingSampler;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public static create(I)Lbrave/sampler/Sampler;
    .locals 1

    if-ltz p0, :cond_1

    if-nez p0, :cond_0

    .line 35
    sget-object p0, Lbrave/sampler/Sampler;->NEVER_SAMPLE:Lbrave/sampler/Sampler;

    return-object p0

    .line 36
    :cond_0
    new-instance v0, Lbrave/sampler/RateLimitingSampler;

    invoke-direct {v0, p0}, Lbrave/sampler/RateLimitingSampler;-><init>(I)V

    return-object v0

    .line 34
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "tracesPerSecond < 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public isSampled(J)Z
    .locals 10

    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 55
    iget-object v0, p0, Lbrave/sampler/RateLimitingSampler;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    sub-long/2addr p1, v0

    neg-long p1, p1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-gtz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    if-eqz v4, :cond_1

    .line 60
    iget-object v7, p0, Lbrave/sampler/RateLimitingSampler;->e:Ljava/util/concurrent/atomic/AtomicLong;

    sget-wide v8, Lbrave/sampler/RateLimitingSampler;->a:J

    add-long/2addr v8, v0

    invoke-virtual {v7, v0, v1, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lbrave/sampler/RateLimitingSampler;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 65
    :cond_1
    iget-object v0, p0, Lbrave/sampler/RateLimitingSampler;->c:Lbrave/sampler/RateLimitingSampler$MaxFunction;

    if-eqz v4, :cond_2

    move-wide p1, v2

    :cond_2
    invoke-virtual {v0, p1, p2}, Lbrave/sampler/RateLimitingSampler$MaxFunction;->a(J)I

    move-result p1

    .line 68
    :cond_3
    iget-object p2, p0, Lbrave/sampler/RateLimitingSampler;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    add-int/lit8 v0, p2, 0x1

    if-le v0, p1, :cond_4

    return v6

    .line 71
    :cond_4
    iget-object v1, p0, Lbrave/sampler/RateLimitingSampler;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result p2

    if-eqz p2, :cond_3

    return v5
.end method
