.class public interface abstract Lcom/xiaopeng/factory/model/factorytest/hardwaretest/wlan/IWlanModel;
.super Ljava/lang/Object;
.source "IWlanModel.java"


# virtual methods
.method public abstract addNetwork(Landroid/net/wifi/WifiConfiguration;)V
.end method

.method public abstract checkState()I
.end method

.method public abstract closeWifi()V
.end method

.method public abstract createWifiInfo(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
.end method

.method public abstract createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;
.end method

.method public abstract forgetAllWifi()V
.end method

.method public abstract forgetWIfi(Ljava/lang/String;)V
.end method

.method public abstract getIPAddress()I
.end method

.method public abstract getMacAddress()Ljava/lang/String;
.end method

.method public abstract getSSID()Ljava/lang/String;
.end method

.method public abstract getWifiInfo()Landroid/net/wifi/WifiInfo;
.end method

.method public abstract getWlanLocalAddr()Ljava/lang/String;
.end method

.method public abstract onInit()V
.end method

.method public abstract openWifi()V
.end method
