.class public Lcom/lzy/okgo/db/CacheManager;
.super Lcom/lzy/okgo/db/BaseDao;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/db/CacheManager$CacheManagerHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/db/BaseDao<",
        "Lcom/lzy/okgo/cache/CacheEntity<",
        "*>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/lzy/okgo/db/DBHelper;

    invoke-direct {v0}, Lcom/lzy/okgo/db/DBHelper;-><init>()V

    invoke-direct {p0, v0}, Lcom/lzy/okgo/db/BaseDao;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/lzy/okgo/db/CacheManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lzy/okgo/db/CacheManager$1;

    .line 34
    invoke-direct {p0}, Lcom/lzy/okgo/db/CacheManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/lzy/okgo/db/CacheManager;
    .locals 1

    .line 37
    invoke-static {}, Lcom/lzy/okgo/db/CacheManager$CacheManagerHolder;->access$000()Lcom/lzy/okgo/db/CacheManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/lzy/okgo/db/CacheManager;->deleteAll()Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "*>;"
        }
    .end annotation

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 70
    :cond_0
    const-string v1, "key=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/lzy/okgo/db/CacheManager;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "cacheEntities":Ljava/util/List;, "Ljava/util/List<Lcom/lzy/okgo/cache/CacheEntity<*>;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lzy/okgo/cache/CacheEntity;

    nop

    :cond_1
    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 83
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/CacheManager;->get(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "*>;>;"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/lzy/okgo/db/CacheManager;->queryAll()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContentValues(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "*>;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 55
    .local p1, "cacheEntity":Lcom/lzy/okgo/cache/CacheEntity;, "Lcom/lzy/okgo/cache/CacheEntity<*>;"
    invoke-static {p1}, Lcom/lzy/okgo/cache/CacheEntity;->getContentValues(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 34
    check-cast p1, Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/CacheManager;->getContentValues(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "cache"

    return-object v0
.end method

.method public parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "*>;"
        }
    .end annotation

    .line 50
    invoke-static {p1}, Lcom/lzy/okgo/cache/CacheEntity;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/CacheManager;->parseCursorToBean(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 77
    :cond_0
    const-string v1, "key=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/lzy/okgo/db/CacheManager;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public replace(Ljava/lang/String;Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;)",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "TT;>;"
        }
    .end annotation

    .line 99
    .local p2, "entity":Lcom/lzy/okgo/cache/CacheEntity;, "Lcom/lzy/okgo/cache/CacheEntity<TT;>;"
    invoke-virtual {p2, p1}, Lcom/lzy/okgo/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p2}, Lcom/lzy/okgo/db/CacheManager;->replace(Ljava/lang/Object;)Z

    .line 101
    return-object p2
.end method

.method public unInit()V
    .locals 0

    .line 65
    return-void
.end method
