.class Lzipkin2/internal/Trace$1;
.super Ljava/lang/Object;
.source "Trace.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzipkin2/internal/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lzipkin2/Span;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 107
    check-cast p1, Lzipkin2/Span;

    check-cast p2, Lzipkin2/Span;

    invoke-virtual {p0, p1, p2}, Lzipkin2/internal/Trace$1;->compare(Lzipkin2/Span;Lzipkin2/Span;)I

    move-result p1

    return p1
.end method

.method public compare(Lzipkin2/Span;Lzipkin2/Span;)I
    .locals 4
    .param p1, "left"    # Lzipkin2/Span;
    .param p2, "right"    # Lzipkin2/Span;

    .line 109
    invoke-virtual {p1, p2}, Lzipkin2/Span;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 110
    :cond_0
    invoke-virtual {p1}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 111
    .local v0, "bySpanId":I
    if-eqz v0, :cond_1

    return v0

    .line 112
    :cond_1
    invoke-static {p1, p2}, Lzipkin2/internal/Trace;->compareShared(Lzipkin2/Span;Lzipkin2/Span;)I

    move-result v1

    .line 113
    .local v1, "byShared":I
    if-eqz v1, :cond_2

    return v1

    .line 114
    :cond_2
    invoke-virtual {p1}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v2

    invoke-virtual {p2}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v3

    invoke-static {v2, v3}, Lzipkin2/internal/Trace;->compareEndpoint(Lzipkin2/Endpoint;Lzipkin2/Endpoint;)I

    move-result v2

    return v2
.end method
