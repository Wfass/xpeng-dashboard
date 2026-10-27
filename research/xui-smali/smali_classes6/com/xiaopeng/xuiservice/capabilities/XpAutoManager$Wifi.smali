.class Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;
.super Ljava/lang/Object;
.source "XpAutoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Wifi"
.end annotation


# static fields
.field private static final DEFAULT_SSID:Ljava/lang/String; = "XP-AUTO"

.field private static final EAP_METHOD:I = 0x1

.field private static final PHASE2_METHOD:I = 0x0

.field private static final SECURITY_EAP:I = 0x3

.field private static final SECURITY_NONE:I = 0x0

.field private static final SECURITY_PSK:I = 0x2

.field private static final SECURITY_WEP:I = 0x1

.field private static final XP_AUTO_CA:Ljava/lang/String; = "xp-auto-ca"

.field private static final XP_AUTO_CLIENT:Ljava/lang/String; = "xp-auto-client"


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$1;

    .line 320
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;-><init>(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

    .line 320
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

    .line 320
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->createWifiInfo()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

    .line 320
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->logWifiConfiguration()V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

    .line 320
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->clearWifiConfiguration()V

    return-void
.end method

.method private checkXpAuto()Z
    .locals 7

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    const-string v2, "checkXpAuto...isWifiEnabled = false"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 336
    return v1

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 339
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 340
    .local v3, "result":Landroid/net/wifi/ScanResult;
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkXpAuto...XP-AUTO , result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 341
    const-string v4, "XP-AUTO"

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 342
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    const-string v5, "checkXpAuto...SSID found"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 343
    invoke-direct {p0, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 344
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    const-string v2, "checkXpAuto...true"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 345
    const/4 v1, 0x1

    return v1

    .line 348
    .end local v3    # "result":Landroid/net/wifi/ScanResult;
    :cond_1
    goto :goto_0

    .line 349
    :cond_2
    return v1
.end method

.method private clearWifiConfiguration()V
    .locals 6

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 415
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_1

    .line 416
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearWifiConfiguration--size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 417
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 418
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->convertToQuotedString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 419
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 420
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearWifiConfiguration--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 422
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 424
    :cond_1
    return-void
.end method

.method private convertToQuotedString()Ljava/lang/String;
    .locals 1

    .line 498
    const-string v0, "\"XP-AUTO\""

    return-object v0
.end method

.method private createWifiInfo()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .line 476
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 477
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v1, "sys.xiaopeng.vin"

    const-string v2, "12345678"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 478
    .local v1, "vin":Ljava/lang/String;
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...vin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 479
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 480
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 481
    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 482
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 483
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 484
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->convertToQuotedString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 486
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v3, "xp-auto-ca"

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 487
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string/jumbo v3, "xp-auto-client"

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 488
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 489
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 490
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 491
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 492
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 494
    return-object v0
.end method

.method private getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .line 465
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    const/4 v0, 0x1

    return v0

    .line 467
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    const/4 v0, 0x2

    return v0

    .line 469
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    const/4 v0, 0x3

    return v0

    .line 472
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 454
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 455
    return v2

    .line 457
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 458
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 461
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

    .line 459
    :cond_3
    :goto_1
    return v2
.end method

.method private getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 6

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 438
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_1

    .line 439
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWifiConfiguration--size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 440
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 441
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWifiConfiguration..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->convertToQuotedString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , config : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 442
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->convertToQuotedString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 443
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWifiConfiguration has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 444
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 445
    return-object v2

    .line 448
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 450
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private isCertificateInstalled()Z
    .locals 4

    .line 386
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 387
    .local v0, "mKeyStore":Landroid/security/KeyStore;
    const-string v1, "CACERT_xp-auto-ca"

    const/16 v2, 0x3f2

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v1

    .line 388
    .local v1, "isC":Z
    const-string v3, "USRPKEY_xp-auto-client"

    invoke-virtual {v0, v3, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    .line 389
    .local v2, "isC2":Z
    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    .line 392
    :cond_0
    const/4 v3, 0x0

    return v3

    .line 390
    :cond_1
    :goto_0
    const/4 v3, 0x1

    return v3
.end method

.method private isConnected()Z
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 397
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 398
    return v1

    .line 400
    :cond_0
    sget-object v2, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$5;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 409
    return v1

    .line 407
    :pswitch_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->convertToQuotedString()Ljava/lang/String;

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

.method private logWifiConfiguration()V
    .locals 6

    .line 427
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 428
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_0

    .line 429
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiConfiguration--size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 430
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 431
    .local v2, "configuration":Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configuration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 432
    .end local v2    # "configuration":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 434
    :cond_0
    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    const-string v2, "connect...isWifiEnabled = false"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 355
    return v1

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 358
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 359
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    const-string v3, "connect...configuration = null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 360
    return v1

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$700(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;

    move-result-object v2

    invoke-direct {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->isConnected()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 363
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    const-string v2, "connect...isConnected"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 364
    return v3

    .line 366
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->isCertificateInstalled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 367
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    const-string v3, "connect...isCacertInstalled false"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 368
    return v1

    .line 370
    :cond_3
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 371
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 372
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect...netWorkId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , network enabled = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$500(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$1400(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;)Landroid/net/wifi/WifiManager$ActionListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 375
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager$Wifi;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;

    const-string v2, "connect...configuration "

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;->access$100(Lcom/xiaopeng/xuiservice/capabilities/XpAutoManager;Ljava/lang/String;)V

    .line 377
    :goto_0
    return v3
.end method
