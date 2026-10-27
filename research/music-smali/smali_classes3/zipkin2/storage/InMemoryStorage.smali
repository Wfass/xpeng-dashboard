.class public final Lzipkin2/storage/InMemoryStorage;
.super Lzipkin2/storage/StorageComponent;
.source "InMemoryStorage.java"

# interfaces
.implements Lzipkin2/storage/AutocompleteTags;
.implements Lzipkin2/storage/SpanConsumer;
.implements Lzipkin2/storage/SpanStore;


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
.field static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Z

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

.field final b:Z

.field final c:I

.field final d:Lzipkin2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzipkin2/Call<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field volatile f:I

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

    sput-object v0, Lzipkin2/storage/InMemoryStorage;->g:Ljava/util/Comparator;

    .line 402
    new-instance v0, Lzipkin2/storage/InMemoryStorage$6;

    invoke-direct {v0}, Lzipkin2/storage/InMemoryStorage$6;-><init>()V

    sput-object v0, Lzipkin2/storage/InMemoryStorage;->h:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lzipkin2/storage/InMemoryStorage$Builder;)V
    .locals 2

    .line 156
    invoke-direct {p0}, Lzipkin2/storage/StorageComponent;-><init>()V

    .line 115
    new-instance v0, Lzipkin2/storage/InMemoryStorage$1;

    sget-object v1, Lzipkin2/storage/InMemoryStorage;->h:Ljava/util/Comparator;

    invoke-direct {v0, p0, v1}, Lzipkin2/storage/InMemoryStorage$1;-><init>(Lzipkin2/storage/InMemoryStorage;Ljava/util/Comparator;)V

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    .line 124
    new-instance v0, Lzipkin2/storage/InMemoryStorage$2;

    sget-object v1, Lzipkin2/storage/InMemoryStorage;->g:Ljava/util/Comparator;

    invoke-direct {v0, p0, v1}, Lzipkin2/storage/InMemoryStorage$2;-><init>(Lzipkin2/storage/InMemoryStorage;Ljava/util/Comparator;)V

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage;->traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    .line 132
    new-instance v0, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    invoke-direct {v0}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;-><init>()V

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage;->serviceToTraceIds:Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    .line 134
    new-instance v0, Lzipkin2/storage/InMemoryStorage$3;

    sget-object v1, Lzipkin2/storage/InMemoryStorage;->g:Ljava/util/Comparator;

    invoke-direct {v0, p0, v1}, Lzipkin2/storage/InMemoryStorage$3;-><init>(Lzipkin2/storage/InMemoryStorage;Ljava/util/Comparator;)V

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage;->serviceToSpanNames:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    .line 142
    new-instance v0, Lzipkin2/storage/InMemoryStorage$4;

    sget-object v1, Lzipkin2/storage/InMemoryStorage;->g:Ljava/util/Comparator;

    invoke-direct {v0, p0, v1}, Lzipkin2/storage/InMemoryStorage$4;-><init>(Lzipkin2/storage/InMemoryStorage;Ljava/util/Comparator;)V

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage;->autocompleteTags:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    .line 157
    iget-boolean v0, p1, Lzipkin2/storage/InMemoryStorage$Builder;->a:Z

    iput-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->a:Z

    .line 158
    iget-boolean v0, p1, Lzipkin2/storage/InMemoryStorage$Builder;->b:Z

    iput-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->b:Z

    .line 159
    iget v0, p1, Lzipkin2/storage/InMemoryStorage$Builder;->c:I

    iput v0, p0, Lzipkin2/storage/InMemoryStorage;->c:I

    .line 160
    iget-object v0, p1, Lzipkin2/storage/InMemoryStorage$Builder;->d:Ljava/util/List;

    invoke-static {v0}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object v0

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage;->d:Lzipkin2/Call;

    .line 161
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object p1, p1, Lzipkin2/storage/InMemoryStorage$Builder;->d:Ljava/util/List;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lzipkin2/storage/InMemoryStorage;->e:Ljava/util/Set;

    return-void
