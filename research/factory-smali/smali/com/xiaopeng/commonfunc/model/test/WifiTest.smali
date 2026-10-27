.class public Lcom/xiaopeng/commonfunc/model/test/WifiTest;
.super Ljava/lang/Object;
.source "WifiTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/model/test/WifiTest$WiFiEventListener;,
        Lcom/xiaopeng/commonfunc/model/test/WifiTest$EventCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiTest"

.field private static final WIFICIPHER_NOPASS:I = 0x1

.field private static final WIFICIPHER_WEP:I = 0x2

.field private static final WIFICIPHER_WPA:I = 0x3


# instance fields
.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mContext:Landroid/content/Context;

.field private mEventCallback:Lcom/xiaopeng/commonfunc/model/test/WifiTest$EventCallback;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mListener:Lcom/xiaopeng/commonfunc/model/test/WifiTest$WiFiEventListener;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/xiaopeng/commonfunc/model/test/WifiTest$EventCallback;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/test/WifiTest$EventCallback;-><init>(Lcom/xiaopeng/commonfunc/model/test/WifiTest;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mEventCallback:Lcom/xiaopeng/commonfunc/model/test/WifiTest$EventCallback;

    .line 64
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager$ActionListener;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectListener"    # Landroid/net/wifi/WifiManager$ActionListener;
    .param p3, "forgetListener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mContext:Landroid/content/Context;

    .line 82
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 83
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 84
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/commonfunc/model/test/WifiTest;)Lcom/xiaopeng/commonfunc/model/test/WifiTest$WiFiEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/WifiTest;

    .line 16
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mListener:Lcom/xiaopeng/commonfunc/model/test/WifiTest$WiFiEventListener;

    return-object v0
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "wcg"    # Landroid/net/wifi/WifiConfiguration;

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 139
    return-void
.end method

.method public checkState()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    return v0
.end method

.method public closeWifi()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 103
    :cond_0
    return-void
.end method

.method public connect(ILcom/xiaopeng/commonfunc/model/test/WifiTest$WiFiEventListener;)V
    .locals 2
    .param p1, "networkId"    # I
    .param p2, "listener"    # Lcom/xiaopeng/commonfunc/model/test/WifiTest$WiFiEventListener;

    .line 76
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mListener:Lcom/xiaopeng/commonfunc/model/test/WifiTest$WiFiEventListener;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mEventCallback:Lcom/xiaopeng/commonfunc/model/test/WifiTest$EventCallback;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 78
    return-void
.end method

.method public createWifiInfo(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "SSID"    # Ljava/lang/String;

    .line 143
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 144
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
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

    .line 145
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 146
    return-object v0
.end method

.method public createWifiInfo(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/WifiConfiguration;
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "passward"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 150
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 151
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 152
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 153
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 154
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 155
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 156
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

    .line 158
    invoke-virtual {p0, p1}, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->isExist(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 159
    .local v1, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 160
    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v3, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 162
    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 180
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

    .line 181
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 182
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->set(I)V

    .line 183
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->set(I)V

    .line 184
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 185
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 187
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->set(I)V

    .line 188
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 189
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_0

    .line 169
    :pswitch_1
    iput-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 170
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

    .line 171
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v4}, Ljava/util/BitSet;->set(I)V

    .line 172
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    .line 173
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 174
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 175
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 176
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 177
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 178
    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v5

    .line 165
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 166
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 167
    nop

    .line 192
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public forgetAllWifi()V
    .locals 6

    .line 215
    const-string v0, "WifiTest"

    const-string v1, "forgetAllWifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 217
    .local v0, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_0

    .line 218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 219
    .local v2, "existingConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v3, "WifiTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forgetAllWifi : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v5, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 221
    .end local v2    # "existingConfig":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method

.method public forgetWifi(Ljava/lang/String;)V
    .locals 4
    .param p1, "SSID"    # Ljava/lang/String;

    .line 196
    invoke-virtual {p0, p1}, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->isExist(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 197
    .local v0, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 200
    :cond_0
    return-void
.end method

.method public getIPAddress()I
    .locals 4

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "ip":I
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 242
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 246
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    const-string v1, "WifiTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIPAddress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 4

    .line 112
    const-string v0, "null"

    .line 113
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 115
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 119
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    const-string v1, "WifiTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWlanLocalAddr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 4

    .line 125
    const-string v0, "null"

    .line 126
    .local v0, "ssid":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 128
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 132
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    const-string v1, "WifiTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSSID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-object v0
.end method

.method public getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0

    .line 254
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWlanLocalAddr()Ljava/lang/String;
    .locals 4

    .line 226
    const-string v0, "null"

    .line 227
    .local v0, "macAddress":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 229
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_0

    .line 230
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 233
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_0
    const-string v1, "WifiTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWlanLocalAddr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-object v0
.end method

.method public isExist(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 6
    .param p1, "SSID"    # Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 204
    .local v0, "existingConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_1

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 206
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

    .line 207
    return-object v2

    .line 209
    .end local v2    # "existingConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    goto :goto_0

    .line 211
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public isWifiEnabled()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public onInit()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 89
    return-void
.end method

.method public openWifi()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 96
    :cond_0
    return-void
.end method

.method public setWifiEnabled(Z)Z
    .locals 1
    .param p1, "enabled"    # Z

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/WifiTest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    return v0
.end method
