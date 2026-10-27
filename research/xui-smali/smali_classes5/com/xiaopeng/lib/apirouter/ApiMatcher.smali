.class Lcom/xiaopeng/lib/apirouter/ApiMatcher;
.super Ljava/lang/Object;
.source "ApiMatcher.java"


# static fields
.field private static final PROCESS_TAG_DIVIDER:Ljava/lang/String; = "@"


# instance fields
.field private mRemoteOperators:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/apirouter/RemoteOperator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->mRemoteOperators:Ljava/util/concurrent/ConcurrentHashMap;

    .line 21
    return-void
.end method

.method private getRemoteOperator(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    .locals 8
    .param p1, "uriStruct"    # Lcom/xiaopeng/lib/apirouter/UriStruct;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->mRemoteOperators:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 70
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/lib/apirouter/RemoteOperator;>;>;"
    iget-object v1, p1, Lcom/xiaopeng/lib/apirouter/UriStruct;->processTag:Ljava/lang/String;

    .line 72
    .local v1, "processTag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/xiaopeng/lib/apirouter/UriStruct;->applicationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "starts":Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v2    # "starts":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/xiaopeng/lib/apirouter/UriStruct;->applicationId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .restart local v2    # "starts":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/xiaopeng/lib/apirouter/UriStruct;->serviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "ends":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 79
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/lib/apirouter/RemoteOperator;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 80
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 81
    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 82
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    return-object v4

    .line 84
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/lib/apirouter/RemoteOperator;>;"
    .end local v6    # "key":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 85
    :cond_2
    const/4 v4, 0x0

    return-object v4
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/apirouter/RemoteOperator;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    .locals 2
    .param p1, "processTag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "operator"    # Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->mRemoteOperators:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    return-object v0
.end method

.method private remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "processTag"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->mRemoteOperators:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method


# virtual methods
.method public declared-synchronized matchRemoteOperator(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    .locals 1
    .param p1, "uriStruct"    # Lcom/xiaopeng/lib/apirouter/UriStruct;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 51
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->getRemoteOperator(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p1    # "uriStruct":Lcom/xiaopeng/lib/apirouter/UriStruct;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/apirouter/ApiMatcher;
    throw p1
.end method

.method public declared-synchronized publishUri(Lcom/xiaopeng/lib/apirouter/UriStruct;Lcom/xiaopeng/lib/apirouter/RemoteOperator;)V
    .locals 4
    .param p1, "uriStruct"    # Lcom/xiaopeng/lib/apirouter/UriStruct;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "remoteOperator"    # Lcom/xiaopeng/lib/apirouter/RemoteOperator;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p1, Lcom/xiaopeng/lib/apirouter/UriStruct;->processTag:Ljava/lang/String;

    .line 25
    .local v0, "processTag":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->put(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/apirouter/RemoteOperator;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object v1

    .line 26
    .local v1, "previous":Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    if-eqz v1, :cond_0

    .line 27
    const-string v2, "getAuthority"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->unLinkToDeath(Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 30
    invoke-virtual {p2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p2}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->put(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/apirouter/RemoteOperator;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object v2

    move-object v1, v2

    .line 31
    if-eqz v1, :cond_1

    .line 32
    const-string v2, "getDescription"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->unLinkToDeath(Ljava/lang/String;)V

    .line 35
    :cond_1
    invoke-virtual {p2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->linkToDeath()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 23
    .end local v0    # "processTag":Ljava/lang/String;
    .end local v1    # "previous":Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    .end local p1    # "uriStruct":Lcom/xiaopeng/lib/apirouter/UriStruct;
    .end local p2    # "remoteOperator":Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/apirouter/ApiMatcher;
    throw p1
.end method

.method public declared-synchronized unpublishUri(Lcom/xiaopeng/lib/apirouter/UriStruct;)V
    .locals 4
    .param p1, "uriStruct"    # Lcom/xiaopeng/lib/apirouter/UriStruct;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    .line 39
    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->getRemoteOperator(Lcom/xiaopeng/lib/apirouter/UriStruct;)Lcom/xiaopeng/lib/apirouter/RemoteOperator;

    move-result-object v0

    .line 40
    .local v0, "remoteOperator":Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    if-eqz v0, :cond_1

    .line 41
    iget-object v1, p1, Lcom/xiaopeng/lib/apirouter/UriStruct;->processTag:Ljava/lang/String;

    .line 42
    .local v1, "processTag":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/xiaopeng/lib/apirouter/ApiMatcher;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    const-string v2, "unpublishUri"

    invoke-virtual {v0, v2}, Lcom/xiaopeng/lib/apirouter/RemoteOperator;->unLinkToDeath(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v1    # "processTag":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .line 38
    .end local v0    # "remoteOperator":Lcom/xiaopeng/lib/apirouter/RemoteOperator;
    .end local p1    # "uriStruct":Lcom/xiaopeng/lib/apirouter/UriStruct;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/lib/apirouter/ApiMatcher;
    throw p1
.end method
