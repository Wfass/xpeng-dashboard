.class public final Lcom/xiaopeng/xvs/xid/XId;
.super Ljava/lang/Object;
.source "XId.java"


# static fields
.field public static final APP_ID_AI_ASSISTANT:Ljava/lang/String;

.field public static final APP_ID_CAR_ACCOUNT:Ljava/lang/String; = "xp_car_cashier"

.field public static final APP_ID_CAR_CAMERA:Ljava/lang/String;

.field public static final APP_ID_CAR_CONTROL:Ljava/lang/String;

.field public static final APP_ID_CAR_DEMO:Ljava/lang/String;

.field public static final APP_ID_CAR_DVR:Ljava/lang/String;

.field public static final APP_ID_CAR_SETTINGS:Ljava/lang/String;

.field public static final APP_ID_CAR_SETTINGS_D21:Ljava/lang/String;

.field public static final APP_ID_SEPARATOR:Ljava/lang/String; = "@"

.field private static APP_ID_SUFFIX:Ljava/lang/String; = ""

.field public static final APP_ID_SYSTEM_UI:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "XId"

.field private static sAccountManager:Landroid/accounts/AccountManager;

.field private static sAppId:Ljava/lang/String;

.field private static sAppSecret:Ljava/lang/String;

.field private static sApplication:Landroid/app/Application;

.field private static sCarType:Ljava/lang/String;

.field public static sDefaultIsBindHabit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xp_car_setting_car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getXOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_CONTROL:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xp_system_setting_car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getXOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_SETTINGS_D21:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xp_car_setting_syn"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getXOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_SETTINGS:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xp_voice_assistant_car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getXOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_AI_ASSISTANT:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xp_car_camera_car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getXOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_CAMERA:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xp_car_dvr_car"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getXOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_DVR:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xp_car_sync_demo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getXOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_CAR_DEMO:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xp_system_ui"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getXOSVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_SYSTEM_UI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;
    .locals 1

    .line 161
    invoke-static {}, Lcom/xiaopeng/xvs/xid/account/AccountApi;->getApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    return-object v0
.end method

.method public static getAccountManager()Landroid/accounts/AccountManager;
    .locals 2

    .line 152
    sget-object v0, Lcom/xiaopeng/xvs/xid/XId;->sAccountManager:Landroid/accounts/AccountManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "XId must be call XId.init()!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 2

    .line 120
    sget-object v0, Lcom/xiaopeng/xvs/xid/XId;->sAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lcom/xiaopeng/xvs/xid/XId;->sAppId:Ljava/lang/String;

    return-object v0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "XId must be call XId.init()!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAppSecret()Ljava/lang/String;
    .locals 2

    .line 129
    sget-object v0, Lcom/xiaopeng/xvs/xid/XId;->sAppSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    sget-object v0, Lcom/xiaopeng/xvs/xid/XId;->sAppSecret:Ljava/lang/String;

    return-object v0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "XId must be call XId.init()!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 2

    .line 111
    sget-object v0, Lcom/xiaopeng/xvs/xid/XId;->sApplication:Landroid/app/Application;

    if-eqz v0, :cond_0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "XId must be call XId.init()!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCarType()Ljava/lang/String;
    .locals 3

    .line 139
    sget-object v0, Lcom/xiaopeng/xvs/xid/XId;->sCarType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    sget-object v0, Lcom/xiaopeng/xvs/xid/XId;->sCarType:Ljava/lang/String;

    return-object v0

    .line 143
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->getProductModel()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xvs/xid/XId;->sCarType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCarType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XId"

    invoke-static {v1, v0}, Lcom/xiaopeng/xvs/xid/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    sget-object v0, Lcom/xiaopeng/xvs/xid/XId;->sCarType:Ljava/lang/String;

    return-object v0
.end method

.method public static getOAuthApi()Lcom/xiaopeng/xvs/xid/auth/api/IOAuth;
    .locals 1

    .line 171
    invoke-static {}, Lcom/xiaopeng/xvs/xid/auth/OAuthApi;->getApi()Lcom/xiaopeng/xvs/xid/auth/api/IOAuth;

    move-result-object v0

    return-object v0
.end method

.method public static getRemoteConfigApi()Lcom/xiaopeng/xvs/xid/config/api/IRemoteConfig;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSyncApi()Lcom/xiaopeng/xvs/xid/sync/api/ISync;
    .locals 1

    .line 166
    invoke-static {}, Lcom/xiaopeng/xvs/xid/sync/SyncApi;->getApi()Lcom/xiaopeng/xvs/xid/sync/api/ISync;

    move-result-object v0

    return-object v0
.end method

.method public static getVIN()Ljava/lang/String;
    .locals 3

    const-string v0, "persist.sys.xiaopeng.vin"

    const-string v1, ""

    .line 52
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "sys.xiaopeng.vin"

    .line 54
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getXOSVersion()Ljava/lang/String;
    .locals 4

    .line 65
    sget-object v0, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_SUFFIX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    sget-object v0, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_SUFFIX:Ljava/lang/String;

    return-object v0

    .line 68
    :cond_0
    sget v0, Lcom/xiaopeng/os/BuildOption$Version;->VERSION_CODE:I

    .line 69
    sget-object v1, Lcom/xiaopeng/os/BuildOption$Version;->VERSION_NAME:Ljava/lang/String;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "versionName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; versionCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XId"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 73
    sput v0, Lcom/xiaopeng/xvs/xid/XId;->sDefaultIsBindHabit:I

    const-string v0, "@xos5"

    .line 74
    sput-object v0, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_SUFFIX:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "APP_ID_SUFFIX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v0, Lcom/xiaopeng/xvs/xid/XId;->APP_ID_SUFFIX:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, -0x1

    .line 79
    sput v0, Lcom/xiaopeng/xvs/xid/XId;->sDefaultIsBindHabit:I

    const-string v0, ""

    return-object v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "application"
        }
    .end annotation

    const-string v0, ""

    .line 84
    invoke-static {p0, v0}, Lcom/xiaopeng/xvs/xid/XId;->init(Landroid/app/Application;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "application",
            "appId"
        }
    .end annotation

    const-string v0, ""

    .line 88
    invoke-static {p0, p1, v0, v0}, Lcom/xiaopeng/xvs/xid/XId;->init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "application",
            "appId",
            "secret",
            "carType"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: appId = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "], carType = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XId"

    invoke-static {v1, v0}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sput-object p1, Lcom/xiaopeng/xvs/xid/XId;->sAppId:Ljava/lang/String;

    .line 100
    sput-object p2, Lcom/xiaopeng/xvs/xid/XId;->sAppSecret:Ljava/lang/String;

    .line 101
    sput-object p0, Lcom/xiaopeng/xvs/xid/XId;->sApplication:Landroid/app/Application;

    .line 102
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p2

    sput-object p2, Lcom/xiaopeng/xvs/xid/XId;->sAccountManager:Landroid/accounts/AccountManager;

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/xvs/xid/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    sput-object p3, Lcom/xiaopeng/xvs/xid/XId;->sCarType:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/xiaopeng/xvs/xid/utils/XIdSPUtils;->getInstance()Lcom/xiaopeng/xvs/xid/utils/XIdSPUtils;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xvs/xid/utils/XIdSPUtils;->init(Landroid/content/Context;)V

    .line 106
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getXOSVersion()Ljava/lang/String;

    return-void
.end method
