.class public abstract Landroidx/room/RoomDatabase;
.super Ljava/lang/Object;
.source "RoomDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/RoomDatabase$Callback;,
        Landroidx/room/RoomDatabase$MigrationContainer;,
        Landroidx/room/RoomDatabase$Builder;,
        Landroidx/room/RoomDatabase$JournalMode;
    }
.end annotation


# static fields
.field private static final DB_IMPL_SUFFIX:Ljava/lang/String; = "_Impl"

.field public static final MAX_BIND_PARAMETER_CNT:I = 0x3e7
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# instance fields
.field private mAllowMainThreadQueries:Z

.field protected mCallbacks:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/room/RoomDatabase$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

.field protected volatile mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

.field private final mInvalidationTracker:Landroidx/room/InvalidationTracker;

.field private mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

.field mWriteAheadLoggingEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 101
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->createInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    .line 102
    return-void
.end method


# virtual methods
.method public assertNotMainThread()V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 201
    iget-boolean v0, p0, Landroidx/room/RoomDatabase;->mAllowMainThreadQueries:Z

    if-eqz v0, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/arch/core/executor/ArchTaskExecutor;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    return-void

    .line 205
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access database on the main thread since it may potentially lock the UI for a long period of time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginTransaction()V
    .locals 2

    .line 252
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 253
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 254
    .local v0, "database":Landroidx/sqlite/db/SupportSQLiteDatabase;
    iget-object v1, p0, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    invoke-virtual {v1, v0}, Landroidx/room/InvalidationTracker;->syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 255
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 256
    return-void
.end method

.method public abstract clearAllTables()V
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method

.method public close()V
    .locals 2

    .line 182
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    :try_start_0
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 185
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 188
    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 190
    :cond_0
    :goto_0
    return-void
.end method

.method public compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 1
    .param p1, "sql"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 244
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 245
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method protected abstract createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public endTransaction()V
    .locals 1

    .line 262
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 263
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    invoke-virtual {v0}, Landroidx/room/InvalidationTracker;->refreshVersionsAsync()V

    .line 268
    :cond_0
    return-void
.end method

.method getCloseLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 90
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mCloseLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public getInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 337
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    return-object v0
.end method

.method public getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 129
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object v0
.end method

.method public inTransaction()Z
    .locals 1

    .line 348
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public init(Landroidx/room/DatabaseConfiguration;)V
    .locals 3
    .param p1, "configuration"    # Landroidx/room/DatabaseConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 111
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "wal":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 114
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->journalMode:Landroidx/room/RoomDatabase$JournalMode;

    sget-object v2, Landroidx/room/RoomDatabase$JournalMode;->WRITE_AHEAD_LOGGING:Landroidx/room/RoomDatabase$JournalMode;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 115
    iget-object v1, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 117
    :cond_1
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->callbacks:Ljava/util/List;

    iput-object v1, p0, Landroidx/room/RoomDatabase;->mCallbacks:Ljava/util/List;

    .line 118
    iget-boolean v1, p1, Landroidx/room/DatabaseConfiguration;->allowMainThreadQueries:Z

    iput-boolean v1, p0, Landroidx/room/RoomDatabase;->mAllowMainThreadQueries:Z

    .line 119
    iput-boolean v0, p0, Landroidx/room/RoomDatabase;->mWriteAheadLoggingEnabled:Z

    .line 120
    return-void
.end method

.method protected internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 324
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mInvalidationTracker:Landroidx/room/InvalidationTracker;

    invoke-virtual {v0, p1}, Landroidx/room/InvalidationTracker;->internalInit(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 325
    return-void
.end method

.method public isOpen()Z
    .locals 2

    .line 174
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 175
    .local v0, "db":Landroidx/sqlite/db/SupportSQLiteDatabase;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;
    .locals 1
    .param p1, "query"    # Landroidx/sqlite/db/SupportSQLiteQuery;

    .line 233
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->assertNotMainThread()V

    .line 234
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 223
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-direct {v1, p1, p2}, Landroidx/sqlite/db/SimpleSQLiteQuery;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public runInTransaction(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/concurrent/Callable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 302
    .local p1, "body":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 304
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 305
    .local v0, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    nop

    .line 312
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object v0

    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception in transaction"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public runInTransaction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "body"    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 284
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 286
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 287
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 290
    nop

    .line 291
    return-void

    .line 289
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->endTransaction()V

    throw v0
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .line 274
    iget-object v0, p0, Landroidx/room/RoomDatabase;->mOpenHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    .line 275
    return-void
.end method
