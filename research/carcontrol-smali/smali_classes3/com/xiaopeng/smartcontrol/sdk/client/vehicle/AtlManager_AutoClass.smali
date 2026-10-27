.class public Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;
.super Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;
.source "AtlManager_AutoClass.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/BaseManager;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isAtlSwEnable"

    const-string v2, "onAtlSwChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAtlEffect"

    const-string v2, "onAtlEffectChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDoubleColor"

    const-string v2, "onDoubleColorChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAtlBrightness"

    const-string v2, "onAtlBrightnessChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSingleColor"

    const-string v2, "onSingleColorChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getAtlColorMode"

    const-string v2, "onAtlColorModeChanged"

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/smartcontrol/ipc/client/GetAndCallbackMap;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getAppId()Ljava/lang/String;
    .locals 1

    const-string v0, "carcontrol"

    return-object v0
.end method

.method public getAtlBrightness()I
    .locals 5

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alt_brightness"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getAtlBrightness   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getAtlBrightness"

    .line 170
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAtlBrightness   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAtlColorMode()I
    .locals 5

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alt_color_mode"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getAtlColorMode   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getAtlColorMode"

    .line 158
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 159
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAtlColorMode   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAtlEffect()I
    .locals 5

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alt_effect"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getAtlEffect   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getAtlEffect"

    .line 101
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAtlEffect   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDoubleColor()I
    .locals 5

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alt_double_color"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getDoubleColor   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getDoubleColor"

    .line 132
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoubleColor   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.xiaopeng.smartcontrol.sdk.server.vehicle.AtlManagerServer"

    return-object v0
.end method

.method public getSingleColor()I
    .locals 5

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alt_single_color"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "getSingleColor   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "getSingleColor"

    .line 120
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSingleColor   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAtlSwEnable()Z
    .locals 5

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alt_sw"

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    const-string v2, "isAtlSwEnable   params: null"

    invoke-static {v0, v2}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v2, "isAtlSwEnable"

    .line 89
    invoke-virtual {p0, v2, v0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAtlSwEnable   result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onIpcReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "data"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "onAtlBrightnessChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_1
    const-string v0, "onAtlEffectChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_2
    const-string v0, "onSingleColorChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v0, "onAtlSwChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v0, "onDoubleColorChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v0, "onAtlColorModeChanged"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    .line 57
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 58
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager$ISignalCallback;

    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager$ISignalCallback;->onAtlBrightnessChanged(I)V

    goto :goto_1

    .line 61
    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "alt_brightness"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 49
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 50
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager$ISignalCallback;

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager$ISignalCallback;->onAtlEffectChanged(I)V

    goto :goto_2

    .line 53
    :cond_7
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "alt_effect"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 65
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 66
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager$ISignalCallback;

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager$ISignalCallback;->onSingleColorChanged(I)V

    goto :goto_3

    .line 69
    :cond_8
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "alt_single_color"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 33
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager$ISignalCallback;

    .line 35
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager$ISignalCallback;->onAtlSwChanged(Z)V

    goto :goto_4

    .line 37
    :cond_9
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "alt_sw"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 73
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 74
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager$ISignalCallback;

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager$ISignalCallback;->onDoubleColorChanged(I)V

    goto :goto_5

    .line 77
    :cond_a
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "alt_double_color"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 41
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->mCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager$ISignalCallback;

    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager$ISignalCallback;->onAtlColorModeChanged(I)V

    goto :goto_6

    .line 45
    :cond_b
    invoke-virtual {p0}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "alt_color_mode"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/smartcontrol/ipc/client/ClientCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x64d7fb78 -> :sswitch_5
        -0x63716b7f -> :sswitch_4
        -0x2eb13f6a -> :sswitch_3
        -0x2c945d88 -> :sswitch_2
        0x3139b5c9 -> :sswitch_1
        0x37a84809 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAtlBrightness(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAtlBrightness   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "setAtlBrightness"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAtlBrightness   result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAtlColorMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAtlColorMode   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "setAtlColorMode"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAtlColorMode   result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAtlEffect(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAtlEffect   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "setAtlEffect"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAtlEffect   result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAtlSw(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAtlSw   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "setAtlSw"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAtlSw   result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDoubleColor(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDoubleColor   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "setDoubleColor"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDoubleColor   result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSingleColor(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param0"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSingleColor   params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "setSingleColor"

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->callIpc(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/smartcontrol/sdk/client/vehicle/AtlManager_AutoClass;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSingleColor   result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/smartcontrol/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
