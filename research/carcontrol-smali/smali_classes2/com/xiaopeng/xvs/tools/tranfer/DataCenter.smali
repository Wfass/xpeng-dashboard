.class final Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;
.super Ljava/lang/Object;
.source "DataCenter.java"


# static fields
.field static final DATABASE_NAME:Ljava/lang/String; = "sync_db_v1.db"

.field static final DB_VERSION:I = 0x1

.field private static final DB_VERSION_BASE:I = 0x1

.field static final TABLE_SYNC_DATA:Ljava/lang/String; = "sync_data"

.field private static final TAG:Ljava/lang/String; = "DataCenter"


# instance fields
.field private mDatabase:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB;

.field private final mInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;->mInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private getMigrations()[Landroidx/room/migration/Migration;
    .locals 2

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Landroidx/room/migration/Migration;

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/room/migration/Migration;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;->mInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;->mDatabase:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB;->close()V

    :cond_0
    return-void
.end method

.method public getSyncDataDao()Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;->mDatabase:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB;

    invoke-virtual {v0}, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB;->getSyncDataDao()Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDao;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/app/Application;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;->mInitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB;

    const-string/jumbo v1, "sync_db_v1.db"

    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;->getMigrations()[Landroidx/room/migration/Migration;

    move-result-object v0

    .line 31
    array-length v1, v0

    if-lez v1, :cond_0

    .line 32
    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase$Builder;->addMigrations([Landroidx/room/migration/Migration;)Landroidx/room/RoomDatabase$Builder;

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB;

    iput-object p1, p0, Lcom/xiaopeng/xvs/tools/tranfer/DataCenter;->mDatabase:Lcom/xiaopeng/xvs/tools/tranfer/SyncDataDB;

    :cond_1
    return-void
.end method