.end method

.method static a(Ljava/util/List;)Ljava/util/Collection;
    .locals 4
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
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 269
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzipkin2/Span;

    .line 270
    invoke-virtual {v1}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v2

    .line 271
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 276
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 504
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private deleteOldestTrace()I
    .locals 5

    .line 223
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    iget-object v0, v0, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->b:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    iget-object v0, v0, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->a:Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v1, v0}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 225
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 226
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    .line 228
    iget-object v4, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v4, v3}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    .line 229
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 231
    :cond_0
    iget-boolean v1, p0, Lzipkin2/storage/InMemoryStorage;->b:Z

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->serviceToTraceIds:Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    invoke-virtual {v1, v0}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 233
    iget-object v3, p0, Lzipkin2/storage/InMemoryStorage;->serviceToSpanNames:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v3, v1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->a(Ljava/lang/Object;)Ljava/util/Collection;

    goto :goto_1

    :cond_1
    return v2
.end method

.method public static newBuilder()Lzipkin2/storage/InMemoryStorage$Builder;
    .locals 1

    .line 70
    new-instance v0, Lzipkin2/storage/InMemoryStorage$Builder;

    invoke-direct {v0}, Lzipkin2/storage/InMemoryStorage$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method a(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-lez p1, :cond_0

    .line 213
    invoke-direct {p0}, Lzipkin2/storage/InMemoryStorage;->deleteOldestTrace()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method a(Ljava/lang/String;)Ljava/util/List;
    .locals 3
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
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v1, p1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    .line 489
    iget-object v2, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v2, v1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method a(Lzipkin2/storage/QueryRequest;)Ljava/util/Set;
    .locals 8
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
    iget-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 302
    :cond_0
    invoke-virtual {p1}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {p1}, Lzipkin2/storage/QueryRequest;->serviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzipkin2/storage/InMemoryStorage;->b(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v0}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->c()Ljava/util/Set;

    move-result-object v0

    .line 306
    :goto_0
    invoke-virtual {p1}, Lzipkin2/storage/QueryRequest;->endTs()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 307
    invoke-virtual {p1}, Lzipkin2/storage/QueryRequest;->lookback()J

    move-result-wide v5

    mul-long/2addr v5, v3

    sub-long v3, v1, v5

    if-eqz v0, :cond_6

    .line 309
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 310
    :cond_2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 311
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    .line 312
    iget-wide v6, v5, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->b:J

    cmp-long v6, v6, v3

    if-gez v6, :cond_4

    iget-wide v6, v5, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->b:J

    cmp-long v6, v6, v1

    if-gtz v6, :cond_3

    .line 313
    :cond_4
    iget-object v5, v5, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;->a:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object p1

    .line 309
    :cond_6
    :goto_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized a(Lzipkin2/storage/QueryRequest;Z)Lzipkin2/Call;
    .locals 5
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
    invoke-virtual {p0, p1}, Lzipkin2/storage/InMemoryStorage;->a(Lzipkin2/storage/QueryRequest;)Ljava/util/Set;

    move-result-object v0

    .line 246
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lzipkin2/Call;->emptyList()Lzipkin2/Call;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 248
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 250
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Lzipkin2/storage/QueryRequest;->limit()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 251
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lzipkin2/storage/InMemoryStorage;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 252
    invoke-virtual {p1, v2}, Lzipkin2/storage/QueryRequest;->test(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 254
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 259
    :cond_3
    invoke-static {v2}, Lzipkin2/storage/InMemoryStorage;->a(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 260
    invoke-virtual {p1, v3}, Lzipkin2/storage/QueryRequest;->test(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 264
    :cond_5
    invoke-static {v1}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized accept(Ljava/util/List;)Lzipkin2/Call;
    .locals 5
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

    monitor-enter p0

    .line 179
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 180
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->d()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Lzipkin2/storage/InMemoryStorage;->c:I

    sub-int/2addr v1, v0

    .line 181
    invoke-virtual {p0, v1}, Lzipkin2/storage/InMemoryStorage;->a(I)I

    .line 182
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzipkin2/Span;

    .line 183
    invoke-virtual {v0}, Lzipkin2/Span;->timestampAsLong()J

    move-result-wide v1

    .line 184
    invoke-virtual {v0}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lzipkin2/storage/InMemoryStorage;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 185
    new-instance v4, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;

    invoke-direct {v4, v3, v1, v2}, Lzipkin2/storage/InMemoryStorage$TraceIdTimestamp;-><init>(Ljava/lang/String;J)V

    .line 186
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v1, v4, v0}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v1, v3, v4}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 188
    iget v1, p0, Lzipkin2/storage/InMemoryStorage;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lzipkin2/storage/InMemoryStorage;->f:I

    .line 190
    iget-boolean v1, p0, Lzipkin2/storage/InMemoryStorage;->b:Z

    if-nez v1, :cond_1

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v0}, Lzipkin2/Span;->name()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {v0}, Lzipkin2/Span;->localServiceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 193
    iget-object v2, p0, Lzipkin2/storage/InMemoryStorage;->serviceToTraceIds:Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    invoke-virtual {v0}, Lzipkin2/Span;->localServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    .line 194
    iget-object v2, p0, Lzipkin2/storage/InMemoryStorage;->serviceToSpanNames:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v0}, Lzipkin2/Span;->localServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    :cond_2
    invoke-virtual {v0}, Lzipkin2/Span;->remoteServiceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 197
    iget-object v2, p0, Lzipkin2/storage/InMemoryStorage;->serviceToTraceIds:Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    invoke-virtual {v0}, Lzipkin2/Span;->remoteServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    .line 198
    iget-object v2, p0, Lzipkin2/storage/InMemoryStorage;->serviceToSpanNames:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v0}, Lzipkin2/Span;->remoteServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 200
    :cond_3
    invoke-virtual {v0}, Lzipkin2/Span;->tags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 201
    iget-object v2, p0, Lzipkin2/storage/InMemoryStorage;->e:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 202
    iget-object v2, p0, Lzipkin2/storage/InMemoryStorage;->autocompleteTags:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 206
    invoke-static {p1}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public acceptedSpanCount()I
    .locals 1

    .line 165
    iget v0, p0, Lzipkin2/storage/InMemoryStorage;->f:I

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

    return-object p0
