.class public interface abstract Lcom/xiaopeng/xvs/xid/sync/api/ISync;
.super Ljava/lang/Object;
.source "ISync.java"


# static fields
.field public static final ACTION_SERVICE_REQ_SYNC_GROUP_CREATE:Ljava/lang/String; = "com.xiaopeng.xvs.sync.ACTION_SERVICE_REQ_SYNC_GROUP_CREATE"

.field public static final ACTION_SERVICE_REQ_SYNC_GROUP_DELETE:Ljava/lang/String; = "com.xiaopeng.xvs.sync.ACTION_SERVICE_REQ_SYNC_GROUP_DELETE"

.field public static final ACTION_SERVICE_REQ_SYNC_GROUP_RENAME:Ljava/lang/String; = "com.xiaopeng.xvs.sync.ACTION_SERVICE_REQ_SYNC_GROUP_RENAME"

.field public static final ACTION_SERVICE_REQ_SYNC_GROUP_SELECT:Ljava/lang/String; = "com.xiaopeng.xvs.sync.ACTION_SERVICE_REQ_SYNC_GROUP_SELECT"

.field public static final ACTION_SERVICE_REQ_TRAFFIC_BUY:Ljava/lang/String; = "com.xiaopeng.xvs.sync.ACTION_SERVICE_REQ_TRAFFIC_BUY"

.field public static final EXTRA_NAME_APP_ID:Ljava/lang/String; = "extra_name_app_id"

.field public static final EXTRA_NAME_CURRENT_HABIT_RELOAD_STATE:Ljava/lang/String; = "extra_name_current_habit_reload_state"

.field public static final EXTRA_NAME_GROUP_INDEX:Ljava/lang/String; = "extra_name_group_index"

.field public static final EXTRA_NAME_HABIT:Ljava/lang/String; = "extra_rename_habit"

.field public static final EXTRA_NAME_IS_BIND_HABIT:Ljava/lang/String; = "extra_name_is_bind_habit"

.field public static final EXTRA_NAME_KEY:Ljava/lang/String; = "extra_name_key"

.field public static final EXTRA_NAME_VALUE:Ljava/lang/String; = "extra_name_value"

.field public static final EXTRA_RENAME_STRING:Ljava/lang/String; = "extra_rename_string"

.field public static final EXTRA_SYNC_GENERAL_KEY_SUFFIX:Ljava/lang/String; = "general"

.field public static final EXTRA_SYNC_GROUP_KEY_SEPARATOR:Ljava/lang/String; = "@"

.field public static final EXTRA_SYNC_GROUP_KEY_SUFFIX:Ljava/lang/String; = "group"

.field public static final EXTRA_SYNC_OTHER_KEY_SUFFIX:Ljava/lang/String; = "other"

.field public static final KEY_SYNC_USER_GENERAL:Ljava/lang/String; = "USER_GENERAL"

.field public static final KEY_VEHICLE_USER_INFO:Ljava/lang/String; = "key_vehicle_user_info"

.field public static final PROVIDER_ACCOUNT_SYNC_AUTHORITY:Ljava/lang/String; = "com.xiaopeng.caraccount.sync.AUTHORITY_TYPE_XP_PROVIDER"

.field public static final SYNC_CALL_CASHIER_KEY_GET:Ljava/lang/String; = "get_cashier"

.field public static final SYNC_CALL_METHOD_CLEAR_REMOTE_HABIT_DATA:Ljava/lang/String; = "clear_remote_habit_data"

.field public static final SYNC_CALL_METHOD_GET:Ljava/lang/String; = "get"

.field public static final SYNC_CALL_METHOD_GET_CASHIER_HABIT:Ljava/lang/String; = "sync_group"

.field public static final SYNC_CALL_METHOD_GET_CASHIER_HABIT_SUM:Ljava/lang/String; = "sync_habit_sum"

.field public static final SYNC_CALL_METHOD_GET_GENERAL:Ljava/lang/String; = "get_general"

.field public static final SYNC_CALL_METHOD_GET_INIT_COMPLETE:Ljava/lang/String; = "get_init_complete"

.field public static final SYNC_CALL_METHOD_PUT:Ljava/lang/String; = "put"

.field public static final SYNC_CALL_METHOD_PUT_INDEX:Ljava/lang/String; = "put_index"

.field public static final SYNC_CALL_METHOD_SET_CURRENT_HABIT_RELOAD_STATE:Ljava/lang/String; = "set_current_habit_reload_state"

.field public static final SYNC_CALL_METHOD_SET_GENERAL:Ljava/lang/String; = "set_general"

.field public static final SYNC_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.xiaopeng.caraccount.sync.AUTHORITY_TYPE_XP_PROVIDER/"

    .line 59
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xvs/xid/sync/api/ISync;->SYNC_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract applyClearRemoteHabitData()V
.end method

.method public abstract getAiAssistantSync()Lcom/xiaopeng/xvs/xid/sync/api/IAiAssistantSync;
.end method

.method public abstract getCarCameraSync()Lcom/xiaopeng/xvs/xid/sync/api/ICarCameraSync;
.end method

.method public abstract getCarControlSync()Lcom/xiaopeng/xvs/xid/sync/api/ICarControlSync;
.end method

.method public abstract getCarDemo()Lcom/xiaopeng/xvs/xid/sync/api/ICarDemoSync;
.end method

.method public abstract getCarDvrSync()Lcom/xiaopeng/xvs/xid/sync/api/ICarDvrSync;
.end method

.method public abstract getCarSettingsSync()Lcom/xiaopeng/xvs/xid/sync/api/ICarSettingsSync;
.end method

.method public abstract getCurrentHabitSum()I
.end method

.method public abstract getDefaultBindHabitType()I
.end method

.method public abstract getHabitList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSystemUiSync()Lcom/xiaopeng/xvs/xid/sync/api/ISystemUiSync;
.end method

.method public abstract getVehicleUserBindTime()Ljava/lang/String;
.end method

.method public abstract getVehicleUserInfo()Ljava/lang/String;
.end method

.method public abstract init()V
.end method

.method public abstract removeSyncChangedListener()V
.end method

.method public abstract requestCreateNewSyncGroup()V
.end method

.method public abstract requestDeleteSyncGroup(Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "habit"
        }
    .end annotation
.end method

.method public abstract requestRenameSyncGroup(Lcom/xiaopeng/xvs/xid/sync/api/SyncGroup;Ljava/lang/String;)V
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
.end method

.method public abstract requestSelectSyncGroupIndex(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation
.end method

.method public abstract requestTrafficBuy()V
.end method

.method public abstract setSyncChangedListener(Lcom/xiaopeng/xvs/xid/sync/api/OnSyncChangedListener;Z)V
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
.end method
