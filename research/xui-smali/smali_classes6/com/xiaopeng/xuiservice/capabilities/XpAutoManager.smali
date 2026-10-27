.class public Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;
.super Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;
.source "XpAutoManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;
    }
.end annotation


# static fields
.field private static final MAX_RETRY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "XpAutoManager"

.field private static mInstance:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

.field private static sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

.field private mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

.field private mChargingState:I

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mIsUserInterfere:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryCount:I

.field private mRetryRunnable:Ljava/lang/Runnable;

.field private mWifi:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 71
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/carcontrol/BaseCarListener;-><init>(Landroid/content/Context;)V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mChargingState:I

    .line 63
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpAutoManager$LkGv5wDLWj_HuVOmJiro2cILi-E;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpAutoManager$LkGv5wDLWj_HuVOmJiro2cILi-E;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mRetryRunnable:Ljava/lang/Runnable;

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 74
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mWifi:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

    .line 75
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->connectTry()V

    return-void
.end method

.method static synthetic access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->retryForError()V

    return-void
.end method

.method static synthetic access$302(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;
    .param p1, "x1"    # I

    .line 47
    iput p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mChargingState:I

    return p1
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->retryForErrorCancel()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .line 47
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mWifi:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->onWifiState(I)V

    return-void
.end method

.method private checkConfiguration()Z
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mWifi:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    const-string v0, "check Configuration not ,now create"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->log(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mWifi:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->access$1100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 262
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$4;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$4;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 275
    const/4 v1, 0x0

    return v1

    .line 277
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    const-string v0, "check Configuration has"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->log(Ljava/lang/String;)V

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method private connectTry()V
    .locals 4

    .line 285
    const-string v0, "connect--mIsUserInterfere:%s, isOnChargingGunStatus: %s,isWifiEnabled:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mIsUserInterfere:Z

    .line 286
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->isOnChargingGunStatus()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 285
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->log(Ljava/lang/String;)V

    .line 288
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mIsUserInterfere:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->retryForErrorCancel()V

    .line 294
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->isOnChargingGunStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpAutoManager$_6OqXoZ9FodA5197EIClRv4CRng;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpAutoManager$_6OqXoZ9FodA5197EIClRv4CRng;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 302
    :cond_1
    return-void

    .line 289
    :cond_2
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;
    .locals 1

    .line 138
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mInstance:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mInstance:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    .line 141
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mInstance:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    return-object v0
.end method

.method private isOnChargingGunStatus()Z
    .locals 3

    .line 228
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mChargingState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->getChargingGunStatus()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mChargingState:I

    .line 232
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mChargingState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mChargingState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    return v1
.end method

.method public static synthetic lambda$connectTry$3(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mWifi:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->connect()Z

    .line 297
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V
    .locals 1

    .line 64
    const-string v0, "mRetryRunnable-run"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->log(Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->connectTry()V

    .line 66
    return-void
.end method

.method public static synthetic lambda$onInit$1(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->checkConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->connectTry()V

    goto :goto_0

    .line 166
    :cond_0
    const-string v0, "init--not xp-auto"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->log(Ljava/lang/String;)V

    .line 169
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->registerReceiver()V

    .line 170
    return-void
.end method

.method public static synthetic lambda$onRelease$2(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V
    .locals 1

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->setUserInterfere(Z)V

    .line 180
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->retryForErrorCancel()V

    .line 182
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->unRegisterReceiver()V

    .line 183
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 305
    const-string v0, "XpAutoManager"

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method private onWifiState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 236
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    const-string v0, "onWifiState--WIFI_STATE_ENABLED"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->log(Ljava/lang/String;)V

    .line 240
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->connectTry()V

    .line 241
    goto :goto_0

    .line 243
    :cond_1
    const-string v0, "onWifiState--WIFI_STATE_DISABLED"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->log(Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->setUserInterfere(Z)V

    .line 247
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->retryForErrorCancel()V

    .line 250
    :goto_0
    return-void
.end method

.method private static postOnBackgroundThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .line 131
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 134
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->sSingleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$3;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    const-string v1, "registerReceiver"

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->log(Ljava/lang/String;)V

    .line 206
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private retryForError()V
    .locals 4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "retryForError--mRetryCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->log(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 148
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    iget v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mRetryCount:I

    .line 151
    :cond_0
    return-void
.end method

.method private retryForErrorCancel()V
    .locals 2

    .line 155
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mRetryCount:I

    .line 157
    return-void
.end method

.method private unRegisterReceiver()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    const-string v0, "unRegisterReceiver"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->log(Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method


# virtual methods
.method public clearAuto()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mWifi:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->access$900(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;)V

    .line 254
    return-void
.end method

.method public getChargingGunStatus()I
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    if-eqz v0, :cond_0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    invoke-virtual {v0}, Landroid/car/hardware/vcu/CarVcuManager;->getChargingGunStatus()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 316
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected initCarListener()V
    .locals 1

    .line 91
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 122
    return-void
.end method

.method protected onCarManagerInited()V
    .locals 2

    .line 126
    const-string v0, "XpAutoManager"

    const-string v1, "onCarManagerInited"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v0, "xp_vcu"

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/vcu/CarVcuManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mCarVcuManager:Landroid/car/hardware/vcu/CarVcuManager;

    .line 128
    return-void
.end method

.method protected onInit()V
    .locals 1

    .line 161
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpAutoManager$UVVZcFj3TWYvaY8MYYu5o83kGVA;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpAutoManager$UVVZcFj3TWYvaY8MYYu5o83kGVA;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .line 175
    const-string v0, "destroy"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->log(Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpAutoManager$bWpIQWdljcjntuIqR3zId978Gb0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/-$$Lambda$XpAutoManager$bWpIQWdljcjntuIqR3zId978Gb0;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->mCarVcuEventCallback:Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 185
    return-void
.end method

.method public setUserInterfere(Z)V
    .locals 0
    .param p1, "userInterfere"    # Z

    .line 224
    return-void
.end method
