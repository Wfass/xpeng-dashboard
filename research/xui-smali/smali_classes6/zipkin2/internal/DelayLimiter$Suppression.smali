.class final Lzipkin2/internal/DelayLimiter$Suppression;
.super Ljava/lang/Object;
.source "DelayLimiter.java"

# interfaces
.implements Ljava/util/concurrent/Delayed;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/DelayLimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Suppression"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Delayed;"
    }
.end annotation


# instance fields
.field final context:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field final expiration:J

.field final ticker:Lzipkin2/internal/DelayLimiter$Ticker;


# direct methods
.method constructor <init>(Lzipkin2/internal/DelayLimiter$Ticker;Ljava/lang/Object;J)V
    .locals 0
    .param p1, "ticker"    # Lzipkin2/internal/DelayLimiter$Ticker;
    .param p3, "expiration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/internal/DelayLimiter$Ticker;",
            "TC;J)V"
        }
    .end annotation

    .line 137
    .local p0, "this":Lzipkin2/internal/DelayLimiter$Suppression;, "Lzipkin2/internal/DelayLimiter$Suppression<TC;>;"
    .local p2, "context":Ljava/lang/Object;, "TC;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lzipkin2/internal/DelayLimiter$Suppression;->ticker:Lzipkin2/internal/DelayLimiter$Ticker;

    .line 139
    iput-object p2, p0, Lzipkin2/internal/DelayLimiter$Suppression;->context:Ljava/lang/Object;

    .line 140
    iput-wide p3, p0, Lzipkin2/internal/DelayLimiter$Suppression;->expiration:J

    .line 141
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 132
    .local p0, "this":Lzipkin2/internal/DelayLimiter$Suppression;, "Lzipkin2/internal/DelayLimiter$Suppression<TC;>;"
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lzipkin2/internal/DelayLimiter$Suppression;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 4
    .param p1, "o"    # Ljava/util/concurrent/Delayed;

    .line 148
    .local p0, "this":Lzipkin2/internal/DelayLimiter$Suppression;, "Lzipkin2/internal/DelayLimiter$Suppression<TC;>;"
    iget-wide v0, p0, Lzipkin2/internal/DelayLimiter$Suppression;->expiration:J

    move-object v2, p1

    check-cast v2, Lzipkin2/internal/DelayLimiter$Suppression;

    iget-wide v2, v2, Lzipkin2/internal/DelayLimiter$Suppression;->expiration:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    return v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 4
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 144
    .local p0, "this":Lzipkin2/internal/DelayLimiter$Suppression;, "Lzipkin2/internal/DelayLimiter$Suppression<TC;>;"
    iget-wide v0, p0, Lzipkin2/internal/DelayLimiter$Suppression;->expiration:J

    iget-object v2, p0, Lzipkin2/internal/DelayLimiter$Suppression;->ticker:Lzipkin2/internal/DelayLimiter$Ticker;

    invoke-virtual {v2}, Lzipkin2/internal/DelayLimiter$Ticker;->read()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
