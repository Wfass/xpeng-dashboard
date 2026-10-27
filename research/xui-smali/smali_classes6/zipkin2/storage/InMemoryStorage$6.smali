.class Lzipkin2/storage/InMemoryStorage$6;
.super Ljava/lang/Object;
.source "InMemoryStorage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/storage/InMemoryStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 403
    check-cast p1, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    check-cast p2, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    invoke-virtual {p0, p1, p2}, Lzipkin2/storage/InMemoryStorage$6;->compare(Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;)I

    move-result p1

    return p1
.end method

.method public compare(Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;)I
    .locals 7
    .param p1, "left"    # Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;
    .param p2, "right"    # Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    .line 406
    iget-wide v0, p1, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->timestamp:J

    .local v0, "x":J
    iget-wide v2, p2, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->timestamp:J

    .line 407
    .local v2, "y":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 408
    .local v4, "result":I
    :goto_0
    if-eqz v4, :cond_2

    neg-int v5, v4

    return v5

    .line 409
    :cond_2
    iget-object v5, p2, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->lowTraceId:Ljava/lang/String;

    iget-object v6, p1, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->lowTraceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    return v5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 414
    const-string v0, "TimestampDescending{}"

    return-object v0
.end method
