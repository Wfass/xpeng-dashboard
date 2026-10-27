.class public Lcom/xiaopeng/lib/http/logging/LogCacher;
.super Ljava/lang/Object;
.source "LogCacher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;,
        Lcom/xiaopeng/lib/http/logging/LogCacher$LogHandler;,
        Lcom/xiaopeng/lib/http/logging/LogCacher$IHandler;,
        Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_COUNT:I = 0x5


# instance fields
.field private mCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheCount:I

.field private mHandler:Lcom/xiaopeng/lib/http/logging/LogCacher$IHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/http/logging/LogCacher;->mCache:Ljava/util/List;

    .line 22
    new-instance v0, Lcom/xiaopeng/lib/http/logging/LogCacher$LogHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/lib/http/logging/LogCacher$LogHandler;-><init>(Lcom/xiaopeng/lib/http/logging/LogCacher;Lcom/xiaopeng/lib/http/logging/LogCacher$1;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/http/logging/LogCacher;->mHandler:Lcom/xiaopeng/lib/http/logging/LogCacher$IHandler;

    .line 23
    const/4 v0, 0x5

    iput v0, p0, Lcom/xiaopeng/lib/http/logging/LogCacher;->mCacheCount:I

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/http/logging/LogCacher;Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/lib/http/logging/LogCacher;
    .param p1, "x1"    # Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/http/logging/LogCacher;->end(Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;)V

    return-void
.end method

.method private declared-synchronized end(Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;)V
    .locals 5
    .param p1, "cache"    # Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;

    monitor-enter p0

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/http/logging/LogCacher;->mCache:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/lib/http/logging/LogCacher;->mCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/lib/http/logging/LogCacher;->mCacheCount:I

    if-le v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/lib/http/logging/LogCacher;->mCache:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 50
    :cond_0
    iget v0, p1, Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;->code:I

    const/16 v1, 0x12b

    if-gt v0, v1, :cond_1

    iget v0, p1, Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;->code:I

    if-gez v0, :cond_3

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/lib/http/logging/LogCacher;->mCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 52
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;

    .line 54
    .local v1, "c":Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;
    iget-object v2, v1, Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;->msgs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 55
    .local v3, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/lib/http/logging/LogCacher;->mHandler:Lcom/xiaopeng/lib/http/logging/LogCacher$IHandler;

    invoke-interface {v4, v3}, Lcom/xiaopeng/lib/http/logging/LogCacher$IHandler;->handle(Ljava/lang/String;)V

    .line 56
    .end local v3    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 57
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v1    # "c":Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;
    goto :goto_0

    .line 60
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;>;"
    :cond_3
    monitor-exit p0

    return-void

    .line 37
    .end local p1    # "cache":Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/http/logging/LogCacher;
    throw p1
.end method


# virtual methods
.method public getLogger()Lcom/xiaopeng/lib/http/logging/LogCacher$ILog;
    .locals 1

    .line 26
    new-instance v0, Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/http/logging/LogCacher$Cache;-><init>(Lcom/xiaopeng/lib/http/logging/LogCacher;)V

    return-object v0
.end method

.method public setCacheCount(I)V
    .locals 0
    .param p1, "count"    # I

    .line 34
    iput p1, p0, Lcom/xiaopeng/lib/http/logging/LogCacher;->mCacheCount:I

    .line 35
    return-void
.end method

.method public setHandler(Lcom/xiaopeng/lib/http/logging/LogCacher$IHandler;)V
    .locals 0
    .param p1, "handler"    # Lcom/xiaopeng/lib/http/logging/LogCacher$IHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/lib/http/logging/LogCacher;->mHandler:Lcom/xiaopeng/lib/http/logging/LogCacher$IHandler;

    .line 31
    return-void
.end method
