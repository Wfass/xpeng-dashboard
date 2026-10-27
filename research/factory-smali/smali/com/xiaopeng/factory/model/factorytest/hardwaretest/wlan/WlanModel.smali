.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;
.super Ljava/lang/Object;
.source "WlanModel.java"

# interfaces
.implements Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/IWlanModel;


# static fields
.field private static final TAG:Ljava/lang/String; = "WlanModel"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWifiTest:Lcom/xpeng/test/WifiTest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mContext:Landroid/content/Context;

    .line 25
    new-instance v0, Lcom/xpeng/test/WifiTest;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xpeng/test/WifiTest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager$ActionListener;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 2
    .param p1, "connectListener"    # Landroid/net/wifi/WifiManager$ActionListener;
    .param p2, "forgetListener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mContext:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/xpeng/test/WifiTest;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/xpeng/test/WifiTest;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager$ActionListener;Landroid/net/wifi/WifiManager$ActionListener;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    .line 31
    return-void
.end method

.method private isExist(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "SSID"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0, p1}, Lcom/xpeng/test/WifiTest;->isExist(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "wcg"    # Landroid/net/wifi/WifiConfiguration;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0, p1}, Lcom/xpeng/test/WifiTest;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 91
    return-void
.end method

.method public checkState()I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->checkState()I

    move-result v0

    return v0
.end method

.method public closeWifi()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->closeWifi()V

    .line 54
    return-void
.end method

.method public createWifiInfo(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "SSID"    # Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0, p1}, Lcom/xpeng/test/WifiTest;->createWifiInfo(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "pass"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xpeng/test/WifiTest;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public forgetAllWifi()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->forgetAllWifi()V

    .line 118
    return-void
.end method

.method public forgetWIfi(Ljava/lang/String;)V
    .locals 1
    .param p1, "SSID"    # Ljava/lang/String;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0, p1}, Lcom/xpeng/test/WifiTest;->forgetWifi(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public getIPAddress()I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->getIPAddress()I

    move-result v0

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->getSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWlanLocalAddr()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->getWlanLocalAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onInit()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->onInit()V

    .line 40
    return-void
.end method

.method public openWifi()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/WlanModel;->mWifiTest:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->openWifi()V

    .line 47
    return-void
.end method
