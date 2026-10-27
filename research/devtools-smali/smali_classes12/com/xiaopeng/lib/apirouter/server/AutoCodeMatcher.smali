.class Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;
.super Ljava/lang/Object;
.source "AutoCodeMatcher.java"


# static fields
.field private static mapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sLock:Ljava/lang/Object;

.field private static sManifestHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->sManifestHandlerList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addManifestHandler(Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;)V
    .locals 2

    .line 33
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->sManifestHandlerList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    sget-object v1, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->sManifestHandlerList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    monitor-exit v0

    .line 38
    return-void

    .line 37
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initManifestHandler()V
    .locals 3

    .line 41
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 42
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->sManifestHandlerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    sget-object v1, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->sManifestHandlerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;

    .line 44
    invoke-direct {p0, v2}, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->initManifestHandler(Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;)V

    .line 45
    goto :goto_0

    .line 47
    :cond_0
    monitor-exit v0

    .line 48
    return-void

    .line 47
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initManifestHandler(Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;)V
    .locals 8

    .line 51
    if-nez p1, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    invoke-interface {p1}, Lcom/xiaopeng/lib/apirouter/server/IManifestHandler;->getManifestHelpers()[Lcom/xiaopeng/lib/apirouter/server/IManifestHelper;

    move-result-object p1

    .line 55
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_2

    .line 58
    :cond_1
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->mapping:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->mapping:Ljava/util/HashMap;

    .line 61
    :cond_2
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->mapping:Ljava/util/HashMap;

    .line 62
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 64
    :try_start_0
    invoke-interface {v3}, Lcom/xiaopeng/lib/apirouter/server/IManifestHelper;->getMapping()Ljava/util/HashMap;

    move-result-object v4

    .line 65
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 66
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_3
    goto :goto_1

    .line 68
    :catch_0
    move-exception v4

    .line 69
    const-string v5, "AutoCodeMatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initManifestHandler:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_4
    return-void

    .line 56
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public match(Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/os/IBinder;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->mapping:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/xiaopeng/lib/apirouter/server/ManifestHelperMapping;->reflectMapping()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->mapping:Ljava/util/HashMap;

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->initManifestHandler()V

    .line 28
    :cond_0
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->mapping:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 29
    move-object p1, v1

    goto :goto_0

    .line 28
    :cond_1
    sget-object v0, Lcom/xiaopeng/lib/apirouter/server/AutoCodeMatcher;->mapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 29
    :goto_0
    if-nez p1, :cond_2

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method
