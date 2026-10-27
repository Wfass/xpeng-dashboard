.class final Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;
.super Ljava/lang/Object;
.source "InMemoryStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/storage/InMemoryStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TraceIdTimestamp"
.end annotation


# instance fields
.field final lowTraceId:Ljava/lang/String;

.field final timestamp:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .param p1, "lowTraceId"    # Ljava/lang/String;
    .param p2, "timestamp"    # J

    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    iput-object p1, p0, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->lowTraceId:Ljava/lang/String;

    .line 531
    iput-wide p2, p0, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->timestamp:J

    .line 532
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 536
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 537
    :cond_0
    instance-of v1, p1, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 538
    :cond_1
    move-object v1, p1

    check-cast v1, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    .line 539
    .local v1, "that":Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;
    iget-object v3, p0, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->lowTraceId:Ljava/lang/String;

    iget-object v4, v1, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->lowTraceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->timestamp:J

    iget-wide v5, v1, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->timestamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 544
    const/4 v0, 0x1

    .line 545
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 546
    iget-object v2, p0, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->lowTraceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    .line 547
    mul-int/2addr v0, v1

    .line 548
    iget-wide v1, p0, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->timestamp:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    iget-wide v3, p0, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->timestamp:J

    xor-long/2addr v1, v3

    long-to-int v1, v1

    xor-int/2addr v0, v1

    .line 549
    return v0
.end method
