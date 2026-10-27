.class public abstract Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppInfoDatabase.java"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoEntity;
    }
    exportSchema = false
    version = 0x1
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppInfoDatabase"

.field private static volatile mInstance:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static getDatabase(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 19
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;->mInstance:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;

    if-nez v0, :cond_1

    .line 20
    const-class v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;->mInstance:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;

    if-nez v1, :cond_0

    .line 22
    const-string v1, "AppInfoDatabase"

    const-string v2, "create app operation database..."

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-class v1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;

    const-string v2, "appinfo.db"

    invoke-static {p0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;

    sput-object v1, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;->mInstance:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;

    .line 26
    const-string v1, "AppInfoDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "database path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "appinfo.db"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 30
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;->mInstance:Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDatabase;

    return-object v0
.end method


# virtual methods
.method public abstract appInfoDao()Lcom/xiaopeng/xuiservice/applist/operation/db/AppInfoDao;
.end method
