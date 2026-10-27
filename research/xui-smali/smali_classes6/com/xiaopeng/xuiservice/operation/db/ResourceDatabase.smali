.class public abstract Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;
.super Landroidx/room/RoomDatabase;
.source "ResourceDatabase.java"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;,
        Lcom/xiaopeng/xuiservice/operation/db/SelectedInfo;,
        Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBinding;,
        Lcom/xiaopeng/xuiservice/operation/db/SelectTime;
    }
    exportSchema = false
    version = 0x5
.end annotation


# static fields
.field static final MIGRATION_2_3:Landroidx/room/migration/Migration;

.field static final MIGRATION_3_4:Landroidx/room/migration/Migration;

.field static final MIGRATION_4_5:Landroidx/room/migration/Migration;

.field private static final TAG:Ljava/lang/String; = "ResourceDatabase"

.field private static volatile mInstance:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase$1;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase$1;-><init>(II)V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    .line 56
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase$2;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase$2;-><init>(II)V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->MIGRATION_3_4:Landroidx/room/migration/Migration;

    .line 68
    new-instance v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase$3;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase$3;-><init>(II)V

    sput-object v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->MIGRATION_4_5:Landroidx/room/migration/Migration;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static getDatabase(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 31
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->mInstance:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;

    if-nez v0, :cond_1

    .line 32
    const-class v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->mInstance:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;

    if-nez v1, :cond_0

    .line 34
    const-string v1, "ResourceDatabase"

    const-string v2, "room database build"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-class v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;

    const-string v2, "operation.db"

    invoke-static {p0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Landroidx/room/migration/Migration;

    sget-object v4, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->MIGRATION_2_3:Landroidx/room/migration/Migration;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 38
    invoke-virtual {v1, v3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    new-array v3, v2, [Landroidx/room/migration/Migration;

    sget-object v4, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->MIGRATION_3_4:Landroidx/room/migration/Migration;

    aput-object v4, v3, v5

    .line 39
    invoke-virtual {v1, v3}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    new-array v2, v2, [Landroidx/room/migration/Migration;

    sget-object v3, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->MIGRATION_4_5:Landroidx/room/migration/Migration;

    aput-object v3, v2, v5

    .line 40
    invoke-virtual {v1, v2}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;

    sput-object v1, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->mInstance:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;->mInstance:Lcom/xiaopeng/xuiservice/operation/db/ResourceDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract resourceAccountBindingDao()Lcom/xiaopeng/xuiservice/operation/db/ResourceAccountBindingDao;
.end method

.method public abstract resourceDao()Lcom/xiaopeng/xuiservice/operation/db/ResourceDao;
.end method

.method public abstract selectedDao()Lcom/xiaopeng/xuiservice/operation/db/SelectedDao;
.end method
