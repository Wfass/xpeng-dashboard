.class public Lcom/lzy/okgo/cookie/store/SPCookieStore;
.super Ljava/lang/Object;
.source "SPCookieStore.java"

# interfaces
.implements Lcom/lzy/okgo/cookie/store/CookieStore;


# static fields
.field private static final COOKIE_NAME_PREFIX:Ljava/lang/String; = "cookie_"

.field private static final COOKIE_PREFS:Ljava/lang/String; = "okgo_cookie"


# instance fields
.field private final cookiePrefs:Landroid/content/SharedPreferences;

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
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "okgo_cookie"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    .line 64
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 65
    .local v0, "prefsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 66
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "cookie_"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 68
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ","

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "cookieNames":[Ljava/lang/String;
    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 71
    .local v7, "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cookie_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "encodedCookie":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 73
    invoke-static {v8}, Lcom/lzy/okgo/cookie/SerializableCookie;->decodeCookie(Ljava/lang/String;)Lokhttp3/Cookie;

    move-result-object v9

    .line 74
    .local v9, "decodedCookie":Lokhttp3/Cookie;
    if-eqz v9, :cond_1

    .line 75
    iget-object v10, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 76
    iget-object v10, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    new-instance v12, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    iget-object v10, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v7, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "encodedCookie":Ljava/lang/String;
    .end local v9    # "decodedCookie":Lokhttp3/Cookie;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 83
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v4    # "cookieNames":[Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 84
    :cond_3
    return-void
.end method

.method private getCookieToken(Lokhttp3/Cookie;)Ljava/lang/String;
    .locals 2
    .param p1, "cookie"    # Lokhttp3/Cookie;

    .line 87
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

    .line 92
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

.method private saveCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .param p2, "cookie"    # Lokhttp3/Cookie;
    .param p3, "cookieToken"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    .local v0, "prefsWriter":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    iget-object v3, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cookie_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/lzy/okgo/cookie/SerializableCookie;->encodeCookie(Ljava/lang/String;Lokhttp3/Cookie;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    return-void
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

    .line 197
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    iget-object v1, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

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

    .line 199
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 201
    :cond_0
    monitor-exit p0

    return-object v0

    .line 196
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/SPCookieStore;
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

    .line 206
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    iget-object v1, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 208
    .local v1, "mapCookie":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lokhttp3/Cookie;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :cond_0
    monitor-exit p0

    return-object v0

    .line 205
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    .end local v1    # "mapCookie":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lokhttp3/Cookie;>;"
    .end local p1    # "url":Lokhttp3/HttpUrl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/SPCookieStore;
    throw p1
.end method

.method public declared-synchronized loadCookie(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 5
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

    .line 130
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    iget-object v1, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v0

    .line 133
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 134
    .local v1, "urlCookies":Ljava/util/Collection;, "Ljava/util/Collection<Lokhttp3/Cookie;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Cookie;

    .line 135
    .local v3, "cookie":Lokhttp3/Cookie;
    invoke-static {v3}, Lcom/lzy/okgo/cookie/store/SPCookieStore;->isCookieExpired(Lokhttp3/Cookie;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    invoke-virtual {p0, p1, v3}, Lcom/lzy/okgo/cookie/store/SPCookieStore;->removeCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)Z

    goto :goto_1

    .line 138
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .end local v3    # "cookie":Lokhttp3/Cookie;
    :goto_1
    goto :goto_0

    .line 141
    :cond_2
    monitor-exit p0

    return-object v0

    .line 129
    .end local v0    # "ret":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    .end local v1    # "urlCookies":Ljava/util/Collection;, "Ljava/util/Collection<Lokhttp3/Cookie;>;"
    .end local p1    # "url":Lokhttp3/HttpUrl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/SPCookieStore;
    throw p1
.end method

.method public declared-synchronized removeAllCookie()Z
    .locals 2

    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 189
    .local v0, "prefsWriter":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 190
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 185
    .end local v0    # "prefsWriter":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/SPCookieStore;
    throw v0
.end method

.method public declared-synchronized removeCookie(Lokhttp3/HttpUrl;)Z
    .locals 8
    .param p1, "url"    # Lokhttp3/HttpUrl;

    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 168
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 170
    .local v0, "urlCookie":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lokhttp3/Cookie;>;"
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 171
    .local v1, "cookieTokens":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 172
    .local v2, "prefsWriter":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 173
    .local v4, "cookieToken":Ljava/lang/String;
    iget-object v5, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cookie_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cookie_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    .end local v4    # "cookieToken":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 178
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .line 164
    .end local v0    # "urlCookie":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lokhttp3/Cookie;>;"
    .end local v1    # "cookieTokens":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "prefsWriter":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "url":Lokhttp3/HttpUrl;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/SPCookieStore;
    throw p1
.end method

.method public declared-synchronized removeCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)Z
    .locals 6
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .param p2, "cookie"    # Lokhttp3/Cookie;

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

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

    .line 148
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/lzy/okgo/cookie/store/SPCookieStore;->getCookieToken(Lokhttp3/Cookie;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "cookieToken":Ljava/lang/String;
    iget-object v2, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

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

    .line 152
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 155
    .local v1, "prefsWriter":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookiePrefs:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cookie_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cookie_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    :cond_2
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    iget-object v4, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 146
    .end local v0    # "cookieToken":Ljava/lang/String;
    .end local v1    # "prefsWriter":Landroid/content/SharedPreferences$Editor;
    .end local p1    # "url":Lokhttp3/HttpUrl;
    .end local p2    # "cookie":Lokhttp3/Cookie;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/SPCookieStore;
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

    .line 98
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

    .line 99
    .local v1, "cookie":Lokhttp3/Cookie;
    invoke-virtual {p0, p1, v1}, Lcom/lzy/okgo/cookie/store/SPCookieStore;->saveCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v1    # "cookie":Lokhttp3/Cookie;
    goto :goto_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 97
    .end local p1    # "url":Lokhttp3/HttpUrl;
    .end local p2    # "urlCookies":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Cookie;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/SPCookieStore;
    throw p1
.end method

.method public declared-synchronized saveCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)V
    .locals 3
    .param p1, "url"    # Lokhttp3/HttpUrl;
    .param p2, "cookie"    # Lokhttp3/Cookie;

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/lzy/okgo/cookie/store/SPCookieStore;->cookies:Ljava/util/Map;

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    invoke-static {p2}, Lcom/lzy/okgo/cookie/store/SPCookieStore;->isCookieExpired(Lokhttp3/Cookie;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0, p1, p2}, Lcom/lzy/okgo/cookie/store/SPCookieStore;->removeCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;)Z

    goto :goto_0

    .line 112
    :cond_1
    invoke-direct {p0, p2}, Lcom/lzy/okgo/cookie/store/SPCookieStore;->getCookieToken(Lokhttp3/Cookie;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/lzy/okgo/cookie/store/SPCookieStore;->saveCookie(Lokhttp3/HttpUrl;Lokhttp3/Cookie;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    .end local p1    # "url":Lokhttp3/HttpUrl;
    .end local p2    # "cookie":Lokhttp3/Cookie;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/lzy/okgo/cookie/store/SPCookieStore;
    throw p1
.end method
