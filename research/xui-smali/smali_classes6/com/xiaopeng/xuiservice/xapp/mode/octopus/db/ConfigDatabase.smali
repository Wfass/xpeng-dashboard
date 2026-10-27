.class public abstract Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;
.super Landroidx/room/RoomDatabase;
.source "ConfigDatabase.java"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;
    }
    exportSchema = false
    version = 0x1
.end annotation


# static fields
.field private static final NUMBER_OF_THREADS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ConfigDatabase"

.field public static final databaseWriteExecutor:Ljava/util/concurrent/ExecutorService;

.field private static volatile mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    nop

    .line 23
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->databaseWriteExecutor:Ljava/util/concurrent/ExecutorService;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static getDatabase(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 26
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;

    if-nez v0, :cond_1

    .line 27
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;

    monitor-enter v0

    .line 28
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;

    if-nez v1, :cond_0

    .line 29
    const-string v1, "ConfigDatabase"

    const-string v2, "room database build"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-class v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;

    const-string v2, "keyconfig.db"

    invoke-static {p0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;

    .line 34
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 36
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract keyConfigDao()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;
.end method
