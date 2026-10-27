.class public Lcom/lzy/okgo/d/b;
.super Lcom/lzy/okgo/d/a;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/d/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lzy/okgo/d/a<",
        "Lcom/lzy/okgo/cache/CacheEntity<",
        "*>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/lzy/okgo/d/d;

    invoke-direct {v0}, Lcom/lzy/okgo/d/d;-><init>()V

    invoke-direct {p0, v0}, Lcom/lzy/okgo/d/a;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/lzy/okgo/d/b$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/lzy/okgo/d/b;-><init>()V

    return-void
.end method

.method public static cV()Lcom/lzy/okgo/d/b;
    .locals 1

    .line 37
    invoke-static {}, Lcom/lzy/okgo/d/b$a;->cW()Lcom/lzy/okgo/d/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lzy/okgo/cache/CacheEntity<",
            "*>;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/lzy/okgo/cache/CacheEntity;->a(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Lcom/lzy/okgo/cache/CacheEntity;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 0
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
    invoke-virtual {p2, p1}, Lcom/lzy/okgo/cache/CacheEntity;->setKey(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, p2}, Lcom/lzy/okgo/d/b;->e(Ljava/lang/Object;)Z

    .line 101
    return-object p2
.end method

.method public aF(Ljava/lang/String;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 4
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

    invoke-virtual {p0, v1, v2}, Lcom/lzy/okgo/d/b;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/lzy/okgo/cache/CacheEntity;

    nop

    :cond_1
    return-object v0
.end method

.method public b(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;
    .locals 0
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
    invoke-static {p1}, Lcom/lzy/okgo/cache/CacheEntity;->b(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public synthetic c(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/lzy/okgo/d/b;->b(Landroid/database/Cursor;)Lcom/lzy/okgo/cache/CacheEntity;

    move-result-object p1

    return-object p1
.end method

.method public synthetic f(Ljava/lang/Object;)Landroid/content/ContentValues;
    .locals 0

    .line 34
    check-cast p1, Lcom/lzy/okgo/cache/CacheEntity;

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/d/b;->a(Lcom/lzy/okgo/cache/CacheEntity;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "cache"

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 3

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

    invoke-virtual {p0, v1, v2}, Lcom/lzy/okgo/d/b;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
