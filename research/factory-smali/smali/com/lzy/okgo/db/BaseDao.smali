.class public abstract Lcom/lzy/okgo/db/BaseDao;
.super Ljava/lang/Object;
.source "BaseDao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lzy/okgo/db/BaseDao$Action;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static TAG:Ljava/lang/String;


# instance fields
.field protected database:Landroid/database/sqlite/SQLiteDatabase;

.field protected helper:Landroid/database/sqlite/SQLiteOpenHelper;

.field protected lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1
    .param p1, "helper"    # Landroid/database/sqlite/SQLiteOpenHelper;

    .line 46
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/lzy/okgo/db/DBHelper;->lock:Ljava/util/concurrent/locks/Lock;

    iput-object v0, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    .line 49
    iput-object p1, p0, Lcom/lzy/okgo/db/BaseDao;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 50
    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->openWriter()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    return-void
.end method


# virtual methods
.method protected final closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 62
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 64
    :cond_1
    return-void
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .line 156
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .line 137
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 138
    .local v0, "start":J
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 141
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    const/4 v2, 0x1

    .line 147
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 148
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 149
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " delete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 147
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 144
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v2    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 148
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 149
    sget-object v2, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " delete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    nop

    .line 151
    const/4 v2, 0x0

    return v2

    .line 147
    :goto_0
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 148
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 149
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " delete"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public deleteAll(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 2
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 132
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/lzy/okgo/db/BaseDao;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public deleteAll()Z
    .locals 1

    .line 127
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/lzy/okgo/db/BaseDao;->delete(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteList(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .line 160
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    .local p1, "where":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/String;>;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    .local v0, "start":J
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 164
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 165
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 166
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;[Ljava/lang/String;>;"
    goto :goto_0

    .line 167
    :cond_0
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    const/4 v2, 0x1

    .line 172
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 173
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 174
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " deleteList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 172
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 169
    :catch_0
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .end local v2    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 173
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 174
    sget-object v2, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " deleteList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    nop

    .line 176
    const/4 v2, 0x0

    return v2

    .line 172
    :goto_1
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 173
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 174
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " deleteList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public abstract getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)J
    .locals 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;)J"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/db/BaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Z
    .locals 5
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 115
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    .local p2, "ts":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 116
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Lcom/lzy/okgo/db/BaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 118
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    .line 121
    const/4 v1, 0x0

    return v1
.end method

.method public insert(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 69
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 70
    .local v1, "start":J
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 72
    :try_start_0
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 73
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/BaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 74
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const/4 v0, 0x1

    .line 79
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 81
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " insertT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 79
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v3    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 81
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " insertT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    nop

    .line 83
    return v0

    .line 79
    :goto_0
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 80
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 81
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " insertT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public insert(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    .local p1, "ts":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 94
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 95
    .local v1, "start":J
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 97
    :try_start_0
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 99
    .local v4, "t":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v4}, Lcom/lzy/okgo/db/BaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 100
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 101
    :cond_1
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    const/4 v0, 0x1

    .line 106
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 107
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " insertList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 106
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 103
    :catch_0
    move-exception v3

    .line 104
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    .end local v3    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 107
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " insertList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    nop

    .line 110
    return v0

    .line 106
    :goto_1
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 107
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 108
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " insertList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public openReader()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 54
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    iget-object v0, p0, Lcom/lzy/okgo/db/BaseDao;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public openWriter()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 58
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    iget-object v0, p0, Lcom/lzy/okgo/db/BaseDao;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public abstract parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 322
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/lzy/okgo/db/BaseDao;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "orderBy"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    move-object v1, p0

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 335
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v3, 0x0

    move-object v4, v3

    .line 337
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v1}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v6

    move-object v5, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v4, v0

    .line 338
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v1, v4}, Lcom/lzy/okgo/db/BaseDao;->parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 341
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v1, v3, v4}, Lcom/lzy/okgo/db/BaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 345
    nop

    .line 346
    return-object v2

    .line 344
    :goto_1
    invoke-virtual {v1, v3, v4}, Lcom/lzy/okgo/db/BaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    throw v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 356
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lzy/okgo/db/BaseDao;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 16
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    move-object/from16 v1, p0

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 370
    .local v2, "start":J
    iget-object v0, v1, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 372
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v5, 0x0

    move-object v6, v5

    .line 374
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, v1, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 375
    iget-object v7, v1, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {p0 .. p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    move-object/from16 v15, p7

    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v6, v0

    .line 376
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v1, v6}, Lcom/lzy/okgo/db/BaseDao;->parseCursorToBean(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, v1, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-virtual {v1, v5, v6}, Lcom/lzy/okgo/db/BaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 384
    iget-object v0, v1, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 385
    iget-object v0, v1, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 386
    sget-object v0, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 383
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v1, v5, v6}, Lcom/lzy/okgo/db/BaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 384
    iget-object v0, v1, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 385
    iget-object v0, v1, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 386
    sget-object v0, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " query"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    nop

    .line 388
    return-object v4

    .line 383
    :goto_2
    invoke-virtual {v1, v5, v6}, Lcom/lzy/okgo/db/BaseDao;->closeDatabase(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 384
    iget-object v5, v1, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 385
    iget-object v5, v1, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 386
    sget-object v5, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " query"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public queryAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 351
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/lzy/okgo/db/BaseDao;->query(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryAll(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 317
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/lzy/okgo/db/BaseDao;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryOne(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    const-string v8, "1"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v8}, Lcom/lzy/okgo/db/BaseDao;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 328
    .local v0, "query":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 329
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public queryOne(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 361
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 362
    .local v0, "start":J
    const-string v9, "1"

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v9}, Lcom/lzy/okgo/db/BaseDao;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 363
    .local v2, "query":Ljava/util/List;, "Ljava/util/List<TT;>;"
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " queryOne"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3
.end method

.method public replace(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "contentValues"    # Landroid/content/ContentValues;

    .line 230
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public replace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;)J
    .locals 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;)J"
        }
    .end annotation

    .line 208
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/db/BaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public replace(Landroid/content/ContentValues;)Z
    .locals 7
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .line 212
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 213
    .local v0, "start":J
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 215
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 216
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 217
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    const/4 v2, 0x1

    .line 222
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 223
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 224
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " replaceContentValues"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 222
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 219
    :catch_0
    move-exception v2

    .line 220
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    .end local v2    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 223
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 224
    sget-object v2, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " replaceContentValues"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    nop

    .line 226
    const/4 v2, 0x0

    return v2

    .line 222
    :goto_0
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 223
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 224
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " replaceContentValues"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public replace(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Z
    .locals 5
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 256
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    .local p2, "ts":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 257
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1}, Lcom/lzy/okgo/db/BaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 259
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V

    .line 262
    const/4 v1, 0x0

    return v1
.end method

.method public replace(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 189
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 190
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 191
    .local v1, "start":J
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 193
    :try_start_0
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 194
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/BaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 195
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/4 v0, 0x1

    .line 200
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 201
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 202
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " replaceT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 200
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v3

    .line 198
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    .end local v3    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 201
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 202
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " replaceT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    nop

    .line 204
    return v0

    .line 200
    :goto_0
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 201
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 202
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " replaceT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public replace(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)Z"
        }
    .end annotation

    .line 234
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    .local p1, "ts":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 235
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 236
    .local v1, "start":J
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 238
    :try_start_0
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 239
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 240
    .local v4, "t":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p0, v4}, Lcom/lzy/okgo/db/BaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 241
    .end local v4    # "t":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 242
    :cond_1
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    const/4 v0, 0x1

    .line 247
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 248
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 249
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " replaceList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 247
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 244
    :catch_0
    move-exception v3

    .line 245
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 247
    .end local v3    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 248
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 249
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " replaceList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    nop

    .line 251
    return v0

    .line 247
    :goto_1
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 248
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 249
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " replaceList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public startTransaction(Lcom/lzy/okgo/db/BaseDao$Action;)V
    .locals 2
    .param p1, "action"    # Lcom/lzy/okgo/db/BaseDao$Action;

    .line 397
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    iget-object v0, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 400
    iget-object v0, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-interface {p1, v0}, Lcom/lzy/okgo/db/BaseDao$Action;->call(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 401
    iget-object v0, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v0}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 406
    iget-object v0, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 407
    nop

    .line 408
    return-void

    .line 405
    :goto_1
    iget-object v1, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 406
    iget-object v1, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public abstract unInit()V
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "contentValues"    # Landroid/content/ContentValues;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .line 312
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 288
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/lzy/okgo/db/BaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .line 293
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 294
    .local v0, "start":J
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 297
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 298
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    const/4 v2, 0x1

    .line 303
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 304
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " updateContentValues"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 303
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 300
    :catch_0
    move-exception v2

    .line 301
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    .end local v2    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 304
    iget-object v2, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    sget-object v2, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " updateContentValues"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    nop

    .line 307
    const/4 v2, 0x0

    return v2

    .line 303
    :goto_0
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 304
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 305
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " updateContentValues"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 7
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 268
    .local p0, "this":Lcom/lzy/okgo/db/BaseDao;, "Lcom/lzy/okgo/db/BaseDao<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 269
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 270
    .local v1, "start":J
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 272
    :try_start_0
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 273
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/lzy/okgo/db/BaseDao;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/db/BaseDao;->getContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v3, v4, v5, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 274
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    const/4 v0, 0x1

    .line 279
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 280
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 281
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " updateT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 279
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v3

    .line 277
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/lzy/okgo/utils/OkLogger;->printStackTrace(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    .end local v3    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 280
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 281
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " updateT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    nop

    .line 283
    return v0

    .line 279
    :goto_0
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 280
    iget-object v3, p0, Lcom/lzy/okgo/db/BaseDao;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 281
    sget-object v3, Lcom/lzy/okgo/db/BaseDao;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " updateT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lzy/okgo/utils/OkLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