.end method

.method b(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
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
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->serviceToTraceIds:Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    invoke-virtual {v1, p1}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 497
    iget-object v2, p0, Lzipkin2/storage/InMemoryStorage;->traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v2, v1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 499
    :cond_0
    sget-object p1, Lzipkin2/storage/InMemoryStorage;->h:Ljava/util/Comparator;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 169
    :try_start_0
    iput v0, p0, Lzipkin2/storage/InMemoryStorage;->f:I

    .line 170
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v0}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->e()V

    .line 171
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->spansByTraceIdTimeStamp:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v0}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->e()V

    .line 172
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->serviceToTraceIds:Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;

    invoke-virtual {v0}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->e()V

    .line 173
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->serviceToSpanNames:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v0}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->e()V

    .line 174
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->autocompleteTags:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v0}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0

    return-void
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

    throw v0
.end method

.method public declared-synchronized getDependencies(JJ)Lzipkin2/Call;
    .locals 1
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

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lzipkin2/storage/QueryRequest$Builder;->lookback(J)Lzipkin2/storage/QueryRequest$Builder;

    move-result-object p1

    const p2, 0x7fffffff

    invoke-virtual {p1, p2}, Lzipkin2/storage/QueryRequest$Builder;->limit(I)Lzipkin2/storage/QueryRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lzipkin2/storage/QueryRequest$Builder;->build()Lzipkin2/storage/QueryRequest;

    move-result-object p1

    const/4 p2, 0x0

    .line 356
    invoke-virtual {p0, p1, p2}, Lzipkin2/storage/InMemoryStorage;->a(Lzipkin2/storage/QueryRequest;Z)Lzipkin2/Call;

    move-result-object p1

    .line 357
    sget-object p2, Lzipkin2/storage/InMemoryStorage$LinkDependencies;->INSTANCE:Lzipkin2/storage/InMemoryStorage$LinkDependencies;

    invoke-virtual {p1, p2}, Lzipkin2/Call;->map(Lzipkin2/Call$Mapper;)Lzipkin2/Call;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

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
    iget-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lzipkin2/Call;->emptyList()Lzipkin2/Call;

    move-result-object v0

    return-object v0

    .line 362
    :cond_0
    iget-object v0, p0, Lzipkin2/storage/InMemoryStorage;->d:Lzipkin2/Call;

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
    iget-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->b:Z

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

    invoke-virtual {v1}, Lzipkin2/storage/InMemoryStorage$ServiceNameToTraceIds;->c()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSpanNames(Ljava/lang/String;)Lzipkin2/Call;
    .locals 2
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

    iget-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->serviceToSpanNames:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v1, p1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 344
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {}, Lzipkin2/Call;->emptyList()Lzipkin2/Call;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTrace(Ljava/lang/String;)Lzipkin2/Call;
    .locals 3
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

    move-result-object p1

    .line 322
    invoke-static {p1}, Lzipkin2/storage/InMemoryStorage;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lzipkin2/storage/InMemoryStorage;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 323
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 324
    :cond_0
    iget-boolean v1, p0, Lzipkin2/storage/InMemoryStorage;->a:Z

    if-nez v1, :cond_1

    invoke-static {v0}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 326
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 327
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 328
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzipkin2/Span;

    invoke-virtual {v2}, Lzipkin2/Span;->traceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 330
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 333
    :cond_3
    invoke-static {v1}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 323
    :cond_4
    :goto_1
    :try_start_2
    invoke-static {}, Lzipkin2/Call;->emptyList()Lzipkin2/Call;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getTraces()Ljava/util/List;
    .locals 4
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
    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->traceIdToTraceIdTimeStamps:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->c()Ljava/util/Set;

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
    invoke-virtual {p0, v2}, Lzipkin2/storage/InMemoryStorage;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 284
    iget-boolean v3, p0, Lzipkin2/storage/InMemoryStorage;->a:Z

    if-eqz v3, :cond_0

    .line 285
    invoke-static {v2}, Lzipkin2/storage/InMemoryStorage;->a(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 287
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 290
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTraces(Lzipkin2/storage/QueryRequest;)Lzipkin2/Call;
    .locals 1
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
    iget-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->a:Z

    invoke-virtual {p0, p1, v0}, Lzipkin2/storage/InMemoryStorage;->a(Lzipkin2/storage/QueryRequest;Z)Lzipkin2/Call;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getValues(Ljava/lang/String;)Lzipkin2/Call;
    .locals 2
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

    if-eqz p1, :cond_2

    .line 367
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    iget-boolean v0, p0, Lzipkin2/storage/InMemoryStorage;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lzipkin2/Call;->emptyList()Lzipkin2/Call;

    move-result-object p1

    return-object p1

    .line 369
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lzipkin2/storage/InMemoryStorage;->autocompleteTags:Lzipkin2/storage/InMemoryStorage$SortedMultimap;

    invoke-virtual {v1, p1}, Lzipkin2/storage/InMemoryStorage$SortedMultimap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lzipkin2/Call;->create(Ljava/lang/Object;)Lzipkin2/Call;

    move-result-object p1

    return-object p1

    .line 367
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key was empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 366
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public spanConsumer()Lzipkin2/storage/SpanConsumer;
    .locals 0

    return-object p0
.end method

.method public spanStore()Lzipkin2/storage/InMemoryStorage;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic spanStore()Lzipkin2/storage/SpanStore;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lzipkin2/storage/InMemoryStorage;->spanStore()Lzipkin2/storage/InMemoryStorage;

    move-result-object v0

    return-object v0
.end method
