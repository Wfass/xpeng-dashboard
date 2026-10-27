.class public final Lzipkin2/internal/DelayLimiter$Builder;
.super Ljava/lang/Object;
.source "DelayLimiter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/DelayLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field cardinality:I

.field ticker:Lzipkin2/internal/DelayLimiter$Ticker;

.field ttlNanos:J


# direct methods
.method constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lzipkin2/internal/DelayLimiter$Ticker;

    invoke-direct {v0}, Lzipkin2/internal/DelayLimiter$Ticker;-><init>()V

    iput-object v0, p0, Lzipkin2/internal/DelayLimiter$Builder;->ticker:Lzipkin2/internal/DelayLimiter$Ticker;

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/internal/DelayLimiter$Builder;->ttlNanos:J

    .line 36
    const/16 v0, 0x4e20

    iput v0, p0, Lzipkin2/internal/DelayLimiter$Builder;->cardinality:I

    .line 67
    return-void
.end method


# virtual methods
.method public build()Lzipkin2/internal/DelayLimiter;
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

    .line 63
    new-instance v0, Lzipkin2/internal/DelayLimiter;

    invoke-direct {v0, p0}, Lzipkin2/internal/DelayLimiter;-><init>(Lzipkin2/internal/DelayLimiter$Builder;)V

    return-object v0
.end method

.method public cardinality(I)Lzipkin2/internal/DelayLimiter$Builder;
    .locals 2
    .param p1, "cardinality"    # I

    .line 52
    if-lez p1, :cond_0

    .line 53
    iput p1, p0, Lzipkin2/internal/DelayLimiter$Builder;->cardinality:I

    .line 54
    return-object p0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cardinality <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ticker(Lzipkin2/internal/DelayLimiter$Ticker;)Lzipkin2/internal/DelayLimiter$Builder;
    .locals 0
    .param p1, "ticker"    # Lzipkin2/internal/DelayLimiter$Ticker;

    .line 58
    iput-object p1, p0, Lzipkin2/internal/DelayLimiter$Builder;->ticker:Lzipkin2/internal/DelayLimiter$Ticker;

    .line 59
    return-object p0
.end method

.method public ttl(I)Lzipkin2/internal/DelayLimiter$Builder;
    .locals 3
    .param p1, "ttl"    # I

    .line 43
    if-lez p1, :cond_0

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/internal/DelayLimiter$Builder;->ttlNanos:J

    .line 45
    return-object p0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ttl <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
