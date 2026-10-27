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
.field static final CLEANUP_COMPARATOR:Ljava/util/Comparator;
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

    sput-object v0, Lzipkin2/internal/Trace;->CLEANUP_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method static compareEndpoint(Lzipkin2/Endpoint;Lzipkin2/Endpoint;)I
    .locals 5
    .param p0, "left"    # Lzipkin2/Endpoint;
    .param p1, "right"    # Lzipkin2/Endpoint;

    .line 142
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 143
    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 144
    :cond_1
    if-nez p1, :cond_2

    .line 145
    const/4 v0, 0x1

    return v0

    .line 147
    :cond_2
    invoke-virtual {p0}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lzipkin2/Endpoint;->serviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lzipkin2/internal/Trace;->nullSafeCompareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v1

    .line 148
    .local v1, "byService":I
    if-eqz v1, :cond_3

    return v1

    .line 149
    :cond_3
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv4()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lzipkin2/internal/Trace;->nullSafeCompareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v2

    .line 150
    .local v2, "byIpV4":I
    if-eqz v2, :cond_4

    return v2

    .line 151
    :cond_4
    invoke-virtual {p0}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lzipkin2/Endpoint;->ipv6()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lzipkin2/internal/Trace;->nullSafeCompareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I

    move-result v0

    return v0
.end method

