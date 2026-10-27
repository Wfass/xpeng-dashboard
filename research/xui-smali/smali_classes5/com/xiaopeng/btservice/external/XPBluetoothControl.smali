.class public Lcom/xiaopeng/btservice/external/XPBluetoothControl;
.super Lcom/xiaopeng/btservice/base/AbsControl;
.source "XPBluetoothControl.java"


# static fields
.field public static final BACKSEAT_DEVICE_ID:I = 0x2

.field public static final MAIN_DEVICE_ID:I = 0x0

.field public static final PSN_DEVICE_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "XPBluetoothControl"


# instance fields
.field private deviceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbsControl;-><init>()V

    .line 22
    const/4 v0, 0x2

    iput v0, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->mContext:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public connectDevice(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 94
    const-string v0, "XPBluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectDevice deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 96
    const-string v0, "XPBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return v1

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-interface {v0, v2, p1}, Lcom/nforetek/bt/aidl/UiCommand;->connectDevice(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "XPBluetoothControl"

    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public disConnectDevice(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 108
    const-string v0, "XPBluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disConnectDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    const-string v0, "XPBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return v1

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-interface {v0, v2, p1}, Lcom/nforetek/bt/aidl/UiCommand;->disConnectDevice(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "XPBluetoothControl"

    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public enableDevice(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .line 137
    const-string v0, "XPBluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableDevice deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 140
    const-string v1, "XPBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return v0

    .line 144
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-interface {v1, v2, p1}, Lcom/nforetek/bt/aidl/UiCommand;->enableDevice(IZ)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XPBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public getConnectedDevice()Ljava/lang/String;
    .locals 3

    .line 196
    const-string v0, "XPBluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectedDevice deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v0, :cond_0

    .line 198
    const-string v0, "XPBluetoothControl"

    const-string v1, "nForeService == null"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, ""

    return-object v0

    .line 202
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-interface {v0, v1}, Lcom/nforetek/bt/aidl/UiCommand;->getConnectedDevice(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "XPBluetoothControl"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, ""

    return-object v0
.end method

.method public getConnectionState(Ljava/lang/String;)I
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 167
    const-string v0, "XPBluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionState address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v0, -0x1

    .line 169
    .local v0, "status":I
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 170
    const-string v1, "XPBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v1, -0x1

    return v1

    .line 174
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-interface {v1, v2, p1}, Lcom/nforetek/bt/aidl/UiCommand;->getConnectionState(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 177
    goto :goto_0

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XPBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 178
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isDeviceEnabled()Z
    .locals 3

    .line 152
    const-string v0, "XPBluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeviceEnabled deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 155
    const-string v1, "XPBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return v0

    .line 159
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-interface {v1, v2}, Lcom/nforetek/bt/aidl/UiCommand;->isDeviceEnabled(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 162
    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XPBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 163
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method public isDiscovering()Z
    .locals 3

    .line 79
    const-string v0, "XPBluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDiscovering deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 82
    const-string v1, "XPBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return v0

    .line 86
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-interface {v1, v2}, Lcom/nforetek/bt/aidl/UiCommand;->isDiscovering(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 89
    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XPBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method

.method protected registerCallback(Lcom/nforetek/bt/aidl/UiCommand;)V
    .locals 0
    .param p1, "btService"    # Lcom/nforetek/bt/aidl/UiCommand;

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    .line 35
    return-void
.end method

.method protected release()V
    .locals 0

    .line 39
    return-void
.end method

.method public reqXpBtPairedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nforetek/bt/aidl/XpBluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 182
    const-string v0, "XPBluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reqXpBtPairedDevices deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 184
    const-string v0, "XPBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-object v1

    .line 188
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-interface {v0, v2}, Lcom/nforetek/bt/aidl/UiCommand;->reqXpBtPairedDevices(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "XPBluetoothControl"

    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 192
    .end local v0    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public setDeviceId(I)V
    .locals 0
    .param p1, "deviceId"    # I

    .line 29
    iput p1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    .line 30
    return-void
.end method

.method public startSearch()Z
    .locals 4

    .line 42
    const-string v0, "XPBluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSearch deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 45
    const-string v1, "XPBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v1, 0x0

    return v1

    .line 49
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-interface {v1, v2}, Lcom/nforetek/bt/aidl/UiCommand;->isDiscovering(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    const-string v1, "XPBluetoothControl"

    const-string v2, "startBtDiscovery isDiscovering"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, 0x1

    return v1

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-interface {v1, v2}, Lcom/nforetek/bt/aidl/UiCommand;->startSearch(I)Z

    move-result v1

    move v0, v1

    .line 55
    const-string v1, "XPBluetoothControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app startSearch pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_1

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XPBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public stopSearch()Z
    .locals 4

    .line 63
    const-string v0, "XPBluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSearch deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 66
    const-string v1, "XPBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v1, 0x0

    return v1

    .line 70
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-interface {v1, v2}, Lcom/nforetek/bt/aidl/UiCommand;->stopSearch(I)Z

    move-result v1

    move v0, v1

    .line 71
    const-string v1, "XPBluetoothControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app stopSearch pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_1

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XPBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 75
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0
.end method

.method public unpair(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .line 122
    const-string v0, "XPBluetoothControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unpair deviceId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "success":Z
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    if-nez v1, :cond_0

    .line 125
    const-string v1, "XPBluetoothControl"

    const-string v2, "nForeService == null"

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return v0

    .line 129
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->nForeService:Lcom/nforetek/bt/aidl/UiCommand;

    iget v2, p0, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->deviceId:I

    invoke-interface {v1, v2, p1}, Lcom/nforetek/bt/aidl/UiCommand;->unpair(ILjava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 132
    goto :goto_0

    .line 130
    :catch_0
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XPBluetoothControl"

    invoke-virtual {p0, v2, v1}, Lcom/xiaopeng/btservice/external/XPBluetoothControl;->printError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v0
.end method
