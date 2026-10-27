.class public Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;
.super Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
.source "DeviceServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer$SingletonHolder;
    }
.end annotation


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "device"

.field private static final TAG:Ljava/lang/String; = "OSDKDeviceS"


# instance fields
.field private mDebug:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;-><init>()V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer$1;

    .line 30
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;-><init>()V

    return-void
.end method

.method private getAutoPilotOs([Ljava/lang/String;)V
    .locals 5
    .param p1, "results"    # [Ljava/lang/String;

    .line 240
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    new-instance v0, Lcom/car/opensdk/device/data/AutoPilotOs;

    invoke-direct {v0}, Lcom/car/opensdk/device/data/AutoPilotOs;-><init>()V

    .line 244
    .local v0, "data":Lcom/car/opensdk/device/data/AutoPilotOs;
    invoke-virtual {v0}, Lcom/car/opensdk/device/data/AutoPilotOs;->toJson()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    .line 245
    const-string v1, "OSDKDeviceS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExpandDevices "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void

    .line 241
    .end local v0    # "data":Lcom/car/opensdk/device/data/AutoPilotOs;
    :cond_1
    :goto_0
    return-void
.end method

.method private getExpandDevices([Ljava/lang/String;)V
    .locals 4
    .param p1, "results"    # [Ljava/lang/String;

    .line 256
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Lcom/car/opensdk/device/data/ExpandDevice;>;"
    const-string v1, "OSDKDeviceS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExpandDevices "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void

    .line 257
    .end local v0    # "data":Ljava/util/List;, "Ljava/util/List<Lcom/car/opensdk/device/data/ExpandDevice;>;"
    :cond_1
    :goto_0
    return-void
.end method

.method private getID([Ljava/lang/String;)V
    .locals 4
    .param p1, "results"    # [Ljava/lang/String;

    .line 165
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {}, Landroid/car/XpCarFeatures;->getMcuHardwareId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 169
    const-string v0, "OSDKDeviceS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void

    .line 166
    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;
    .locals 1

    .line 41
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer$SingletonHolder;->access$100()Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;

    move-result-object v0

    return-object v0
.end method

.method private getVIN([Ljava/lang/String;)V
    .locals 4
    .param p1, "results"    # [Ljava/lang/String;

    .line 174
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    invoke-static {}, Landroid/car/XpCarFeatures;->getVinCode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 178
    const-string v0, "OSDKDeviceS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void

    .line 175
    :cond_1
    :goto_0
    return-void
.end method

.method private getVehicleModel([Ljava/lang/String;)V
    .locals 7
    .param p1, "results"    # [Ljava/lang/String;

    .line 189
    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 193
    :cond_0
    invoke-static {}, Landroid/car/Car;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "cduType":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/CarTypeDefines;->findByCduType(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;

    move-result-object v1

    .line 196
    .local v1, "carType":Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;
    new-instance v2, Lcom/car/opensdk/device/data/VehicleModel;

    invoke-direct {v2}, Lcom/car/opensdk/device/data/VehicleModel;-><init>()V

    .line 197
    .local v2, "vehicleModel":Lcom/car/opensdk/device/data/VehicleModel;
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Lcom/car/opensdk/device/data/VehicleModel;->setId(Ljava/lang/String;)V

    .line 198
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;->saleName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Lcom/car/opensdk/device/data/VehicleModel;->setName(Ljava/lang/String;)V

    .line 199
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/car/opensdk/device/data/VehicleModel;->setStyleId(Ljava/lang/String;)V

    .line 200
    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/car/opensdk/device/data/VehicleModel;->setStyleName(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v2}, Lcom/car/opensdk/device/data/VehicleModel;->toJson()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, p1, v4

    .line 202
    const-string v3, "OSDKDeviceS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVehicleModel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void

    .line 190
    .end local v0    # "cduType":Ljava/lang/String;
    .end local v1    # "carType":Lcom/xiaopeng/xuiservice/utils/CarTypeDefines$CarType;
    .end local v2    # "vehicleModel":Lcom/car/opensdk/device/data/VehicleModel;
    :cond_3
    :goto_2
    return-void
.end method

.method private getVehicleOs([Ljava/lang/String;)V
    .locals 9
    .param p1, "results"    # [Ljava/lang/String;

    .line 212
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 215
    :cond_0
    const-string v0, "ro.xiaopeng.software"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "info":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    new-instance v1, Lcom/car/opensdk/device/data/VehicleOs;

    invoke-direct {v1}, Lcom/car/opensdk/device/data/VehicleOs;-><init>()V

    .line 220
    .local v1, "vehicleOs":Lcom/car/opensdk/device/data/VehicleOs;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "os":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/car/opensdk/device/data/VehicleOs;->setName(Ljava/lang/String;)V

    .line 222
    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 223
    .local v4, "vs":I
    const-string v5, "_"

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 224
    .local v5, "ve":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    if-eq v5, v6, :cond_2

    .line 225
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, "ver":Ljava/lang/String;
    invoke-virtual {v1, v6}, Lcom/car/opensdk/device/data/VehicleOs;->setVersion(Ljava/lang/String;)V

    .line 228
    .end local v6    # "ver":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Lcom/car/opensdk/device/data/VehicleOs;->toJson()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p1, v3

    .line 229
    const-string v6, "OSDKDeviceS"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVehicleOs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void

    .line 217
    .end local v1    # "vehicleOs":Lcom/car/opensdk/device/data/VehicleOs;
    .end local v2    # "os":Ljava/lang/String;
    .end local v4    # "vs":I
    .end local v5    # "ve":I
    :cond_3
    :goto_0
    return-void

    .line 213
    .end local v0    # "info":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void
.end method

.method private handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "ret":I
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "getAutoPilotOs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "getExpandDevices"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v1, "getID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "getVehicleModel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :sswitch_4
    const-string v1, "getDolbySupport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v1, "getVIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :sswitch_6
    const-string v1, "getMultiSndChSupport"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_7
    const-string v1, "getVehicleOs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 157
    const/4 v0, -0x1

    goto/16 :goto_2

    .line 150
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->isMultiSoundChannelSupport()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    const/16 v0, -0xc8

    .line 153
    :cond_1
    const-string v1, "OSDKDeviceS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEVICE_GET_MULTI_SOUND_CHANNEL_SUPPORT,ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    goto :goto_2

    .line 134
    :pswitch_1
    aget-object v1, p2, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 135
    .local v1, "type":I
    if-ne v3, v1, :cond_2

    .line 136
    const-string v2, "OSDKDeviceS"

    const-string v3, "dolby vision not support"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/16 v0, -0xc8

    goto :goto_2

    .line 138
    :cond_2
    if-ne v2, v1, :cond_3

    .line 139
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->isDolbySupport()Z

    move-result v2

    if-nez v2, :cond_4

    .line 140
    const/16 v0, -0xc8

    .line 141
    const-string v2, "OSDKDeviceS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEVICE_GET_DOLBY_SUPPORT,ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 144
    :cond_3
    const-string v2, "OSDKDeviceS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEVICE_GET_DOLBY_SUPPORT,unknown type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/16 v0, -0xc8

    .line 147
    goto :goto_2

    .line 129
    .end local v1    # "type":I
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->getExpandDevices([Ljava/lang/String;)V

    .line 130
    goto :goto_2

    .line 125
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->getVehicleOs([Ljava/lang/String;)V

    .line 126
    goto :goto_2

    .line 121
    :pswitch_4
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->getAutoPilotOs([Ljava/lang/String;)V

    .line 122
    goto :goto_2

    .line 117
    :pswitch_5
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->getVehicleModel([Ljava/lang/String;)V

    .line 118
    goto :goto_2

    .line 113
    :pswitch_6
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->getVIN([Ljava/lang/String;)V

    .line 114
    goto :goto_2

    .line 109
    :pswitch_7
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->getID([Ljava/lang/String;)V

    .line 110
    nop

    .line 160
    :cond_4
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76d61086 -> :sswitch_7
        -0x4c63b49c -> :sswitch_6
        -0x4a778b1b -> :sswitch_5
        -0x2f37ce33 -> :sswitch_4
        -0x1909562d -> :sswitch_3
        0x5db1af1 -> :sswitch_2
        0x2fc7612d -> :sswitch_1
        0x64f8f0d7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isDolbySupport()Z
    .locals 1

    .line 271
    const-string v0, "DOLBY"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isMultiSoundChannelSupport()Z
    .locals 1

    .line 275
    const-string v0, "AMP"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIConfig;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addListener(Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 69
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 84
    const-string v0, "dump:OSDKDeviceS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    if-eqz p2, :cond_5

    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    .line 89
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_4

    .line 90
    aget-object v2, p2, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x2e2b2e

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    const v5, 0x5975265

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "d-out"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v6

    goto :goto_1

    :cond_2
    const-string v4, "d-in"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v0

    :cond_3
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :pswitch_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->mDebug:Z

    .line 97
    return-void

    .line 92
    :pswitch_1
    iput-boolean v6, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->mDebug:Z

    .line 93
    return-void

    .line 103
    .end local v1    # "i":I
    :cond_4
    return-void

    .line 86
    :cond_5
    :goto_2
    const-string v0, "please input params!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 2

    .line 78
    const-string v0, "OSDKDeviceS"

    const-string v1, "MODULE_NAME=device"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "device"

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 51
    return-void
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 55
    const-string v0, "OSDKDeviceS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControl, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ioControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 61
    const-string v0, "OSDKDeviceS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithPocket, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,results="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/DeviceServer;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeListener()V
    .locals 0

    .line 74
    return-void
.end method
