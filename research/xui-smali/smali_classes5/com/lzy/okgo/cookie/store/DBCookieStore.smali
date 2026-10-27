.class public Lcom/lzy/okgo/cookie/store/DBCookieStore;
.super Ljava/lang/Object;
.source "DBCookieStore.java"

# interfaces
.implements Lcom/lzy/okgo/cookie/store/CookieStore;


# instance fields
.field private final cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/Cookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Lcom/lzy/okgo/db/CookieManager;->init(Landroid/content/Context;)V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    .line 54
    invoke-static {}, Lcom/lzy/okgo/db/CookieManager;->getInstance()Lcom/lzy/okgo/db/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/db/CookieManager;->queryAll()Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, "cookieList":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okgo/cookie/SerializableCookie;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lzy/okgo/cookie/SerializableCookie;

    .line 56
    .local v2, "serializableCookie":Lcom/lzy/okgo/cookie/SerializableCookie;
    iget-object v3, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    iget-object v4, v2, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    iget-object v3, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    iget-object v4, v2, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    invoke-virtual {v2}, Lcom/lzy/okgo/cookie/SerializableCookie;->getCookie()Lokhttp3/Cookie;

    move-result-object v3

    .line 60
    .local v3, "cookie":Lokhttp3/Cookie;
    iget-object v4, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    iget-object v5, v2, Lcom/lzy/okgo/cookie/SerializableCookie;->host:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v3}, Lcom/lzy/okgo/cookie/store/DBCookieStore;->getCookieToken(Lokhttp3/Cookie;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .end local v2    # "serializableCookie":Lcom/lzy/okgo/cookie/SerializableCookie;
    .end local v3    # "cookie":Lokhttp3/Cookie;
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method

.method private getCookieToken(Lokhttp3/Cookie;)Ljava/lang/String;
    .locals 2
    .param p1, "cookie"    # Lokhttp3/Cookie;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isCookieExpired(Lokhttp3/Cookie;)Z
    .locals 4
    .param p0, "cookie"    # Lokhttp3/Cookie;

    .line 70
    invoke-virtual {p0}, Lokhttp3/Cookie;->expiresAt()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized getAllCookie()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    iget-object v1, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 161
    :cond_0
    monitor-exit p0

    return-object v0

    .line 156
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/DBCookieStore;
    throw v0
.end method

.method public declared-synchronized getCookie(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 3
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 166
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    iget-object v1, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 168
    .local v1, "mapCookie":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lokhttp3/Cookie;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-object v0

    .line 165
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    .end local v1    # "mapCookie":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lokhttp3/Cookie;>;"
    .end local p1    # "url":Lokhttp3/HttpUrl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/DBCookieStore;
    throw p1
.end method

.method public declared-synchronized loadCookie(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 6
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 101
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    iget-object v1, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v0

    .line 104
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/lzy/okgo/db/CookieManager;->getInstance()Lcom/lzy/okgo/db/CookieManager;

    move-result-object v1

    const-string v2, "host=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/lzy/okgo/db/CookieManager;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 105
    .local v1, "query":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okgo/cookie/SerializableCookie;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lzy/okgo/cookie/SerializableCookie;

    .line 106
    .local v3, "serializableCookie":Lcom/lzy/okgo/cookie/SerializableCookie;
    invoke-virtual {v3}, Lcom/lzy/okgo/cookie/SerializableCookie;->getCookie()Lokhttp3/Cookie;

    move-result-object v4

    .line 107
    .local v4, "cookie":Lokhttp3/Cookie;
    invoke-static {v4}, Lcom/lzy/okgo/cookie/store/DBCookieStore;->isCookieExpired(Lokhttp3/Cookie;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 108
    invoke-virtual {p0, p1, v4}, Lcom/lzy/okgo/cookie/store/DBCookieStore;->removeCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)Z

    goto :goto_1

    .line 110
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v3    # "serializableCookie":Lcom/lzy/okgo/cookie/SerializableCookie;
    .end local v4    # "cookie":Lokhttp3/Cookie;
    :goto_1
    goto :goto_0

    .line 113
    :cond_2
    monitor-exit p0

    return-object v0

    .line 100
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    .end local v1    # "query":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okgo/cookie/SerializableCookie;>;"
    .end local p1    # "url":Lokhttp3/HttpUrl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/DBCookieStore;
    throw p1
.end method

.method public declared-synchronized removeAllCookie()Z
    .locals 1

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 150
    invoke-static {}, Lcom/lzy/okgo/db/CookieManager;->getInstance()Lcom/lzy/okgo/db/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/db/CookieManager;->deleteAll()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/DBCookieStore;
    throw v0
.end method

.method public declared-synchronized removeCookie(Lokhttp3/HttpUrl;)Z
    .locals 5
    .param p1, "url"    # Lokhttp3/HttpUrl;

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    .line 137
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "host=?"

    .line 140
    .local v0, "whereClause":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, v3

    .line 141
    .local v1, "whereArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/lzy/okgo/db/CookieManager;->getInstance()Lcom/lzy/okgo/db/CookieManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/lzy/okgo/db/CookieManager;->delete(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    monitor-exit p0

    return v2

    .line 133
    .end local v0    # "whereClause":Ljava/lang/String;
    .end local v1    # "whereArgs":[Ljava/lang/String;
    .end local p1    # "url":Lokhttp3/HttpUrl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/DBCookieStore;
    throw p1
.end method

.method public declared-synchronized removeCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)Z
    .locals 6
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .param p2, "cookie"    # Lokhttp3/Cookie;

    monitor-enter p0

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    .line 120
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/lzy/okgo/cookie/store/DBCookieStore;->getCookieToken(Lokhttp3/Cookie;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "cookieToken":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit p0

    return v1

    .line 124
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v2, "host=? and name=? and domain=?"

    .line 127
    .local v2, "whereClause":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p2}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    invoke-virtual {p2}, Lokhttp3/Cookie;->domain()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    move-object v1, v3

    .line 128
    .local v1, "whereArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/lzy/okgo/db/CookieManager;->getInstance()Lcom/lzy/okgo/db/CookieManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/lzy/okgo/db/CookieManager;->delete(Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    monitor-exit p0

    return v4

    .line 118
    .end local v0    # "cookieToken":Ljava/lang/String;
    .end local v1    # "whereArgs":[Ljava/lang/String;
    .end local v2    # "whereClause":Ljava/lang/String;
    .end local p1    # "url":Lokhttp3/HttpUrl;
    .end local p2    # "cookie":Lokhttp3/Cookie;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/DBCookieStore;
    throw p1
.end method

.method public declared-synchronized saveCookie(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 2
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .local p2, "urlCookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    monitor-enter p0

    .line 76
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Cookie;

    .line 77
    .local v1, "cookie":Lokhttp3/Cookie;
    invoke-virtual {p0, p1, v1}, Lcom/lzy/okgo/cookie/store/DBCookieStore;->saveCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .end local v1    # "cookie":Lokhttp3/Cookie;
    goto :goto_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    .line 75
    .end local p1    # "url":Lokhttp3/HttpUrl;
    .end local p2    # "urlCookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/DBCookieStore;
    throw p1
.end method

.method public declared-synchronized saveCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)V
    .locals 3
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .param p2, "cookie"    # Lokhttp3/Cookie;

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    invoke-static {p2}, Lcom/lzy/okgo/cookie/store/DBCookieStore;->isCookieExpired(Lokhttp3/Cookie;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/cookie/store/DBCookieStore;->removeCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)Z

    goto :goto_0

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/DBCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p2}, Lcom/lzy/okgo/cookie/store/DBCookieStore;->getCookieToken(Lokhttp3/Cookie;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/lzy/okgo/cookie/SerializableCookie;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/lzy/okgo/cookie/SerializableCookie;-><init>(Ljava/lang/String;Lokhttp3/Cookie;)V

    .line 94
    .local v0, "serializableCookie":Lcom/lzy/okgo/cookie/SerializableCookie;
    invoke-static {}, Lcom/lzy/okgo/db/CookieManager;->getInstance()Lcom/lzy/okgo/db/CookieManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lzy/okgo/db/CookieManager;->replace(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .end local v0    # "serializableCookie":Lcom/lzy/okgo/cookie/SerializableCookie;
    :goto_0
    monitor-exit p0

    return-void

    .line 82
    .end local p1    # "url":Lokhttp3/HttpUrl;
    .end local p2    # "cookie":Lokhttp3/Cookie;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/DBCookieStore;
    throw p1
.end method
