.class public Landroidx/room/InvalidationTracker;
.super Ljava/lang/Object;
.source "InvalidationTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/InvalidationTracker$WeakObserver;,
        Landroidx/room/InvalidationTracker$ObservedTableTracker;,
        Landroidx/room/InvalidationTracker$Observer;,
        Landroidx/room/InvalidationTracker$ObserverWrapper;
    }
.end annotation


# static fields
.field static final CLEANUP_SQL:Ljava/lang/String; = "DELETE FROM room_table_modification_log WHERE version NOT IN( SELECT MAX(version) FROM room_table_modification_log GROUP BY table_id)"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final CREATE_VERSION_TABLE_SQL:Ljava/lang/String; = "CREATE TEMP TABLE room_table_modification_log(version INTEGER PRIMARY KEY AUTOINCREMENT, table_id INTEGER)"

.field static final SELECT_UPDATED_TABLES_SQL:Ljava/lang/String; = "SELECT * FROM room_table_modification_log WHERE version  > ? ORDER BY version ASC;"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TABLE_ID_COLUMN_NAME:Ljava/lang/String; = "table_id"

.field private static final TRIGGERS:[Ljava/lang/String;

.field private static final UPDATE_TABLE_NAME:Ljava/lang/String; = "room_table_modification_log"

.field private static final VERSION_COLUMN_NAME:Ljava/lang/String; = "version"


# instance fields
.field private volatile mCleanupStatement:Landroidx/sqlite/db/SupportSQLiteStatement;

.field private final mDatabase:Landroidx/room/RoomDatabase;

.field private volatile mInitialized:Z

.field private mMaxVersion:J

.field private mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

.field final mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/arch/core/internal/SafeIterableMap<",
            "Landroidx/room/InvalidationTracker$Observer;",
            "Landroidx/room/InvalidationTracker$ObserverWrapper;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mQueryArgs:[Ljava/lang/Object;

.field mRefreshRunnable:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mTableIdLookup:Landroidx/collection/ArrayMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTableNames:[Ljava/lang/String;

.field mTableVersions:[J
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    const-string v0, "UPDATE"

    const-string v1, "DELETE"

    const-string v2, "INSERT"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V
    .locals 7
    .param p1, "database"    # Landroidx/room/RoomDatabase;
    .param p2, "tableNames"    # [Ljava/lang/String;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mQueryArgs:[Ljava/lang/Object;

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/room/InvalidationTracker;->mMaxVersion:J

    .line 108
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Landroidx/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    iput-boolean v3, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    .line 117
    new-instance v2, Landroidx/arch/core/internal/SafeIterableMap;

    invoke-direct {v2}, Landroidx/arch/core/internal/SafeIterableMap;-><init>()V

    iput-object v2, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    .line 297
    new-instance v2, Landroidx/room/InvalidationTracker$1;

    invoke-direct {v2, p0}, Landroidx/room/InvalidationTracker$1;-><init>(Landroidx/room/InvalidationTracker;)V

    iput-object v2, p0, Landroidx/room/InvalidationTracker;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 128
    iput-object p1, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    .line 129
    new-instance v2, Landroidx/room/InvalidationTracker$ObservedTableTracker;

    array-length v4, p2

    invoke-direct {v2, v4}, Landroidx/room/InvalidationTracker$ObservedTableTracker;-><init>(I)V

    iput-object v2, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    .line 130
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    iput-object v2, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Landroidx/collection/ArrayMap;

    .line 131
    array-length v2, p2

    .line 132
    .local v2, "size":I
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    .line 133
    nop

    .local v3, "id":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 134
    aget-object v4, p2, v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "tableName":Ljava/lang/String;
    iget-object v5, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Landroidx/collection/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroidx/collection/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v5, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aput-object v4, v5, v3

    .line 133
    .end local v4    # "tableName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 138
    .end local v3    # "id":I
    :cond_0
    array-length v3, p2

    new-array v3, v3, [J

    iput-object v3, p0, Landroidx/room/InvalidationTracker;->mTableVersions:[J

    .line 139
    iget-object v3, p0, Landroidx/room/InvalidationTracker;->mTableVersions:[J

    invoke-static {v3, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Landroidx/room/InvalidationTracker;)Landroidx/room/RoomDatabase;
    .locals 1
    .param p0, "x0"    # Landroidx/room/InvalidationTracker;

    .line 63
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/room/InvalidationTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroidx/room/InvalidationTracker;

    .line 63
    invoke-direct {p0}, Landroidx/room/InvalidationTracker;->ensureInitialization()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroidx/room/InvalidationTracker;)Landroidx/sqlite/db/SupportSQLiteStatement;
    .locals 1
    .param p0, "x0"    # Landroidx/room/InvalidationTracker;

    .line 63
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mCleanupStatement:Landroidx/sqlite/db/SupportSQLiteStatement;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/room/InvalidationTracker;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroidx/room/InvalidationTracker;

    .line 63
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mQueryArgs:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/room/InvalidationTracker;)J
    .locals 2
    .param p0, "x0"    # Landroidx/room/InvalidationTracker;

    .line 63
    iget-wide v0, p0, Landroidx/room/InvalidationTracker;->mMaxVersion:J

    return-wide v0
.end method

.method static synthetic access$402(Landroidx/room/InvalidationTracker;J)J
    .locals 0
    .param p0, "x0"    # Landroidx/room/InvalidationTracker;
    .param p1, "x1"    # J

    .line 63
    iput-wide p1, p0, Landroidx/room/InvalidationTracker;->mMaxVersion:J

    return-wide p1
.end method

.method private static appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "triggerType"    # Ljava/lang/String;

    .line 171
    const-string v0, "`"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "room_table_modification_trigger_"

    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    .line 174
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "`"

    .line 176
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    return-void
.end method

.method private ensureInitialization()Z
    .locals 3

    .line 283
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 284
    return v1

    .line 286
    :cond_0
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    if-nez v0, :cond_1

    .line 288
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 290
    :cond_1
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    if-nez v0, :cond_2

    .line 291
    const-string v0, "ROOM"

    const-string v2, "database is not initialized even though it is open"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return v1

    .line 294
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private startTrackingTable(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V
    .locals 8
    .param p1, "writableDb"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .param p2, "tableId"    # I

    .line 191
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 192
    .local v0, "tableName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v2, Landroidx/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 194
    .local v6, "trigger":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 195
    const-string v7, "CREATE TEMP TRIGGER IF NOT EXISTS "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-static {v1, v0, v6}, Landroidx/room/InvalidationTracker;->appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v7, " AFTER "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ON `"

    .line 199
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "` BEGIN INSERT OR REPLACE INTO "

    .line 201
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "room_table_modification_log"

    .line 202
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " VALUES(null, "

    .line 203
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "); END"

    .line 205
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 193
    .end local v6    # "trigger":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method

.method private stopTrackingTable(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V
    .locals 8
    .param p1, "writableDb"    # Landroidx/sqlite/db/SupportSQLiteDatabase;
    .param p2, "tableId"    # I

    .line 180
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    aget-object v0, v0, p2

    .line 181
    .local v0, "tableName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v2, Landroidx/room/InvalidationTracker;->TRIGGERS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 183
    .local v6, "trigger":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 184
    const-string v7, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {v1, v0, v6}, Landroidx/room/InvalidationTracker;->appendTriggerName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 182
    .end local v6    # "trigger":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver(Landroidx/room/InvalidationTracker$Observer;)V
    .locals 9
    .param p1, "observer"    # Landroidx/room/InvalidationTracker$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 226
    iget-object v0, p1, Landroidx/room/InvalidationTracker$Observer;->mTables:[Ljava/lang/String;

    .line 227
    .local v0, "tableNames":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 228
    .local v1, "tableIds":[I
    array-length v2, v0

    .line 229
    .local v2, "size":I
    array-length v3, v0

    new-array v3, v3, [J

    .line 232
    .local v3, "versions":[J
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v4, "currentObserver":Landroidx/room/InvalidationTracker$ObserverWrapper;
    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 233
    .end local v4    # "currentObserver":Landroidx/room/InvalidationTracker$ObserverWrapper;
    iget-object v4, p0, Landroidx/room/InvalidationTracker;->mTableIdLookup:Landroidx/collection/ArrayMap;

    aget-object v6, v0, v5

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroidx/collection/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 234
    .local v4, "tableId":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 237
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v1, v5

    .line 238
    iget-wide v6, p0, Landroidx/room/InvalidationTracker;->mMaxVersion:J

    aput-wide v6, v3, v5

    .line 232
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 235
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There is no table with name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 240
    .end local v5    # "i":I
    .local v4, "currentObserver":Landroidx/room/InvalidationTracker$ObserverWrapper;
    :cond_1
    new-instance v5, Landroidx/room/InvalidationTracker$ObserverWrapper;

    invoke-direct {v5, p1, v1, v0, v3}, Landroidx/room/InvalidationTracker$ObserverWrapper;-><init>(Landroidx/room/InvalidationTracker$Observer;[I[Ljava/lang/String;[J)V

    .line 242
    .local v5, "wrapper":Landroidx/room/InvalidationTracker$ObserverWrapper;
    iget-object v6, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    monitor-enter v6

    .line 243
    :try_start_0
    iget-object v7, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v7, p1, v5}, Landroidx/arch/core/internal/SafeIterableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/room/InvalidationTracker$ObserverWrapper;

    .end local v4    # "currentObserver":Landroidx/room/InvalidationTracker$ObserverWrapper;
    move-object v4, v7

    .line 244
    .restart local v4    # "currentObserver":Landroidx/room/InvalidationTracker$ObserverWrapper;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    if-nez v4, :cond_2

    iget-object v6, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {v6, v1}, Landroidx/room/InvalidationTracker$ObservedTableTracker;->onAdded([I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 246
    invoke-virtual {p0}, Landroidx/room/InvalidationTracker;->syncTriggers()V

    .line 248
    :cond_2
    return-void

    .line 244
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public addWeakObserver(Landroidx/room/InvalidationTracker$Observer;)V
    .locals 1
    .param p1, "observer"    # Landroidx/room/InvalidationTracker$Observer;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 262
    new-instance v0, Landroidx/room/InvalidationTracker$WeakObserver;

    invoke-direct {v0, p0, p1}, Landroidx/room/InvalidationTracker$WeakObserver;-><init>(Landroidx/room/InvalidationTracker;Landroidx/room/InvalidationTracker$Observer;)V

    invoke-virtual {p0, v0}, Landroidx/room/InvalidationTracker;->addObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 263
    return-void
.end method

.method internalInit(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 2
    .param p1, "database"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 148
    monitor-enter p0

    .line 149
    :try_start_0
    iget-boolean v0, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "ROOM"

    const-string v1, "Invalidation tracker is initialized twice :/."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    monitor-exit p0

    return-void

    .line 154
    :cond_0
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    :try_start_1
    const-string v0, "PRAGMA temp_store = MEMORY;"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    const-string v0, "PRAGMA recursive_triggers=\'ON\';"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    const-string v0, "CREATE TEMP TABLE room_table_modification_log(version INTEGER PRIMARY KEY AUTOINCREMENT, table_id INTEGER)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 159
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :try_start_2
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 162
    nop

    .line 163
    invoke-virtual {p0, p1}, Landroidx/room/InvalidationTracker;->syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 164
    const-string v0, "DELETE FROM room_table_modification_log WHERE version NOT IN( SELECT MAX(version) FROM room_table_modification_log GROUP BY table_id)"

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Landroidx/room/InvalidationTracker;->mCleanupStatement:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/room/InvalidationTracker;->mInitialized:Z

    .line 166
    monitor-exit p0

    .line 167
    return-void

    .line 161
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    throw v0

    .line 166
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public refreshVersionsAsync()V
    .locals 3

    .line 385
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mPendingRefresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Landroidx/room/InvalidationTracker;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroidx/arch/core/executor/ArchTaskExecutor;->executeOnDiskIO(Ljava/lang/Runnable;)V

    .line 388
    :cond_0
    return-void
.end method

.method public refreshVersionsSync()V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 398
    invoke-virtual {p0}, Landroidx/room/InvalidationTracker;->syncTriggers()V

    .line 399
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 400
    return-void
.end method

.method public removeObserver(Landroidx/room/InvalidationTracker$Observer;)V
    .locals 3
    .param p1, "observer"    # Landroidx/room/InvalidationTracker$Observer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 274
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    monitor-enter v0

    .line 275
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroidx/room/InvalidationTracker;->mObserverMap:Landroidx/arch/core/internal/SafeIterableMap;

    invoke-virtual {v2, p1}, Landroidx/arch/core/internal/SafeIterableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/InvalidationTracker$ObserverWrapper;

    move-object v1, v2

    .line 276
    .local v1, "wrapper":Landroidx/room/InvalidationTracker$ObserverWrapper;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    if-eqz v1, :cond_0

    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    iget-object v2, v1, Landroidx/room/InvalidationTracker$ObserverWrapper;->mTableIds:[I

    invoke-virtual {v0, v2}, Landroidx/room/InvalidationTracker$ObservedTableTracker;->onRemoved([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0}, Landroidx/room/InvalidationTracker;->syncTriggers()V

    .line 280
    :cond_0
    return-void

    .line 276
    .end local v1    # "wrapper":Landroidx/room/InvalidationTracker$ObserverWrapper;
    :catchall_0
    move-exception v2

    .restart local v1    # "wrapper":Landroidx/room/InvalidationTracker$ObserverWrapper;
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method syncTriggers()V
    .locals 1

    .line 458
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 459
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/room/InvalidationTracker;->syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 462
    return-void
.end method

.method syncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 5
    .param p1, "database"    # Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 403
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    return-void

    .line 411
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroidx/room/InvalidationTracker;->mDatabase:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getCloseLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 412
    .local v0, "closeLock":Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :try_start_1
    iget-object v1, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {v1}, Landroidx/room/InvalidationTracker$ObservedTableTracker;->getTablesToSync()[I

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 417
    .local v1, "tablesToSync":[I
    if-nez v1, :cond_1

    .line 439
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 418
    return-void

    .line 420
    :cond_1
    :try_start_3
    array-length v2, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 422
    .local v2, "limit":I
    :try_start_4
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 423
    const/4 v3, 0x0

    .local v3, "tableId":I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 424
    aget v4, v1, v3

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    .line 429
    :pswitch_0
    invoke-direct {p0, p1, v3}, Landroidx/room/InvalidationTracker;->stopTrackingTable(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V

    goto :goto_2

    .line 426
    :pswitch_1
    invoke-direct {p0, p1, v3}, Landroidx/room/InvalidationTracker;->startTrackingTable(Landroidx/sqlite/db/SupportSQLiteDatabase;I)V

    .line 427
    nop

    .line 423
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 433
    .end local v3    # "tableId":I
    :cond_2
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 435
    :try_start_5
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 436
    nop

    .line 437
    iget-object v3, p0, Landroidx/room/InvalidationTracker;->mObservedTableTracker:Landroidx/room/InvalidationTracker$ObservedTableTracker;

    invoke-virtual {v3}, Landroidx/room/InvalidationTracker$ObservedTableTracker;->onSyncCompleted()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 439
    .end local v1    # "tablesToSync":[I
    .end local v2    # "limit":I
    :try_start_6
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 440
    nop

    .line 441
    .end local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    goto :goto_0

    .line 435
    .restart local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    .restart local v1    # "tablesToSync":[I
    .restart local v2    # "limit":I
    :catchall_0
    move-exception v3

    :try_start_7
    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 439
    .end local v1    # "tablesToSync":[I
    .end local v2    # "limit":I
    :catchall_1
    move-exception v1

    :try_start_8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 442
    .end local v0    # "closeLock":Ljava/util/concurrent/locks/Lock;
    :catch_0
    move-exception v0

    .line 444
    .local v0, "exception":Ljava/lang/RuntimeException;
    const-string v1, "ROOM"

    const-string v2, "Cannot run invalidation tracker. Is the db closed?"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v0    # "exception":Ljava/lang/RuntimeException;
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
