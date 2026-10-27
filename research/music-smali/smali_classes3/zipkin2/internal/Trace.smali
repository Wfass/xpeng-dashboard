.class public Lzipkin2/internal/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/internal/Trace$EndpointTracker;
    }
.end annotation


# static fields
.field static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lzipkin2/internal/Trace$1;

    invoke-direct {v0}, Lzipkin2/internal/Trace$1;-><init>()V

    sput-object v0, Lzipkin2/internal/Trace;->a:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;TT;Z)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p0, :cond_2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    .line 160
    :cond_4
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static a(Lzipkin2/Endpoint;Lzipkin2/Endpoint;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 147
    :cond_2
    invoke-virtual {p0}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lzipkin2/internal/Trace;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v1

    if-eqz v1, :cond_3

    return v1

    .line 149
    :cond_3
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lzipkin2/internal/Trace;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v1

    if-eqz v1, :cond_4

    return v1

    .line 151
    :cond_4
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lzipkin2/internal/Trace;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result p0

    return p0
.end method

.method static a(Lzipkin2/Span;Lzipkin2/Span;)I
    .locals 4

    .line 121
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 122
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const/4 v0, -0x1

    if-eqz v1, :cond_2

    return v0

    .line 128
    :cond_2
    sget-object v1, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    invoke-virtual {p0}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object p0

    invoke-virtual {v1, p0}, Lzipkin2/Span$Kind;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 129
    sget-object v1, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    invoke-virtual {p1}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object p1

    invoke-virtual {v1, p1}, Lzipkin2/Span$Kind;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    return v2

    :cond_3
    if-eqz p0, :cond_4

    return v0

    :cond_4
    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v2
.end method

.method public static merge(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;)",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    .line 31
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    sget-object p0, Lzipkin2/internal/Trace;->a:Ljava/util/Comparator;

    invoke-static {v2, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    .line 35
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/Span;

    invoke-virtual {v3}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_2

    .line 37
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzipkin2/Span;

    invoke-virtual {v5}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_1

    move-object v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move-object v5, v3

    :goto_1
    if-ge p0, v0, :cond_d

    .line 44
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzipkin2/Span;

    .line 46
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 50
    invoke-virtual {v6}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v8, v9, :cond_3

    .line 51
    invoke-virtual {v6}, Lzipkin2/Span;->toBuilder()Lzipkin2/Span$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Lzipkin2/Span$Builder;->traceId(Ljava/lang/String;)Lzipkin2/Span$Builder;

    move-result-object v8

    goto :goto_2

    :cond_3
    move-object v8, v3

    :goto_2
    move-object v9, v8

    move-object v8, v3

    :goto_3
    add-int/lit8 v10, p0, 0x1

    if-ge v10, v0, :cond_7

    .line 56
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lzipkin2/Span;

    .line 57
    invoke-virtual {v11}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v12

    .line 58
    invoke-virtual {v6}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_4

    :cond_4
    if-nez v8, :cond_5

    .line 61
    new-instance v8, Lzipkin2/internal/Trace$EndpointTracker;

    invoke-direct {v8}, Lzipkin2/internal/Trace$EndpointTracker;-><init>()V

    .line 62
    invoke-virtual {v6}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v12

    invoke-virtual {v8, v12}, Lzipkin2/internal/Trace$EndpointTracker;->a(Lzipkin2/Endpoint;)Z

    .line 66
    :cond_5
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v11}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-ne v7, v12, :cond_7

    .line 67
    invoke-virtual {v11}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v12

    invoke-virtual {v8, v12}, Lzipkin2/internal/Trace$EndpointTracker;->a(Lzipkin2/Endpoint;)Z

    move-result v12

    if-eqz v12, :cond_7

    if-nez v9, :cond_6

    .line 68
    invoke-virtual {v6}, Lzipkin2/Span;->toBuilder()Lzipkin2/Span$Builder;

    move-result-object v9

    .line 69
    :cond_6
    invoke-virtual {v9, v11}, Lzipkin2/Span$Builder;->merge(Lzipkin2/Span;)Lzipkin2/Span$Builder;

    add-int/lit8 v0, v0, -0x1

    .line 73
    invoke-interface {v2, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v5, :cond_b

    .line 82
    invoke-virtual {v5}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 84
    invoke-virtual {v5}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v8

    sget-object v11, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    if-ne v8, v11, :cond_9

    invoke-virtual {v6}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v8

    sget-object v11, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    if-ne v8, v11, :cond_9

    if-nez v7, :cond_9

    if-nez v9, :cond_8

    .line 86
    invoke-virtual {v6}, Lzipkin2/Span;->toBuilder()Lzipkin2/Span$Builder;

    move-result-object v7

    move-object v9, v7

    .line 87
    :cond_8
    invoke-virtual {v9, v1}, Lzipkin2/Span$Builder;->shared(Z)Lzipkin2/Span$Builder;

    move v7, v1

    :cond_9
    if-eqz v7, :cond_b

    .line 90
    invoke-virtual {v6}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_b

    invoke-virtual {v5}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    if-nez v9, :cond_a

    .line 92
    invoke-virtual {v6}, Lzipkin2/Span;->toBuilder()Lzipkin2/Span$Builder;

    move-result-object v7

    move-object v9, v7

    .line 93
    :cond_a
    invoke-virtual {v5}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lzipkin2/Span$Builder;->parentId(Ljava/lang/String;)Lzipkin2/Span$Builder;

    :cond_b
    if-eqz v9, :cond_c

    .line 98
    invoke-virtual {v9}, Lzipkin2/Span$Builder;->build()Lzipkin2/Span;

    move-result-object v5

    .line 99
    invoke-interface {v2, p0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_c
    move-object v5, v6

    :goto_5
    move p0, v10

    goto/16 :goto_1

    :cond_d
    return-object v2
.end method
