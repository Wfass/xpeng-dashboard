.class public Lcom/lzy/okgo/cookie/store/MemoryCookieStore;
.super Ljava/lang/Object;
.source "MemoryCookieStore.java"

# interfaces
.implements Lcom/lzy/okgo/cookie/store/CookieStore;


# instance fields
.field private final memoryCookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized getAllCookie()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    iget-object v1, p0, Lcom/lzy/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 82
    .local v1, "httpUrls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 83
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lcom/lzy/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    .end local v3    # "url":Ljava/lang/String;
    goto :goto_0

    .line 85
    :cond_0
    monitor-exit p0

    return-object v0

    .line 79
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    .end local v1    # "httpUrls":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/MemoryCookieStore;
    throw v0
.end method

.method public getCookie(Lokhttp3/HttpUrl;)Ljava/util/List;
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

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    iget-object v1, p0, Lcom/lzy/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 92
    .local v1, "urlCookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_0
    return-object v0
.end method

.method public declared-synchronized loadCookie(Lokhttp3/HttpUrl;)Ljava/util/List;
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

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 71
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    if-nez v0, :cond_0

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    .line 73
    iget-object v1, p0, Lcom/lzy/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    monitor-exit p0

    return-object v0

    .line 69
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    .end local p1    # "url":Lokhttp3/HttpUrl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/MemoryCookieStore;
    throw p1
.end method

.method public declared-synchronized removeAllCookie()Z
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/MemoryCookieStore;
    throw v0
.end method

.method public declared-synchronized removeCookie(Lokhttp3/HttpUrl;)Z
    .locals 2
    .param p1, "url"    # Lokhttp3/HttpUrl;

    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .end local p1    # "url":Lokhttp3/HttpUrl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/MemoryCookieStore;
    throw p1
.end method

.method public declared-synchronized removeCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)Z
    .locals 2
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .param p2, "cookie"    # Lokhttp3/Cookie;

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 99
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    if-eqz p2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    .line 97
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    .end local p1    # "url":Lokhttp3/HttpUrl;
    .end local p2    # "cookie":Lokhttp3/Cookie;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/MemoryCookieStore;
    throw p1
.end method

.method public declared-synchronized saveCookie(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 8
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

    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    monitor-enter p0

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 43
    .local v0, "oldCookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "needRemove":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Cookie;

    .line 45
    .local v3, "newCookie":Lokhttp3/Cookie;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/Cookie;

    .line 46
    .local v5, "oldCookie":Lokhttp3/Cookie;
    invoke-virtual {v3}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 47
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v5    # "oldCookie":Lokhttp3/Cookie;
    :cond_0
    goto :goto_1

    .line 50
    .end local v3    # "newCookie":Lokhttp3/Cookie;
    :cond_1
    goto :goto_0

    .line 51
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 52
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 41
    .end local v0    # "oldCookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    .end local v1    # "needRemove":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    .end local p1    # "url":Lokhttp3/HttpUrl;
    .end local p2    # "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/MemoryCookieStore;
    throw p1
.end method

.method public declared-synchronized saveCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)V
    .locals 6
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .param p2, "cookie"    # Lokhttp3/Cookie;

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/MemoryCookieStore;->memoryCookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 58
    .local v0, "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v1, "needRemove":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Cookie;

    .line 60
    .local v3, "item":Lokhttp3/Cookie;
    invoke-virtual {p2}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lokhttp3/Cookie;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v3    # "item":Lokhttp3/Cookie;
    :cond_0
    goto :goto_0

    .line 64
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 65
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    .line 56
    .end local v0    # "cookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    .end local v1    # "needRemove":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    .end local p1    # "url":Lokhttp3/HttpUrl;
    .end local p2    # "cookie":Lokhttp3/Cookie;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/MemoryCookieStore;
    throw p1
.end method
