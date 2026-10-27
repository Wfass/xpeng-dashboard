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
    .locals 4

    .line 406
    iget-wide v0, p1, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->timestamp:J

    iget-wide v2, p2, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->timestamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    neg-int p1, v0

    return p1

    .line 409
    :cond_2
    iget-object p2, p2, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->lowTraceId:Ljava/lang/String;

    iget-object p1, p1, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->lowTraceId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TimestampDescending{}"

    return-object v0
.end method
