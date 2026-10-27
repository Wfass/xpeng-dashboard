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

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static a(Ljava/util/List;)Z
    .locals 6
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
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return v2

    .line 75
    :cond_0
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    move v4, v2

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

    invoke-static {v5}, Lzipkin2/storage/StrictTraceId;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public static filterSpans(Ljava/lang/String;)Lzipkin2/Call$Mapper;
    .locals 1
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
