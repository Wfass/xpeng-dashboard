.class public final Lzipkin2/storage/InMemoryStorage;
.super Lzipkin2/storage/StorageComponent;
.source "InMemoryStorage.java"

# interfaces
.implements Lzipkin2/storage/SpanStore;
.implements Lzipkin2/storage/SpanConsumer;
.implements Lzipkin2/storage/AutocompleteTags;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;,
        Lzipkin2/storage/InMemoryStorage$SortedMultimap;,
        Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;,
        Lzipkin2/storage/InMemoryStorage$LinkDependencies;,
        Lzipkin2/storage/InMemoryStorage$Builder;
    }
.end annotation


# static fields
.field static final STRING_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final TIMESTAMP_DESCENDING:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field volatile acceptedSpanCount:I

.field final autocompleteKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final autocompleteKeysCall:Lzipkin2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/Call<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final autocompleteTags:Lzipkin2/storage/InMemoryStorage$SortedMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/storage/InMemoryStorage$SortedMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final maxSpanCount:I

.field final searchEnabled:Z

.field private final serviceToSpanNames:Lzipkin2/storage/InMemoryStorage$SortedMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/storage/InMemoryStorage$SortedMultimap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final serviceToTraceIds:Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

.field private final spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/storage/InMemoryStorage$SortedMultimap<",
            "Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation
.end field

.field final strictTraceId:Z

.field private final traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/storage/InMemoryStorage$SortedMultimap<",
            "Ljava/lang/String;",
            "Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 388
    new-instance v0, Lzipkin2/storage/InMemoryStorage$5;

    invoke-direct {v0}, Lzipkin2/storage/InMemoryStorage$5;-><init>()V

    sput-object v0, Lzipkin2/storage/InMemoryStorage;->STRING_COMPARATOR:Ljava/util/Comparator;

    .line 402
    new-instance v0, Lzipkin2/storage/InMemoryStorage$6;

    invoke-direct {v0}, Lzipkin2/storage/InMemoryStorage$6;-><init>()V

    sput-object v0, Lzipkin2/storage/InMemoryStorage;->TIMESTAMP_DESCENDING:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lzipkin2/storage/InMemoryStorage$Builder;)V
    .locals 2
    .param p1, "builder"    # Lzipkin2/storage/InMemoryStorage$Builder;

    .line 156
    invoke-direct {p0}, Lzipkin2/storage/StorageComponent;-><init>()V

    .line 115
    new-instance v0, Lzipkin2/storage/InMemoryStorage$1;

    sget-object v1, Lzipkin2/storage/InMemoryStorage;->TIMESTAMP_DESCENDING:Ljava/util/Comparator;

    invoke-direct {v0, p0, v1}, Lzipkin2/storage/InMemoryStorage$1;-><init>(Lzipkin2/storage/InMemoryStorage;Ljava/util/Comparator;)V

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    .line 124
    new-instance v0, Lzipkin2/storage/InMemoryStorage$2;

    sget-object v1, Lzipkin2/storage/InMemoryStorage;->STRING_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, p0, v1}, Lzipkin2/storage/InMemoryStorage$2;-><init>(Lzipkin2/storage/InMemoryStorage;Ljava/util/Comparator;)V

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage;->traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    .line 132
    new-instance v0, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    invoke-direct {v0}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;-><init>()V

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage;->serviceToTraceIds:Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    .line 134
    new-instance v0, Lzipkin2/storage/InMemoryStorage$3;

    sget-object v1, Lzipkin2/storage/InMemoryStorage;->STRING_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, p0, v1}, Lzipkin2/storage/InMemoryStorage$3;-><init>(Lzipkin2/storage/InMemoryStorage;Ljava/util/Comparator;)V

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage;->serviceToSpanNames:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    .line 142
    new-instance v0, Lzipkin2/storage/InMemoryStorage$4;

    sget-object v1, Lzipkin2/storage/InMemoryStorage;->STRING_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, p0, v1}, Lzipkin2/storage/InMemoryStorage$4;-><init>(Lzipkin2/storage/InMemoryStorage;Ljava/util/Comparator;)V

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage;->autocompleteTags:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    .line 157
    iget-boolean v0, p1, Lzipkin2/storage/InMemoryStorage$Builder;->strictTraceId:Z

    iput-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->strictTraceId:Z

    .line 158
    iget-boolean v0, p1, Lzipkin2/storage/InMemoryStorage$Builder;->searchEnabled:Z

    iput-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->searchEnabled:Z

    .line 159
    iget v0, p1, Lzipkin2/storage/InMemoryStorage$Builder;->maxSpanCount:I

    iput v0, p0, Lzipkin2/storage/InMemoryStorage;->maxSpanCount:I

    .line 160
    iget-object v0, p1, Lzipkin2/storage/InMemoryStorage$Builder;->autocompleteKeys:Ljava/util/List;

    invoke-static {v0}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage;->autocompleteKeysCall:Lzipkin2/Call;

    .line 161
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p1, Lzipkin2/storage/InMemoryStorage$Builder;->autocompleteKeys:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage;->autocompleteKeys:Ljava/util/Set;

    .line 162
    return-void
