.class public Lcom/xiaopeng/xuiservice/smart/SmartAutoService;
.super Lcom/xiaopeng/xuiservice/smart/BaseSmartService;
.source "SmartAutoService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/smart/SmartAutoService$InstanceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartAutoService"

.field private static final XP_AUTO_POWER_OFF_INTENT:Ljava/lang/String; = "com.xiaopeng.intent.action.AUTO_POWER_OFF"


# instance fields
.field private MAX_SECOND:I

.field private auto_power_off_timeout_thread:Ljava/lang/Runnable;

.field private bootupTimeInterval:J

.field private isAutoPowerOFF:Z

.field private lastBootupTime:J

.field private mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

.field private mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

.field private strCountry:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;-><init>(Landroid/content/Context;)V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->strCountry:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->isAutoPowerOFF:Z

    .line 35
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->bootupTimeInterval:J

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->lastBootupTime:J

    .line 37
    const/16 v0, 0x258

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->MAX_SECOND:I

    .line 38
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$1;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->auto_power_off_timeout_thread:Ljava/lang/Runnable;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xuiservice/smart/SmartAutoService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartAutoService$1;

    .line 27
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAutoService;
    .param p1, "x1"    # Z

    .line 27
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->isAutoPowerOFF:Z

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->effectiveTimeCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    .line 27
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->notifyAutoPowerOff()V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->strCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAutoService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->strCountry:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAutoService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->notifyWifiCountryCode(Ljava/lang/String;Z)V

    return-void
.end method

.method private effectiveTimeCheck()Z
    .locals 7

    .line 196
    const-string/jumbo v0, "xp_tbox"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/tbox/CarTboxManager;

    .line 198
    .local v0, "carTboxManager":Landroid/car/hardware/tbox/CarTboxManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/car/hardware/tbox/CarTboxManager;->getPowerOffCountdown()[I

    move-result-object v2

    .line 199
    .local v2, "time":[I
    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 200
    const-string v4, "SmartAutoService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPowerOffCountdown time--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    if-eqz v2, :cond_1

    aget v4, v2, v1

    const/16 v5, 0x3f

    if-eq v4, v5, :cond_1

    aget v4, v2, v3

    if-eq v4, v5, :cond_1

    .line 204
    aget v4, v2, v1

    mul-int/lit8 v4, v4, 0x3c

    aget v5, v2, v3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->MAX_SECOND:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v4, v5, :cond_1

    .line 205
    return v3

    .line 210
    .end local v2    # "time":[I
    :cond_1
    goto :goto_0

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return v1
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/smart/SmartAutoService;
    .locals 1

    .line 146
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$InstanceHolder;->access$500()Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    move-result-object v0

    return-object v0
.end method

.method private initWifiCountryCode()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_country_code"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const-string v1, "SmartAutoService"

    const-string v2, "initWifiCountryCode no country"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->notifyWifiCountryCode(Ljava/lang/String;Z)V

    .line 193
    :goto_0
    return-void
.end method

.method private notifyAutoPowerOff()V
    .locals 6

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 160
    .local v0, "currentTime":J
    const-string v2, "SmartAutoService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyAutoPowerOff currentTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " &lastBootupTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->lastBootupTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " &isAutoPowerOFF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->isAutoPowerOFF:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->isAutoPowerOFF:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->lastBootupTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->bootupTimeInterval:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 162
    const-string v2, "SmartAutoService"

    const-string v3, "SmartAutoService(tbox|mcu) sendBroadcast: AUTO_POWER_OFF"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->isAutoPowerOFF:Z

    .line 164
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xiaopeng.intent.action.AUTO_POWER_OFF"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x1000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 168
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->tickAutoPowerOffTime()V

    .line 169
    return-void
.end method

.method private notifyWifiCountryCode(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .line 172
    const-string v0, "SmartAutoService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWifiCountryCode country "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " persist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 176
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setCountryCode(Ljava/lang/String;)V

    .line 177
    if-eqz p2, :cond_0

    .line 178
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_country_code"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartAutoService"

    const-string v2, "initWifiCountryCode failed"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method private tickAutoPowerOffTime()V
    .locals 4

    .line 154
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->auto_power_off_timeout_thread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->auto_power_off_timeout_thread:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    return-void
.end method


# virtual methods
.method public bridge synthetic debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->debugDump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/BaseSmartService;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "SmartAutoService"

    return-object v0
.end method

.method protected initCarListener()V
    .locals 2

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->lastBootupTime:J

    .line 66
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$2;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    .line 107
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$3;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->addTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 137
    return-void
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 141
    const-string v0, "SmartAutoService"

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->initWifiCountryCode()V

    .line 143
    return-void
.end method

.method protected onInit()V
    .locals 0

    .line 55
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->mCarTboxEventCallback:Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->removeTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->mCarMcuEventCallback:Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 61
    return-void
.end method
