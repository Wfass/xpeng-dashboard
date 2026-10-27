.class Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;
.super Lcom/xiaopeng/xvs/xid/base/IClient;
.source "SyncProviderImpl.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/sync/api/ISync;


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncProviderImpl"

.field private static volatile mInstance:Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;


# instance fields
.field private final cls:Ljava/lang/String;

.field private final mAiAssistantSync:Lcom/xiaopeng/xvs/xid/sync/api/IAiAssistantSync;

.field private final mCarCameraSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarCameraSync;

.field private final mCarControlSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarControlSync;

.field private final mCarDemoSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarDemoSync;

.field private final mCarDvrSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarDvrSync;

.field private final mCarSettingsSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarSettingsSync;

.field private final mContextWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

.field private final mSystemUiSync:Lcom/xiaopeng/xvs/xid/sync/api/ISystemUiSync;

.field private final pkg:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/xvs/xid/base/IClient;-><init>()V

    const-string v0, "com.xiaopeng.caraccount"

    .line 46
    iput-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->pkg:Ljava/lang/String;

    const-string v0, "com.xiaopeng.caraccount.AccountService"

    .line 47
    iput-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->cls:Ljava/lang/String;

    const-string v0, "SyncProviderImpl"

    const-string v1, "SyncProviderImpl onCreate true"

    .line 51
    invoke-static {v0, v1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    .line 53
    new-instance v1, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarControlSyncImpl;-><init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)V

    iput-object v1, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mCarControlSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarControlSync;

    .line 54
    new-instance v1, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xvs/xid/sync/AiAssistantSyncImpl;-><init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)V

    iput-object v1, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mAiAssistantSync:Lcom/xiaopeng/xvs/xid/sync/api/IAiAssistantSync;

    .line 55
    new-instance v1, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarCameraSyncImpl;-><init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)V

    iput-object v1, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mCarCameraSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarCameraSync;

    .line 56
    new-instance v1, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDvrSyncImpl;-><init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)V

    iput-object v1, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mCarDvrSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarDvrSync;

    .line 57
    new-instance v1, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarSettingsSyncImpl;-><init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)V

    iput-object v1, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mCarSettingsSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarSettingsSync;

    .line 58
    new-instance v1, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xvs/xid/sync/CarDemoSyncImpl;-><init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)V

    iput-object v1, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mCarDemoSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarDemoSync;

    .line 59
    new-instance v1, Lcom/xiaopeng/xvs/xid/sync/SystemUiSyncImpl;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xvs/xid/sync/SystemUiSyncImpl;-><init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;)V

    iput-object v1, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mSystemUiSync:Lcom/xiaopeng/xvs/xid/sync/api/ISystemUiSync;

    return-void
.end method

.method static getInstance()Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;
    .locals 2

    .line 64
    sget-object v0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mInstance:Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;

    if-nez v0, :cond_1

    .line 65
    const-class v0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;

    monitor-enter v0

    .line 66
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mInstance:Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;

    invoke-direct {v1}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;-><init>()V

    sput-object v1, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mInstance:Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;

    .line 69
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 71
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mInstance:Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;

    return-object v0
.end method


# virtual methods
.method public applyClearRemoteHabitData()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->applyClearRemoteHabitData()V

    return-void
.end method

.method public getAiAssistantSync()Lcom/xiaopeng/xvs/xid/sync/api/IAiAssistantSync;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mAiAssistantSync:Lcom/xiaopeng/xvs/xid/sync/api/IAiAssistantSync;

    return-object v0
.end method

.method public getCarCameraSync()Lcom/xiaopeng/xvs/xid/sync/api/ICarCameraSync;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mCarCameraSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarCameraSync;

    return-object v0
.end method

.method public getCarControlSync()Lcom/xiaopeng/xvs/xid/sync/api/ICarControlSync;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mCarControlSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarControlSync;

    return-object v0
.end method

.method public getCarDemo()Lcom/xiaopeng/xvs/xid/sync/api/ICarDemoSync;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mCarDemoSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarDemoSync;

    return-object v0
.end method

.method public getCarDvrSync()Lcom/xiaopeng/xvs/xid/sync/api/ICarDvrSync;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mCarDvrSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarDvrSync;

    return-object v0
.end method

.method public getCarSettingsSync()Lcom/xiaopeng/xvs/xid/sync/api/ICarSettingsSync;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mCarSettingsSync:Lcom/xiaopeng/xvs/xid/sync/api/ICarSettingsSync;

    return-object v0
.end method

.method public getCurrentHabitSum()I
    .locals 4

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    const-string v1, "sync_habit_sum"

    const-string v2, "get_cashier"

    const-string v3, "0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->getCashier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDefaultBindHabitType()I
    .locals 1

    .line 259
    sget v0, Lcom/xiaopeng/xvs/xid/XId;->sDefaultIsBindHabit:I

    return v0
.end method

.method public getHabitList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    const-string v1, "sync_group"

    const-string v2, "get_cashier"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->getCashier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl$1;-><init>(Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;)V

    invoke-virtual {v2}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getSystemUiSync()Lcom/xiaopeng/xvs/xid/sync/api/ISystemUiSync;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mSystemUiSync:Lcom/xiaopeng/xvs/xid/sync/api/ISystemUiSync;

    return-object v0
.end method

.method public getVehicleUserBindTime()Ljava/lang/String;
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    const-string v1, "key_vehicle_user_info"

    const-string v2, "get_cashier"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->getCashier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "createTime"

    .line 240
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SyncProviderImpl"

    invoke-static {v3, v2}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v1
.end method

.method public getVehicleUserInfo()Ljava/lang/String;
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    const-string v1, "key_vehicle_user_info"

    const-string v2, "get_cashier"

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->getCashier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->init()V

    return-void
.end method

.method public removeSyncChangedListener()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->removeSyncChangedListener()V

    return-void
.end method

.method public requestCreateNewSyncGroup()V
    .locals 4

    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaopeng.caraccount"

    const-string v3, "com.xiaopeng.caraccount.AccountService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.xiaopeng.xvs.sync.ACTION_SERVICE_REQ_SYNC_GROUP_CREATE"

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public requestDeleteSyncGroup(Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "habit"
        }
    .end annotation

    .line 219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 220
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaopeng.caraccount"

    const-string v3, "com.xiaopeng.caraccount.AccountService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.xiaopeng.xvs.sync.ACTION_SERVICE_REQ_SYNC_GROUP_DELETE"

    .line 221
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "extra_rename_habit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public requestRenameSyncGroup(Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "habit",
            "rename"
        }
    .end annotation

    .line 208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 209
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaopeng.caraccount"

    const-string v3, "com.xiaopeng.caraccount.AccountService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.xiaopeng.xvs.sync.ACTION_SERVICE_REQ_SYNC_GROUP_RENAME"

    .line 210
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "extra_rename_habit"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_rename_string"

    .line 213
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public requestSelectSyncGroupIndex(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaopeng.caraccount"

    const-string v3, "com.xiaopeng.caraccount.AccountService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.xiaopeng.xvs.sync.ACTION_SERVICE_REQ_SYNC_GROUP_SELECT"

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_name_group_index"

    .line 169
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public requestTrafficBuy()V
    .locals 4

    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 252
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaopeng.caraccount"

    const-string v3, "com.xiaopeng.caraccount.AccountService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.xiaopeng.xvs.sync.ACTION_SERVICE_REQ_TRAFFIC_BUY"

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public setSyncChangedListener(Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "listener",
            "callImmediately"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->mContextWrapper:Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderWrapper;->setSyncChangedListener(Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;Z)V

    return-void
.end method
