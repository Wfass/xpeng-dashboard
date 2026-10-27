.class Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase$1;
.super Landroid/util/Singleton;
.source "OperationKeyValueDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;
    .locals 3

    .line 27
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;

    const-string v2, "operation-key-value.db"

    invoke-static {v0, v1, v2}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->fallbackToDestructiveMigration()Landroidx/room/RoomDatabase$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;

    .line 31
    .local v0, "database":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;
    const-string/jumbo v1, "xpKeyValue"

    const-string v2, "create OperationKeyValueDatabase success"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object v0

    .line 33
    .end local v0    # "database":Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "xpKeyValue"

    const-string v2, "create OperationKeyValueDatabase"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase$1;->create()Lcom/xiaopeng/xuiservice/operation/db/OperationKeyValueDatabase;

    move-result-object v0

    return-object v0
.end method
