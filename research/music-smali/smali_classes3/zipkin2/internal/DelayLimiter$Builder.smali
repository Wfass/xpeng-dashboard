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
.field a:Lzipkin2/internal/DelayLimiter$Ticker;

.field b:J

.field c:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lzipkin2/internal/DelayLimiter$Ticker;

    invoke-direct {v0}, Lzipkin2/internal/DelayLimiter$Ticker;-><init>()V

    iput-object v0, p0, Lzipkin2/internal/DelayLimiter$Builder;->a:Lzipkin2/internal/DelayLimiter$Ticker;

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/internal/DelayLimiter$Builder;->b:J

    const/16 v0, 0x4e20

    .line 36
    iput v0, p0, Lzipkin2/internal/DelayLimiter$Builder;->c:I

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
    .locals 1

    if-lez p1, :cond_0

    .line 53
    iput p1, p0, Lzipkin2/internal/DelayLimiter$Builder;->c:I

    return-object p0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cardinality <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ttl(I)Lzipkin2/internal/DelayLimiter$Builder;
    .locals 3

    if-lez p1, :cond_0

    .line 44
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lzipkin2/internal/DelayLimiter$Builder;->b:J

    return-object p0

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ttl <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