.end method

.method private deleteOldestTrace()I
    .locals 7

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "spansEvicted":I
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    iget-object v1, v1, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->delegate:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    iget-object v1, v1, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->lowTraceId:Ljava/lang/String;

    .line 224
    .local v1, "lowTraceId":Ljava/lang/String;
    iget-object v2, p0, Lzipkin2/storage/InMemoryStorage;->traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v2, v1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    .line 225
    .local v2, "traceIdTimeStamps":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 226
    .local v3, "traceIdTimeStampIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    .line 228
    .local v4, "traceIdTimeStamp":Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;
    iget-object v5, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v5, v4}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    .line 229
    .local v5, "spans":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/Span;>;"
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/2addr v0, v6

    .line 230
    .end local v4    # "traceIdTimeStamp":Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;
    .end local v5    # "spans":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/Span;>;"
    goto :goto_0

    .line 231
    .end local v3    # "traceIdTimeStampIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;>;"
    :cond_0
    iget-boolean v3, p0, Lzipkin2/storage/InMemoryStorage;->searchEnabled:Z

    if-eqz v3, :cond_1

    .line 232
    iget-object v3, p0, Lzipkin2/storage/InMemoryStorage;->serviceToTraceIds:Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    invoke-virtual {v3, v1}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->removeServiceIfTraceId(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 233
    .local v4, "orphanedService":Ljava/lang/String;
    iget-object v5, p0, Lzipkin2/storage/InMemoryStorage;->serviceToSpanNames:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v5, v4}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->remove(Ljava/lang/Object;)Ljava/util/Collection;

    .line 234
    .end local v4    # "orphanedService":Ljava/lang/String;
    goto :goto_1

    .line 236
    :cond_1
    return v0
.end method

.method static lowTraceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "traceId"    # Ljava/lang/String;

    .line 504
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static newBuilder()Lzipkin2/storage/InMemoryStorage$Builder;
    .locals 1

    .line 70
    new-instance v0, Lzipkin2/storage/InMemoryStorage$Builder;

    invoke-direct {v0}, Lzipkin2/storage/InMemoryStorage$Builder;-><init>()V

    return-object v0
.end method

