.class public final Lzipkin2/storage/StrictTraceId;
.super Ljava/lang/Object;
.source "StrictTraceId.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/storage/StrictTraceId$FilterSpans;,
        Lzipkin2/storage/StrictTraceId$FilterTracesIfClashOnLowerTraceId;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method public static filterSpans(Ljava/lang/String;)Lzipkin2/Call$Mapper;
    .locals 1
    .param p0, "traceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lzipkin2/Call$Mapper<",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lzipkin2/storage/StrictTraceId$FilterSpans;

    invoke-direct {v0, p0}, Lzipkin2/storage/StrictTraceId$FilterSpans;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static filterTraces(Lzipkin2/storage/QueryRequest;)Lzipkin2/Call$Mapper;
    .locals 1
    .param p0, "request"    # Lzipkin2/storage/QueryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/storage/QueryRequest;",
            ")",
            "Lzipkin2/Call$Mapper<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;>;>;"
        }
    .end annotation

    .line 40
    new-instance v0, Lzipkin2/storage/StrictTraceId$FilterTracesIfClashOnLowerTraceId;

    invoke-direct {v0, p0}, Lzipkin2/storage/StrictTraceId$FilterTracesIfClashOnLowerTraceId;-><init>(Lzipkin2/storage/QueryRequest;)V

    return-object v0
.end method

.method static hasClashOnLowerTraceId(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;>;)Z"
        }
    .end annotation

    .line 70
    .local p0, "input":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lzipkin2/Span;>;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 71
    .local v0, "traceCount":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    .line 75
    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 76
    .local v1, "traceIdLows":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 77
    .local v3, "clash":Z
    move v4, v2

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 78
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzipkin2/Span;

    invoke-virtual {v5}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lzipkin2/storage/StrictTraceId;->lowerTraceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "traceId":Ljava/lang/String;
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 80
    const/4 v3, 0x1

    .line 81
    goto :goto_1

    .line 77
    .end local v5    # "traceId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 84
    .end local v4    # "i":I
    :cond_2
    :goto_1
    return v3
.end method

.method static lowerTraceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "traceId"    # Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
