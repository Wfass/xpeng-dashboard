.class public abstract Lcom/lzy/okgo/d/a;
.super Ljava/lang/Object;
.source "BaseDao.java"


# annotations
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
.field protected lM:Ljava/util/concurrent/locks/Lock;

.field protected lN:Landroid/database/sqlite/SQLiteOpenHelper;

.field protected lO:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lzy/okgo/d/a;->TAG:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/lzy/okgo/d/d;->lM:Ljava/util/concurrent/locks/Lock;

    iput-object v0, p0, Lcom/lzy/okgo/d/a;->lM:Ljava/util/concurrent/locks/Lock;

    .line 49
    iput-object p1, p0, Lcom/lzy/okgo/d/a;->lN:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 50
    invoke-virtual {p0}, Lcom/lzy/okgo/d/a;->cU()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 15
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

    move-object v1, p0

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 370
    iget-object v0, v1, Lcom/lzy/okgo/d/a;->lM:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 371
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 372
    nop

    .line 374
    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 375
    iget-object v6, v1, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/lzy/okgo/d/a;->getTableName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-virtual/range {v6 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v1, v6}, Lcom/lzy/okgo/d/a;->c(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_0
    iget-object v0, v1, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 383
    invoke-virtual {v1, v5, v6}, Lcom/lzy/okgo/d/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 384
    iget-object v0, v1, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 385
    iget-object v0, v1, Lcom/lzy/okgo/d/a;->lM:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 386
    sget-object v0, Lcom/lzy/okgo/d/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 380
    :catch_0
    move-exception v0

    goto :goto_1

    .line 383
    :catchall_0
    move-exception v0

    move-object v6, v5

    goto :goto_3

    .line 380
    :catch_1
    move-exception v0

    move-object v6, v5

    .line 381
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 383
    invoke-virtual {v1, v5, v6}, Lcom/lzy/okgo/d/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 384
    iget-object v0, v1, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 385
    iget-object v0, v1, Lcom/lzy/okgo/d/a;->lM:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 386
    sget-object v0, Lcom/lzy/okgo/d/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " query"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzy/okgo/f/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    nop

    .line 388
    return-object v4

    .line 383
    :catchall_1
    move-exception v0

    :goto_3
    invoke-virtual {v1, v5, v6}, Lcom/lzy/okgo/d/a;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 384
    iget-object v4, v1, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 385
    iget-object v1, v1, Lcom/lzy/okgo/d/a;->lM:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 386
    sget-object v1, Lcom/lzy/okgo/d/a;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " query"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lzy/okgo/f/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method protected final a(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 1

    .line 62
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 64
    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 138
    iget-object v2, p0, Lcom/lzy/okgo/d/a;->lM:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 141
    iget-object v2, p0, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/lzy/okgo/d/a;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 142
    iget-object p1, p0, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    const/4 p1, 0x1

    .line 147
    iget-object p2, p0, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 148
    iget-object p2, p0, Lcom/lzy/okgo/d/a;->lM:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 149
    sget-object p2, Lcom/lzy/okgo/d/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " delete"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/lzy/okgo/f/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 147
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 144
    :catch_0
    move-exception p1

    .line 145
    :try_start_1
    invoke-static {p1}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    iget-object p1, p0, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 148
    iget-object p1, p0, Lcom/lzy/okgo/d/a;->lM:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 149
    sget-object p1, Lcom/lzy/okgo/d/a;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " delete"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/lzy/okgo/f/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    nop

    .line 151
    const/4 p1, 0x0

    return p1

    .line 147
    :goto_0
    iget-object p2, p0, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 148
    iget-object p2, p0, Lcom/lzy/okgo/d/a;->lM:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 149
    sget-object p2, Lcom/lzy/okgo/d/a;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " delete"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/lzy/okgo/f/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public abstract c(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 8
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
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lzy/okgo/d/a;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public cU()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/lzy/okgo/d/a;->lN:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 189
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 190
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 191
    iget-object v3, p0, Lcom/lzy/okgo/d/a;->lM:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 193
    :try_start_0
    iget-object v3, p0, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 194
    iget-object v3, p0, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/lzy/okgo/d/a;->getTableName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/lzy/okgo/d/a;->f(Ljava/lang/Object;)Landroid/content/ContentValues;

    move-result-object p1

    invoke-virtual {v3, v4, v5, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 195
    iget-object p1, p0, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/4 p1, 0x1

    .line 200
    iget-object v0, p0, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 201
    iget-object v0, p0, Lcom/lzy/okgo/d/a;->lM:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 202
    sget-object v0, Lcom/lzy/okgo/d/a;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " replaceT"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzy/okgo/f/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    return p1

    .line 200
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 197
    :catch_0
    move-exception p1

    .line 198
    :try_start_1
    invoke-static {p1}, Lcom/lzy/okgo/f/d;->f(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    iget-object p1, p0, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 201
    iget-object p1, p0, Lcom/lzy/okgo/d/a;->lM:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 202
    sget-object p1, Lcom/lzy/okgo/d/a;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " replaceT"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/lzy/okgo/f/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    nop

    .line 204
    return v0

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/lzy/okgo/d/a;->lO:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 201
    iget-object v0, p0, Lcom/lzy/okgo/d/a;->lM:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 202
    sget-object v0, Lcom/lzy/okgo/d/a;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " replaceT"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lzy/okgo/f/d;->v(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public abstract f(Ljava/lang/Object;)Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation
.end method

.method public abstract getTableName()Ljava/lang/String;
.end method