.method static strictByTraceId(Ljava/util/List;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;>;"
        }
    .end annotation

    .line 268
    .local p0, "next":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 269
    .local v0, "groupedByTraceId":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lzipkin2/Span;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/Span;

    .line 270
    .local v2, "span":Lzipkin2/Span;
    invoke-virtual {v2}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "traceId":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 272
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v2    # "span":Lzipkin2/Span;
    .end local v3    # "traceId":Ljava/lang/String;
    goto :goto_0

    .line 276
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized accept(Ljava/util/List;)Lzipkin2/Call;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;)",
            "Lzipkin2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .local p1, "spans":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    monitor-enter p0

    .line 179
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 180
    .local v0, "delta":I
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget v2, p0, Lzipkin2/storage/InMemoryStorage;->maxSpanCount:I

    sub-int/2addr v1, v2

    .line 181
    .local v1, "spansToRecover":I
    invoke-virtual {p0, v1}, Lzipkin2/storage/InMemoryStorage;->evictToRecoverSpans(I)I

    .line 182
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/Span;

    .line 183
    .local v3, "span":Lzipkin2/Span;
    invoke-virtual {v3}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v4

    .line 184
    .local v4, "timestamp":J
    invoke-virtual {v3}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lzipkin2/storage/InMemoryStorage;->lowTraceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "lowTraceId":Ljava/lang/String;
    new-instance v7, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    invoke-direct {v7, v6, v4, v5}, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;-><init>(Ljava/lang/String;J)V

    .line 186
    .local v7, "traceIdTimeStamp":Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;
    iget-object v8, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v8, v7, v3}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    iget-object v8, p0, Lzipkin2/storage/InMemoryStorage;->traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v8, v6, v7}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    iget v8, p0, Lzipkin2/storage/InMemoryStorage;->acceptedSpanCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lzipkin2/storage/InMemoryStorage;->acceptedSpanCount:I

    .line 190
    iget-boolean v8, p0, Lzipkin2/storage/InMemoryStorage;->searchEnabled:Z

    if-nez v8, :cond_0

    .end local v3    # "span":Lzipkin2/Span;
    .end local v4    # "timestamp":J
    .end local v6    # "lowTraceId":Ljava/lang/String;
    .end local v7    # "traceIdTimeStamp":Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;
    goto :goto_0

    .line 191
    .restart local v3    # "span":Lzipkin2/Span;
    .restart local v4    # "timestamp":J
    .restart local v6    # "lowTraceId":Ljava/lang/String;
    .restart local v7    # "traceIdTimeStamp":Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;
    :cond_0
    invoke-virtual {v3}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v8

    .line 192
    .local v8, "spanName":Ljava/lang/String;
    invoke-virtual {v3}, Lzipkin2/Span;->localServiceName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 193
    iget-object v9, p0, Lzipkin2/storage/InMemoryStorage;->serviceToTraceIds:Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    invoke-virtual {v3}, Lzipkin2/Span;->localServiceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    if-eqz v8, :cond_1

    iget-object v9, p0, Lzipkin2/storage/InMemoryStorage;->serviceToSpanNames:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v3}, Lzipkin2/Span;->localServiceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    :cond_1
    invoke-virtual {v3}, Lzipkin2/Span;->remoteServiceName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 197
    iget-object v9, p0, Lzipkin2/storage/InMemoryStorage;->serviceToTraceIds:Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    invoke-virtual {v3}, Lzipkin2/Span;->remoteServiceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 198
    if-eqz v8, :cond_2

    iget-object v9, p0, Lzipkin2/storage/InMemoryStorage;->serviceToSpanNames:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v3}, Lzipkin2/Span;->remoteServiceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    :cond_2
    invoke-virtual {v3}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 201
    .local v10, "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v11, p0, Lzipkin2/storage/InMemoryStorage;->autocompleteKeys:Ljava/util/Set;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 202
    iget-object v11, p0, Lzipkin2/storage/InMemoryStorage;->autocompleteTags:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 204
    .end local v10    # "tag":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    goto :goto_1

    .line 205
    .end local v3    # "span":Lzipkin2/Span;
    .end local v4    # "timestamp":J
    .end local v6    # "lowTraceId":Ljava/lang/String;
    .end local v7    # "traceIdTimeStamp":Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;
    .end local v8    # "spanName":Ljava/lang/String;
    :cond_4
    goto/16 :goto_0

    .line 206
    :cond_5
    const/4 v2, 0x0

    invoke-static {v2}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 178
    .end local v0    # "delta":I
    .end local v1    # "spansToRecover":I
    .end local p1    # "spans":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lzipkin2/storage/InMemoryStorage;
    throw p1
.end method

.method public acceptedSpanCount()I
    .locals 1

    .line 165
    iget v0, p0, Lzipkin2/storage/InMemoryStorage;->acceptedSpanCount:I

    return v0
.end method

.method public bridge synthetic autocompleteTags()Lzipkin2/storage/AutocompleteTags;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lzipkin2/storage/InMemoryStorage;->autocompleteTags()Lzipkin2/storage/InMemoryStorage;

    move-result-object v0

    return-object v0
.end method

.method public autocompleteTags()Lzipkin2/storage/InMemoryStorage;
    .locals 0

    .line 513
    return-object p0
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 169
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lzipkin2/storage/InMemoryStorage;->acceptedSpanCount:I

    .line 170
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v0}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->clear()V

    .line 171
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v0}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->clear()V

    .line 172
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->serviceToTraceIds:Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    invoke-virtual {v0}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->clear()V

    .line 173
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->serviceToSpanNames:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v0}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->clear()V

    .line 174
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->autocompleteTags:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v0}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lzipkin2/storage/InMemoryStorage;
    throw v0
.end method

.method public close()V
    .locals 0

    .line 523
    return-void
.end method

