.class public Lcom/xiaopeng/factory/model/security/WifiAdmin;
.super Ljava/lang/Object;
.source "WifiAdmin.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiAdmin"


# instance fields
.field private mWifiConfiguration:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

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

.field mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 41
    return-void
.end method

.method private isExist(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 238
    .local v0, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_1

    .line 239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 240
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

    .line 241
    return-object v2

    .line 243
    .end local v2    # "existingConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 245
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public acquireWifiLock()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 67
    return-void
.end method

.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "wcg"    # Landroid/net/wifi/WifiConfiguration;

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 167
    .local v0, "wcgID":I
    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 168
    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result v1

    .line 169
    .local v1, "b":Z
    return-void
.end method

.method public checkState()I
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 60
    .local v0, "state":I
    const-string v1, "WifiAdmin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    return v0
.end method

.method public closeServerWifi(Ljava/lang/String;)V
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .line 298
    :try_start_0
    const-string v0, "WifiAdmin"

    const-string v1, "closeServerWifi"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->removeWIfiInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public closeWifi()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 55
    :cond_0
    return-void
.end method

.method public connectConfiguration(I)V
    .locals 3
    .param p1, "index"    # I

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiConfiguration:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 91
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiConfiguration:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 96
    return-void
.end method

.method public creatWifiLock()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v1, "Test"

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 80
    return-void
.end method

.method public createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "passward"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 189
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 190
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 191
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 192
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 193
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 194
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 195
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

    .line 197
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->isExist(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 198
    .local v1, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 199
    iget-object v2, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 202
    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p3, v2, :cond_1

    .line 204
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v3

    .line 205
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->set(I)V

    .line 206
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 208
    :cond_1
    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne p3, v5, :cond_2

    .line 210
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 211
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

    aput-object v7, v6, v3

    .line 212
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    .line 213
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->set(I)V

    .line 214
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    .line 215
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->set(I)V

    .line 216
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    .line 217
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->set(I)V

    .line 218
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 220
    :cond_2
    if-ne p3, v4, :cond_3

    .line 222
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

    .line 223
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 224
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v3}, Ljava/util/BitSet;->set(I)V

    .line 225
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 226
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 227
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 229
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 230
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 231
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 233
    :cond_3
    return-object v0
.end method

.method public disconnectWifi(I)V
    .locals 1
    .param p1, "netId"    # I

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 175
    return-void
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getConfiguration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiConfiguration:Ljava/util/List;

    return-object v0
.end method

.method public getIPAddress()I
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 148
    .local v0, "ip":I
    :goto_0
    const-string v1, "WifiAdmin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIPAddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNetworkId()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "ssid":Ljava/lang/String;
    :goto_0
    const-string v1, "WifiAdmin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSSID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    return-object v0
.end method

.method public getWifiInfo()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string v0, "NULL"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiInfo:Landroid/net/wifi/WifiInfo;

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

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiList:Ljava/util/List;

    return-object v0
.end method

.method public isWifiConnected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ssid_spec"    # Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->getIPAddress()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lookUpScan()Ljava/lang/StringBuilder;
    .locals 5

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/Integer;

    add-int/lit8 v4, v1, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 116
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v2, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    invoke-virtual {v2}, Landroid/net/wifi/ScanResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v2, "/n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public openWifi()V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 48
    :cond_0
    return-void
.end method

.method public releaseWifiLock()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 75
    :cond_0
    return-void
.end method

.method public removeWIfiInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .line 178
    const-string v0, "WifiAdmin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeWIfiInfo ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->isExist(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 180
    .local v0, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 181
    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 185
    :cond_0
    return-void
.end method

.method public startScan()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiList:Ljava/util/List;

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/security/WifiAdmin;->mWifiConfiguration:Ljava/util/List;

    .line 104
    return-void
.end method

.method public waitConnectToServerWifi(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "passwd"    # Ljava/lang/String;

    .line 249
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->openWifi()V

    .line 251
    const/16 v0, 0xa

    .line 252
    .local v0, "time":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .local v1, "time":I
    const-wide/16 v2, 0x3e8

    const/4 v4, 0x3

    if-lez v0, :cond_1

    .line 254
    .end local v0    # "time":I
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->checkState()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 255
    goto :goto_1

    .line 258
    :cond_0
    invoke-static {v2, v3}, Lcom/xiaopeng/factory/system/runnable/Sleep;->sleep(J)V

    .line 251
    move v0, v1

    goto :goto_0

    .line 262
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->checkState()I

    move-result v0

    const/4 v5, 0x0

    if-eq v0, v4, :cond_2

    .line 263
    const-string v0, "WifiAdmin"

    const-string v2, "wifi not enabled"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    return v5

    .line 268
    :cond_2
    invoke-virtual {p0, p1, p2, v4}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->addNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 269
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->startScan()V

    .line 271
    const/16 v0, 0x2d

    .line 272
    .end local v1    # "time":I
    .restart local v0    # "time":I
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "time":I
    if-lez v0, :cond_5

    .line 274
    .end local v0    # "time":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->isWifiConnected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 275
    goto :goto_3

    .line 277
    :cond_3
    rem-int/lit8 v0, v1, 0x5

    if-nez v0, :cond_4

    .line 278
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->startScan()V

    .line 281
    :cond_4
    invoke-static {v2, v3}, Lcom/xiaopeng/factory/system/runnable/Sleep;->sleep(J)V

    .line 272
    move v0, v1

    goto :goto_2

    .line 284
    :cond_5
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/factory/model/security/WifiAdmin;->isWifiConnected(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 285
    const-string v0, "WifiAdmin"

    const-string v2, "wifi not connected to secure AP"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    return v5

    .line 289
    :cond_6
    const/4 v0, 0x1

    return v0
.end method
