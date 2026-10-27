.class public Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;
.super Ljava/lang/Object;
.source "XpAvpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$wifi;,
        Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$WifiListener;
    }
.end annotation


# static fields
.field private static final SECURITY_EAP:I = 0x3

.field private static final SECURITY_NONE:I = 0x0

.field private static final SECURITY_PSK:I = 0x2

.field private static final SECURITY_WEP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "XpAvpManager"

.field private static final WIFICIPHER_NOPASS:I = 0x1

.field private static final WIFICIPHER_WEP:I = 0x2

.field private static final WIFICIPHER_WPA:I = 0x3

.field private static final WIFICIPHER_WPA2:I = 0x4

.field private static sInstance:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;


# instance fields
.field private avpWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private isAVPWifiEnable:Z

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$WifiListener;

.field private mNMService:Landroid/os/INetworkManagementService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWificonfiguration:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private snatDestIp:Ljava/lang/String;

.field private snatIface:Ljava/lang/String;

.field private snatLinkAddress:Landroid/net/LinkAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->sInstance:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->snatIface:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->snatLinkAddress:Landroid/net/LinkAddress;

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->snatDestIp:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$1;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mLinkProperties:Landroid/net/LinkProperties;

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mContext:Landroid/content/Context;

    .line 122
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->registerReceiver()V

    .line 123
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 126
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->initConnectListener()V

    .line 127
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->avpWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    .line 33
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->isAVPWifiEnable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->isAVPWifiEnable:Z

    return p1
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createChargeWifiInfo(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "SSID"    # Ljava/lang/String;

    .line 335
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 336
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v1, "sys.xiaopeng.vin"

    const-string v2, "12345678"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "vin":Ljava/lang/String;
    const-string v2, "XpAvpManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...vin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 339
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 340
    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 341
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 342
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 343
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 347
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v3, "xp-auto-client"

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 348
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 349
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 350
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 354
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 131
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->sInstance:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    if-nez v0, :cond_1

    .line 132
    const-class v0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    monitor-enter v0

    .line 133
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->sInstance:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    if-nez v1, :cond_0

    .line 134
    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->sInstance:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    .line 136
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 138
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->sInstance:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;

    return-object v0
.end method

.method private getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 461
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 462
    return v2

    .line 464
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 467
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    .line 465
    :cond_3
    :goto_1
    return v2
.end method

.method private initConnectListener()V
    .locals 1

    .line 436
    new-instance v0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$2;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 447
    return-void
.end method

.method private isConnected()Z
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 399
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 400
    return v1

    .line 402
    :cond_0
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$3;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 411
    return v1

    .line 409
    :pswitch_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "XP-AUTO"

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "SSID"    # Ljava/lang/String;

    .line 450
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 452
    .local v0, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 453
    .local v2, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    return-object v2

    .line 456
    .end local v2    # "existingConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 457
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private registerReceiver()V
    .locals 3

    .line 517
    const-string v0, "XpAvpManager"

    const-string v1, "registerReceiver"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 519
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 529
    return-void
.end method

.method private saveChargeWifiInfo(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 323
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 324
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v3, "XP-AUTO"

    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    const-string v1, "XpAvpManager"

    const-string v3, "config.SSID = wifi.DEFAULT_SSID"

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void

    .line 328
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 330
    :cond_1
    const-string v1, "XP-AUTO"

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->createChargeWifiInfo(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 331
    .local v1, "configuration":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 332
    return-void
.end method


# virtual methods
.method public acquireWifiLock()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 155
    return-void
.end method

.method public addNetWork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "wifiConfiguration"    # Landroid/net/wifi/WifiConfiguration;

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 219
    .local v0, "wcgID":I
    const-string v1, "XpAvpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wcgID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 221
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 222
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 223
    return v2
.end method

.method public connect(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "configuration"    # Landroid/net/wifi/WifiConfiguration;

    .line 373
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 377
    return v1

    .line 379
    :cond_1
    if-nez p1, :cond_2

    .line 380
    const-string v0, "XpAvpManager"

    const-string v2, "connect configuration = null"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return v1

    .line 383
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 384
    const-string v0, "XpAvpManager"

    const-string v2, "connect isConnected"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return v1

    .line 387
    :cond_3
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 389
    const-string v0, "XpAvpManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect: netWorkId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , network enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 392
    const-string v0, "XpAvpManager"

    const-string v2, "connect: configuration "

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :goto_0
    return v1
.end method

.method public connectConfiguration(I)Ljava/lang/Boolean;
    .locals 2
    .param p1, "index"    # I

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 174
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public createAVPWifiInfo()Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .line 358
    const-string v0, "XP-AVPRCV"

    const-string v1, "@qwert@fdsa!!"

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p1, "SSID"    # Ljava/lang/String;
    .param p2, "Password"    # Ljava/lang/String;
    .param p3, "Type"    # I

    .line 244
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 245
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 246
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 247
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 248
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 249
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 252
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->isExsits(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 253
    .local v1, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 254
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 257
    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 297
    :pswitch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 298
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 300
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    .line 301
    const-string v6, "XpAvpManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "safrans : configuration.SSID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v6, "XpAvpManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "safrans : configuration.preSharedKey"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->set(I)V

    .line 304
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    .line 305
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 306
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 307
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 308
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 309
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 310
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 311
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->isAVPWifiEnable:Z

    if-eqz v2, :cond_1

    .line 312
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->avpWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 313
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->avpWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->avpWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_0

    .line 283
    :pswitch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 284
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 286
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->set(I)V

    .line 287
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    .line 288
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 289
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 290
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 291
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 292
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 293
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 294
    goto :goto_0

    .line 271
    :pswitch_2
    iput-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 272
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 273
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->set(I)V

    .line 274
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    .line 275
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 276
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 277
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 278
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 280
    goto :goto_0

    .line 260
    :pswitch_3
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 268
    nop

    .line 318
    :cond_1
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createWifiLock()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "auto-wifi"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 151
    return-void
.end method

.method public disconnectWifi()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 229
    return-void
.end method

.method public disconnectWifi(I)V
    .locals 3
    .param p1, "netId"    # I

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$WifiListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$WifiListener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$WifiListener;->setWifiGwInfo(IILjava/lang/String;)V

    .line 237
    :cond_0
    return-void
.end method

.method public enableAVPWifi(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 240
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->isAVPWifiEnable:Z

    .line 241
    return-void
.end method

.method public getConfigurations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWificonfiguration:Ljava/util/List;

    return-object v0
.end method

.method public getIpAddress()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNetworkId()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWifiConfigration()Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .line 416
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 417
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 418
    return-object v1

    .line 420
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 421
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v4, "XP-AUTO"

    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 422
    const-string v4, "XpAvpManager"

    const-string v5, "config.SSID = wifi.DEFAULT_SSID"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 424
    return-object v3

    .line 427
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    goto :goto_0

    .line 428
    :cond_2
    return-object v1
.end method

.method public getWifiInfo()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWifiList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiList:Ljava/util/List;

    return-object v0
.end method

.method public getWifiState()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    return v0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public lookUpScan()Ljava/lang/StringBuilder;
    .locals 4

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v2, "/n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 194
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public openWifi()Z
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 366
    return v1

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public releaseWifiLock()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 161
    :cond_0
    return-void
.end method

.method public setListener(Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$WifiListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$WifiListener;

    .line 537
    monitor-enter p0

    .line 538
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$WifiListener;

    .line 539
    monitor-exit p0

    .line 540
    return-void

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startScan()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiList:Ljava/util/List;

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWificonfiguration:Ljava/util/List;

    .line 181
    return-void
.end method

.method public switchSNAT(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .line 471
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 472
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 473
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mNMService:Landroid/os/INetworkManagementService;

    .line 475
    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "192.168.225.1/24"

    invoke-direct {v2, v3}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->snatLinkAddress:Landroid/net/LinkAddress;

    .line 476
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v2

    .line 477
    .local v2, "activeNetwork":Landroid/net/Network;
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    nop

    .line 478
    .local v0, "activeLink":Landroid/net/LinkProperties;
    :cond_0
    if-eqz v0, :cond_1

    .line 479
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 482
    .local v3, "mWifiInfo":Landroid/net/wifi/WifiInfo;
    return-void

    .line 502
    .end local v0    # "activeLink":Landroid/net/LinkProperties;
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "activeNetwork":Landroid/net/Network;
    .end local v3    # "mWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    goto :goto_0

    .line 504
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mNMService:Landroid/os/INetworkManagementService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V

    .line 506
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$WifiListener;

    if-eqz v1, :cond_3

    .line 507
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mListener:Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$WifiListener;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager$WifiListener;->setWifiGwInfo(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_3
    goto :goto_0

    .line 509
    :catch_0
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XpAvpManager"

    const-string v2, "fail to enable snat"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 514
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 532
    const-string v0, "XpAvpManager"

    const-string v1, "unregisterReceiver.."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAvpManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 534
    return-void
.end method
