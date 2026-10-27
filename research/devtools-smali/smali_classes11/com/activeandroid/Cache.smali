.class public final Lcom/activeandroid/Cache;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field public static final DEFAULT_CACHE_SIZE:I = 0x400

.field private static sContext:Landroid/content/Context;

.field private static sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

.field private static sEntities:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/activeandroid/Model;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsInitialized:Z

.field private static sModelInfo:Lcom/activeandroid/ModelInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/activeandroid/Cache;->sIsInitialized:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static declared-synchronized addEntity(Lcom/activeandroid/Model;)V
    .locals 3

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 130
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sEntities:Landroid/support/v4/util/LruCache;

    invoke-static {p0}, Lcom/activeandroid/Cache;->getIdentifier(Lcom/activeandroid/Model;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit v0

    return-void

    .line 129
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sEntities:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 84
    const-string v1, "Cache cleared."

    invoke-static {v1}, Lcom/activeandroid/util/Log;->v(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit v0

    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized closeDatabase()V
    .locals 2

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

    invoke-virtual {v1}, Lcom/activeandroid/DatabaseHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit v0

    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized dispose()V
    .locals 2

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 88
    :try_start_0
    invoke-static {}, Lcom/activeandroid/Cache;->closeDatabase()V

    .line 90
    const/4 v1, 0x0

    sput-object v1, Lcom/activeandroid/Cache;->sEntities:Landroid/support/v4/util/LruCache;

    .line 91
    sput-object v1, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    .line 92
    sput-object v1, Lcom/activeandroid/Cache;->sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

    .line 94
    const/4 v1, 0x0

    sput-boolean v1, Lcom/activeandroid/Cache;->sIsInitialized:Z

    .line 96
    const-string v1, "ActiveAndroid disposed. Call initialize to use library."

    invoke-static {v1}, Lcom/activeandroid/util/Log;->v(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit v0

    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 116
    sget-object v0, Lcom/activeandroid/Cache;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized getEntity(Ljava/lang/Class;J)Lcom/activeandroid/Model;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;J)",
            "Lcom/activeandroid/Model;"
        }
    .end annotation

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sEntities:Landroid/support/v4/util/LruCache;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/activeandroid/Cache;->getIdentifier(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/activeandroid/Model;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getIdentifier(Lcom/activeandroid/Model;)Ljava/lang/String;
    .locals 1

    .line 126
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/activeandroid/Model;->getId()Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/activeandroid/Cache;->getIdentifier(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIdentifier(Ljava/lang/Class;Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/activeandroid/Cache;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getParserForType(Ljava/lang/Class;)Lcom/activeandroid/serializer/TypeSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/activeandroid/serializer/TypeSerializer;"
        }
    .end annotation

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 152
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    invoke-virtual {v1, p0}, Lcom/activeandroid/ModelInfo;->getTypeSerializer(Ljava/lang/Class;)Lcom/activeandroid/serializer/TypeSerializer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Lcom/activeandroid/TableInfo;"
        }
    .end annotation

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 148
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    invoke-virtual {v1, p0}, Lcom/activeandroid/ModelInfo;->getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getTableInfos()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/activeandroid/TableInfo;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 144
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    invoke-virtual {v1}, Lcom/activeandroid/ModelInfo;->getTableInfos()Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/activeandroid/Model;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 156
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    invoke-virtual {v1, p0}, Lcom/activeandroid/ModelInfo;->getTableInfo(Ljava/lang/Class;)Lcom/activeandroid/TableInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/activeandroid/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initialize(Lcom/activeandroid/Configuration;)V
    .locals 2

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-boolean v1, Lcom/activeandroid/Cache;->sIsInitialized:Z

    if-eqz v1, :cond_0

    .line 61
    const-string p0, "ActiveAndroid already initialized."

    invoke-static {p0}, Lcom/activeandroid/util/Log;->v(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v0

    return-void

    .line 65
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/activeandroid/Configuration;->getContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/activeandroid/Cache;->sContext:Landroid/content/Context;

    .line 66
    new-instance v1, Lcom/activeandroid/ModelInfo;

    invoke-direct {v1, p0}, Lcom/activeandroid/ModelInfo;-><init>(Lcom/activeandroid/Configuration;)V

    sput-object v1, Lcom/activeandroid/Cache;->sModelInfo:Lcom/activeandroid/ModelInfo;

    .line 67
    new-instance v1, Lcom/activeandroid/DatabaseHelper;

    invoke-direct {v1, p0}, Lcom/activeandroid/DatabaseHelper;-><init>(Lcom/activeandroid/Configuration;)V

    sput-object v1, Lcom/activeandroid/Cache;->sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

    .line 73
    new-instance v1, Landroid/support/v4/util/LruCache;

    invoke-virtual {p0}, Lcom/activeandroid/Configuration;->getCacheSize()I

    move-result p0

    invoke-direct {v1, p0}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v1, Lcom/activeandroid/Cache;->sEntities:Landroid/support/v4/util/LruCache;

    .line 75
    invoke-static {}, Lcom/activeandroid/Cache;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 77
    const/4 p0, 0x1

    sput-boolean p0, Lcom/activeandroid/Cache;->sIsInitialized:Z

    .line 79
    const-string p0, "ActiveAndroid initialized successfully."

    invoke-static {p0}, Lcom/activeandroid/util/Log;->v(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    monitor-exit v0

    return-void

    .line 59
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isInitialized()Z
    .locals 1

    .line 102
    sget-boolean v0, Lcom/activeandroid/Cache;->sIsInitialized:Z

    return v0
.end method

.method public static declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sDatabaseHelper:Lcom/activeandroid/DatabaseHelper;

    invoke-virtual {v1}, Lcom/activeandroid/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized removeEntity(Lcom/activeandroid/Model;)V
    .locals 2

    const-class v0, Lcom/activeandroid/Cache;

    monitor-enter v0

    .line 138
    :try_start_0
    sget-object v1, Lcom/activeandroid/Cache;->sEntities:Landroid/support/v4/util/LruCache;

    invoke-static {p0}, Lcom/activeandroid/Cache;->getIdentifier(Lcom/activeandroid/Model;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit v0

    return-void

    .line 137
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