.method evictToRecoverSpans(I)I
    .locals 2
    .param p1, "spansToRecover"    # I

    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, "spansEvicted":I
    :goto_0
    if-lez p1, :cond_0

    .line 213
    invoke-direct {p0}, Lzipkin2/storage/InMemoryStorage;->deleteOldestTrace()I

    move-result v1

    .line 214
    .local v1, "spansInOldestTrace":I
    sub-int/2addr p1, v1

    .line 215
    add-int/2addr v0, v1

    .line 216
    .end local v1    # "spansInOldestTrace":I
    goto :goto_0

    .line 217
    :cond_0
    return v0
.end method

.method public declared-synchronized getDependencies()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lzipkin2/DependencyLink;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 295
    :try_start_0
    sget-object v0, Lzipkin2/storage/InMemoryStorage$LinkDependencies;->INSTANCE:Lzipkin2/storage/InMemoryStorage$LinkDependencies;

    invoke-virtual {p0}, Lzipkin2/storage/InMemoryStorage;->getTraces()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzipkin2/storage/InMemoryStorage$LinkDependencies;->map(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lzipkin2/storage/InMemoryStorage;
    throw v0
.end method

.method public declared-synchronized getDependencies(JJ)Lzipkin2/Call;
    .locals 3
    .param p1, "endTs"    # J
    .param p3, "lookback"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lzipkin2/Call<",
            "Ljava/util/List<",
            "Lzipkin2/DependencyLink;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 352
    :try_start_0
    invoke-static {}, Lzipkin2/storage/QueryRequest;->newBuilder()Lzipkin2/storage/QueryRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lzipkin2/storage/QueryRequest$Builder;->endTs(J)Lzipkin2/storage/QueryRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lzipkin2/storage/QueryRequest$Builder;->lookback(J)Lzipkin2/storage/QueryRequest$Builder;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lzipkin2/storage/QueryRequest$Builder;->limit(I)Lzipkin2/storage/QueryRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lzipkin2/storage/QueryRequest$Builder;->build()Lzipkin2/storage/QueryRequest;

    move-result-object v0

    .line 356
    .local v0, "request":Lzipkin2/storage/QueryRequest;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lzipkin2/storage/InMemoryStorage;->getTraces(Lzipkin2/storage/QueryRequest;Z)Lzipkin2/Call;

    move-result-object v1

    .line 357
    .local v1, "getTracesCall":Lzipkin2/Call;, "Lzipkin2/Call<Ljava/util/List<Ljava/util/List<Lzipkin2/Span;>;>;>;"
    sget-object v2, Lzipkin2/storage/InMemoryStorage$LinkDependencies;->INSTANCE:Lzipkin2/storage/InMemoryStorage$LinkDependencies;

    invoke-virtual {v1, v2}, Lzipkin2/Call;->map(Lzipkin2/Call$Mapper;)Lzipkin2/Call;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 351
    .end local v0    # "request":Lzipkin2/storage/QueryRequest;
    .end local v1    # "getTracesCall":Lzipkin2/Call;, "Lzipkin2/Call<Ljava/util/List<Ljava/util/List<Lzipkin2/Span;>;>;>;"
    .end local p1    # "endTs":J
    .end local p3    # "lookback":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lzipkin2/storage/InMemoryStorage;
    throw p1
.end method

.method public getKeys()Lzipkin2/Call;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzipkin2/Call<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 361
    iget-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->searchEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lzipkin2/Call;->emptyList()Lzipkin2/Call;

    move-result-object v0

    return-object v0

    .line 362
    :cond_0
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->autocompleteKeysCall:Lzipkin2/Call;

    invoke-virtual {v0}, Lzipkin2/Call;->clone()Lzipkin2/Call;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getServiceNames()Lzipkin2/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lzipkin2/Call<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 338
    :try_start_0
    iget-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->searchEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lzipkin2/Call;->emptyList()Lzipkin2/Call;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 339
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->serviceToTraceIds:Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    invoke-virtual {v1}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lzipkin2/storage/InMemoryStorage;
    throw v0
.end method

.method public declared-synchronized getSpanNames(Ljava/lang/String;)Lzipkin2/Call;
    .locals 2
    .param p1, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lzipkin2/Call<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 344
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->searchEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->serviceToSpanNames:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v1, p1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 344
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lzipkin2/Call;->emptyList()Lzipkin2/Call;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 343
    .end local p1    # "service":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lzipkin2/storage/InMemoryStorage;
    throw p1
.end method

.method public declared-synchronized getTrace(Ljava/lang/String;)Lzipkin2/Call;
    .locals 4
    .param p1, "traceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lzipkin2/Call<",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 321
    :try_start_0
    invoke-static {p1}, Lzipkin2/Span;->normalizeTraceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 322
    invoke-static {p1}, Lzipkin2/storage/InMemoryStorage;->lowTraceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzipkin2/storage/InMemoryStorage;->spansByTraceId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 323
    .local v0, "spans":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    iget-boolean v1, p0, Lzipkin2/storage/InMemoryStorage;->strictTraceId:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 326
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 327
    .local v1, "filtered":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 328
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lzipkin2/Span;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 329
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/Span;

    invoke-virtual {v3}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 330
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 333
    :cond_3
    invoke-static {v1}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 323
    .end local v1    # "filtered":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lzipkin2/Span;>;"
    :cond_4
    :goto_1
    :try_start_2
    invoke-static {}, Lzipkin2/Call;->emptyList()Lzipkin2/Call;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 320
    .end local v0    # "spans":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    .end local p1    # "traceId":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lzipkin2/storage/InMemoryStorage;
    throw p1
.end method

.method public declared-synchronized getTraces()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 281
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lzipkin2/Span;>;>;"
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 283
    .local v2, "lowTraceId":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lzipkin2/storage/InMemoryStorage;->spansByTraceId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 284
    .local v3, "sameTraceId":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    iget-boolean v4, p0, Lzipkin2/storage/InMemoryStorage;->strictTraceId:Z

    if-eqz v4, :cond_0

    .line 285
    invoke-static {v3}, Lzipkin2/storage/InMemoryStorage;->strictByTraceId(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 287
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .end local v2    # "lowTraceId":Ljava/lang/String;
    .end local v3    # "sameTraceId":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    :goto_1
    goto :goto_0

    .line 290
    :cond_1
    monitor-exit p0

    return-object v0

    .line 280
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lzipkin2/Span;>;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lzipkin2/storage/InMemoryStorage;
    throw v0
.end method

.method public declared-synchronized getTraces(Lzipkin2/storage/QueryRequest;)Lzipkin2/Call;
    .locals 1
    .param p1, "request"    # Lzipkin2/storage/QueryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/storage/QueryRequest;",
            ")",
            "Lzipkin2/Call<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 241
    :try_start_0
    iget-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->strictTraceId:Z

    invoke-virtual {p0, p1, v0}, Lzipkin2/storage/InMemoryStorage;->getTraces(Lzipkin2/storage/QueryRequest;Z)Lzipkin2/Call;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # "request":Lzipkin2/storage/QueryRequest;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lzipkin2/storage/InMemoryStorage;
    throw p1
.end method

.method declared-synchronized getTraces(Lzipkin2/storage/QueryRequest;Z)Lzipkin2/Call;
    .locals 7
    .param p1, "request"    # Lzipkin2/storage/QueryRequest;
    .param p2, "strictTraceId"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/storage/QueryRequest;",
            "Z)",
            "Lzipkin2/Call<",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 245
    :try_start_0
    invoke-virtual {p0, p1}, Lzipkin2/storage/InMemoryStorage;->traceIdsDescendingByTimestamp(Lzipkin2/storage/QueryRequest;)Ljava/util/Set;

    move-result-object v0

    .line 246
    .local v0, "traceIdsInTimerange":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lzipkin2/Call;->emptyList()Lzipkin2/Call;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 248
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lzipkin2/Span;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 250
    .local v2, "lowTraceId":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1}, Lzipkin2/storage/QueryRequest;->limit()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 251
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lzipkin2/storage/InMemoryStorage;->spansByTraceId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 252
    .local v3, "next":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    invoke-virtual {p1, v3}, Lzipkin2/storage/QueryRequest;->test(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v3    # "next":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    goto :goto_0

    .line 253
    .restart local v3    # "next":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    :cond_1
    if-nez p2, :cond_2

    .line 254
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    goto :goto_0

    .line 259
    :cond_2
    invoke-static {v3}, Lzipkin2/storage/InMemoryStorage;->strictByTraceId(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 260
    .local v5, "strictTrace":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    invoke-virtual {p1, v5}, Lzipkin2/storage/QueryRequest;->test(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v5    # "strictTrace":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    :cond_3
    goto :goto_1

    .line 262
    .end local v3    # "next":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    :cond_4
    goto :goto_0

    .line 264
    .end local v2    # "lowTraceId":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_5
    invoke-static {v1}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v2

    .line 244
    .end local v0    # "traceIdsInTimerange":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lzipkin2/Span;>;>;"
    .end local p1    # "request":Lzipkin2/storage/QueryRequest;
    .end local p2    # "strictTraceId":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lzipkin2/storage/InMemoryStorage;
    throw p1
.end method

.method public getValues(Ljava/lang/String;)Lzipkin2/Call;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lzipkin2/Call<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 366
    if-eqz p1, :cond_2

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    iget-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->searchEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lzipkin2/Call;->emptyList()Lzipkin2/Call;

    move-result-object v0

    return-object v0

    .line 369
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->autocompleteTags:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v1, p1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object v0

    return-object v0

    .line 367
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key was empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public spanConsumer()Lzipkin2/storage/SpanConsumer;
    .locals 0

    .line 518
    return-object p0
.end method

.method public spanStore()Lzipkin2/storage/InMemoryStorage;
    .locals 0

    .line 509
    return-object p0
.end method

.method public bridge synthetic spanStore()Lzipkin2/storage/SpanStore;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lzipkin2/storage/InMemoryStorage;->spanStore()Lzipkin2/storage/InMemoryStorage;

    move-result-object v0

    return-object v0
.end method

.method spansByTraceId(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "lowTraceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lzipkin2/Span;",
            ">;"
        }
    .end annotation

    .line 487
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v0, "sameTraceId":Ljava/util/List;, "Ljava/util/List<Lzipkin2/Span;>;"
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v1, p1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    .line 489
    .local v2, "traceIdTimestamp":Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;
    iget-object v3, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v3, v2}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 490
    .end local v2    # "traceIdTimestamp":Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;
    goto :goto_0

    .line 491
    :cond_0
    return-object v0
.end method

.method traceIdTimestampsByServiceName(Ljava/lang/String;)Ljava/util/Collection;
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;",
            ">;"
        }
    .end annotation

    .line 495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v0, "traceIdTimestamps":Ljava/util/List;, "Ljava/util/List<Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;>;"
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->serviceToTraceIds:Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    invoke-virtual {v1, p1}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 497
    .local v2, "lowTraceId":Ljava/lang/String;
    iget-object v3, p0, Lzipkin2/storage/InMemoryStorage;->traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v3, v2}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 498
    .end local v2    # "lowTraceId":Ljava/lang/String;
    goto :goto_0

    .line 499
    :cond_0
    sget-object v1, Lzipkin2/storage/InMemoryStorage;->TIMESTAMP_DESCENDING:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 500
    return-object v0
.end method

.method traceIdsDescendingByTimestamp(Lzipkin2/storage/QueryRequest;)Ljava/util/Set;
    .locals 10
    .param p1, "request"    # Lzipkin2/storage/QueryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzipkin2/storage/QueryRequest;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 299
    iget-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->searchEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 302
    :cond_0
    invoke-virtual {p1}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p1}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzipkin2/storage/InMemoryStorage;->traceIdTimestampsByServiceName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v0}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 306
    .local v0, "traceIdTimestamps":Ljava/util/Collection;, "Ljava/util/Collection<Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;>;"
    :goto_0
    invoke-virtual {p1}, Lzipkin2/storage/QueryRequest;->endTs()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 307
    .local v1, "endTs":J
    invoke-virtual {p1}, Lzipkin2/storage/QueryRequest;->lookback()J

    move-result-wide v5

    mul-long/2addr v5, v3

    sub-long v3, v1, v5

    .line 309
    .local v3, "startTs":J
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 310
    :cond_2
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 311
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    .line 312
    .local v7, "traceIdTimestamp":Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;
    iget-wide v8, v7, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->timestamp:J

    cmp-long v8, v8, v3

    if-gez v8, :cond_3

    iget-wide v8, v7, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->timestamp:J

    cmp-long v8, v8, v1

    if-gtz v8, :cond_4

    .line 313
    :cond_3
    iget-object v8, v7, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->lowTraceId:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v7    # "traceIdTimestamp":Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;
    :cond_4
    goto :goto_1

    .line 316
    :cond_5
    return-object v5

    .line 309
    .end local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    return-object v5
.end method