.method static compareShared(Lzipkin2/Span;Lzipkin2/Span;)I
    .locals 8
    .param p0, "left"    # Lzipkin2/Span;
    .param p1, "right"    # Lzipkin2/Span;

    .line 121
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 122
    .local v0, "leftShared":Z
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 123
    .local v1, "rightShared":Z
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    return v2

    .line 124
    :cond_0
    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    .line 125
    :cond_1
    const/4 v4, -0x1

    if-eqz v1, :cond_2

    return v4

    .line 128
    :cond_2
    sget-object v5, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    invoke-virtual {p0}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v6

    invoke-virtual {v5, v6}, Lzipkin2/Span$Kind;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 129
    .local v5, "leftClient":Z
    sget-object v6, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    invoke-virtual {p1}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v7

    invoke-virtual {v6, v7}, Lzipkin2/Span$Kind;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 130
    .local v6, "rightClient":Z
    if-eqz v5, :cond_3

    if-eqz v6, :cond_3

    return v2

    .line 131
    :cond_3
    if-eqz v5, :cond_4

    return v4

    .line 132
    :cond_4
    if-eqz v6, :cond_5

    return v3

    .line 133
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
    .local p0, "spans":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 30
    .local v0, "length":I
    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-object p0

    .line 31
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    sget-object v3, Lzipkin2/internal/Trace;->CLEANUP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 35
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzipkin2/Span;

    invoke-virtual {v4}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "traceId":Ljava/lang/String;
    move-object v5, v4

    move v4, v1

    .local v4, "i":I
    .local v5, "traceId":Ljava/lang/String;
    :goto_0
    if-ge v4, v0, :cond_2

    .line 37
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzipkin2/Span;

    invoke-virtual {v6}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v6

    .line 38
    .local v6, "nextTraceId":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x20

    if-eq v7, v8, :cond_1

    move-object v5, v6

    .line 36
    .end local v6    # "nextTraceId":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42
    .end local v4    # "i":I
    :cond_2
    const/4 v4, 0x0

    .line 43
    .local v4, "last":Lzipkin2/Span;
    nop

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_d

    .line 44
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lzipkin2/Span;

    .line 46
    .local v6, "span":Lzipkin2/Span;
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 49
    .local v7, "spanShared":Z
    const/4 v8, 0x0

    .line 50
    .local v8, "replacement":Lzipkin2/Span$Builder;
    invoke-virtual {v6}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 51
    invoke-virtual {v6}, Lzipkin2/Span;->toBuilder()Lzipkin2/Span$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Lzipkin2/Span$Builder;->traceId(Ljava/lang/String;)Lzipkin2/Span$Builder;

    move-result-object v8

    .line 54
    :cond_3
    const/4 v9, 0x0

    .line 55
    .local v9, "localEndpoint":Lzipkin2/internal/Trace$EndpointTracker;
    :goto_2
    add-int/lit8 v10, v3, 0x1

    if-ge v10, v0, :cond_7

    .line 56
    add-int/lit8 v10, v3, 0x1

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lzipkin2/Span;

    .line 57
    .local v10, "next":Lzipkin2/Span;
    invoke-virtual {v10}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, "nextId":Ljava/lang/String;
    invoke-virtual {v6}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .end local v10    # "next":Lzipkin2/Span;
    .end local v11    # "nextId":Ljava/lang/String;
    goto :goto_3

    .line 60
    .restart local v10    # "next":Lzipkin2/Span;
    .restart local v11    # "nextId":Ljava/lang/String;
    :cond_4
    if-nez v9, :cond_5

    .line 61
    new-instance v12, Lzipkin2/internal/Trace$EndpointTracker;

    invoke-direct {v12}, Lzipkin2/internal/Trace$EndpointTracker;-><init>()V

    move-object v9, v12

    .line 62
    invoke-virtual {v6}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v12

    invoke-virtual {v9, v12}, Lzipkin2/internal/Trace$EndpointTracker;->tryMerge(Lzipkin2/Endpoint;)Z

    .line 66
    :cond_5
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10}, Lzipkin2/Span;->shared()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 67
    .local v12, "nextShared":Z
    if-ne v7, v12, :cond_7

    invoke-virtual {v10}, Lzipkin2/Span;->localEndpoint()Lzipkin2/Endpoint;

    move-result-object v13

    invoke-virtual {v9, v13}, Lzipkin2/internal/Trace$EndpointTracker;->tryMerge(Lzipkin2/Endpoint;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 68
    if-nez v8, :cond_6

    invoke-virtual {v6}, Lzipkin2/Span;->toBuilder()Lzipkin2/Span$Builder;

    move-result-object v8

    .line 69
    :cond_6
    invoke-virtual {v8, v10}, Lzipkin2/Span$Builder;->merge(Lzipkin2/Span;)Lzipkin2/Span$Builder;

    .line 72
    add-int/lit8 v0, v0, -0x1

    .line 73
    add-int/lit8 v13, v3, 0x1

    invoke-interface {v2, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 74
    goto :goto_2

    .line 82
    .end local v10    # "next":Lzipkin2/Span;
    .end local v11    # "nextId":Ljava/lang/String;
    .end local v12    # "nextShared":Z
    :cond_7
    :goto_3
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lzipkin2/Span;->id()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 84
    invoke-virtual {v4}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v10

    sget-object v11, Lzipkin2/Span$Kind;->CLIENT:Lzipkin2/Span$Kind;

    if-ne v10, v11, :cond_9

    invoke-virtual {v6}, Lzipkin2/Span;->kind()Lzipkin2/Span$Kind;

    move-result-object v10

    sget-object v11, Lzipkin2/Span$Kind;->SERVER:Lzipkin2/Span$Kind;

    if-ne v10, v11, :cond_9

    if-nez v7, :cond_9

    .line 85
    const/4 v7, 0x1

    .line 86
    if-nez v8, :cond_8

    invoke-virtual {v6}, Lzipkin2/Span;->toBuilder()Lzipkin2/Span$Builder;

    move-result-object v8

    .line 87
    :cond_8
    invoke-virtual {v8, v1}, Lzipkin2/Span$Builder;->shared(Z)Lzipkin2/Span$Builder;

    .line 90
    :cond_9
    if-eqz v7, :cond_b

    invoke-virtual {v6}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_b

    invoke-virtual {v4}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 92
    if-nez v8, :cond_a

    invoke-virtual {v6}, Lzipkin2/Span;->toBuilder()Lzipkin2/Span$Builder;

    move-result-object v8

    .line 93
    :cond_a
    invoke-virtual {v4}, Lzipkin2/Span;->parentId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lzipkin2/Span$Builder;->parentId(Ljava/lang/String;)Lzipkin2/Span$Builder;

    .line 97
    :cond_b
    if-eqz v8, :cond_c

    .line 98
    invoke-virtual {v8}, Lzipkin2/Span$Builder;->build()Lzipkin2/Span;

    move-result-object v6

    .line 99
    invoke-interface {v2, v3, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_c
    move-object v4, v6

    .line 43
    .end local v6    # "span":Lzipkin2/Span;
    .end local v7    # "spanShared":Z
    .end local v8    # "replacement":Lzipkin2/Span$Builder;
    .end local v9    # "localEndpoint":Lzipkin2/internal/Trace$EndpointTracker;
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 104
    .end local v3    # "i":I
    :cond_d
    return-object v2
.end method

.method static nullSafeCompareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;Z)I
    .locals 2
    .param p2, "nullFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(TT;TT;Z)I"
        }
    .end annotation

    .line 155
    .local p0, "left":Ljava/lang/Comparable;, "TT;"
    .local p1, "right":Ljava/lang/Comparable;, "TT;"
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p0, :cond_2

    .line 156
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    move v0, v1

    nop

    :cond_1
    :goto_0
    return v0

    .line 157
    :cond_2
    if-nez p1, :cond_4

    .line 158
    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    .line 160
    :cond_4
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
