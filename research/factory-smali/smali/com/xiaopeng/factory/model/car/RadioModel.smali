.class public Lcom/xiaopeng/factory/model/car/RadioModel;
.super Ljava/lang/Object;
.source "RadioModel.java"


# static fields
.field public static final DEFAULT_FM:I = 0x155cc

.field public static final DEFAULT_VOLUME:I = 0x64

.field public static final FM_GAP:I = 0x64

.field public static final PATH_READ_FM_RSSI:Ljava/lang/String; = "/sys/audio/tunerlevel"

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_OPEN:I = 0x1

.field private static sRadioModel:Lcom/xiaopeng/factory/model/car/RadioModel;


# instance fields
.field final TAG:Ljava/lang/String;

.field private mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

.field private mRadioManager:Landroid/car/hardware/radio/CarRadioManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "RadioModel"

    iput-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/xiaopeng/factory/model/car/RadioModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/model/car/RadioModel$1;-><init>(Lcom/xiaopeng/factory/model/car/RadioModel;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/factory/model/car/RadioModel;->getCarManager()V

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/car/RadioModel;->registerCallback()V

    .line 48
    return-void
.end method

.method private getCarManager()V
    .locals 4

    .line 52
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getCar()Landroid/car/Car;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getCar()Landroid/car/Car;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/Car;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getCar()Landroid/car/Car;

    move-result-object v0

    const-string v1, "xp_radio"

    invoke-virtual {v0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/radio/CarRadioManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    goto :goto_0

    .line 55
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "Car is not connected yet"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/car/CarNotConnectedException;
    const-string v1, "RadioModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get CarRadioManager failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_1
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/factory/model/car/RadioModel;
    .locals 1

    .line 76
    sget-object v0, Lcom/xiaopeng/factory/model/car/RadioModel;->sRadioModel:Lcom/xiaopeng/factory/model/car/RadioModel;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/xiaopeng/factory/model/car/RadioModel;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/car/RadioModel;-><init>()V

    sput-object v0, Lcom/xiaopeng/factory/model/car/RadioModel;->sRadioModel:Lcom/xiaopeng/factory/model/car/RadioModel;

    .line 79
    :cond_0
    sget-object v0, Lcom/xiaopeng/factory/model/car/RadioModel;->sRadioModel:Lcom/xiaopeng/factory/model/car/RadioModel;

    return-object v0
.end method


# virtual methods
.method public closeFm()Z
    .locals 4

    .line 98
    const-string v0, "RadioModel"

    const-string v1, "closeFm"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setPowerOffTunner()V

    goto :goto_0

    .line 103
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "closeFm mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    nop

    .line 109
    const/4 v0, 0x1

    return v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeFm failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    const/4 v1, 0x0

    return v1
.end method

.method public getRadioFrequency()[I
    .locals 5

    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "result":[I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v1}, Landroid/car/hardware/radio/CarRadioManager;->getRadioFrequency()[I

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 217
    :cond_0
    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "RadioModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioFrequency failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public openFm()Z
    .locals 4

    .line 83
    const-string v0, "RadioModel"

    const-string v1, "openFm"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setPowerOnTunner()V

    goto :goto_0

    .line 88
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "openFm mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    nop

    .line 94
    const/4 v0, 0x1

    return v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFm failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    return v1
.end method

.method public registerCallback()V
    .locals 2

    .line 63
    const-string v0, "RadioModel"

    const-string v1, "registerCallback mRadioManager"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/radio/CarRadioManager;->registerCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    goto :goto_0

    .line 68
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "registerCallback mRadioManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 73
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_1
    return-void
.end method

.method public searchStationDown()Z
    .locals 4

    .line 143
    const-string v0, "RadioModel"

    const-string v1, "searchStationDown"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setRadioSearchStationDown()V

    goto :goto_0

    .line 148
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "searchStationDown mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    nop

    .line 154
    const/4 v0, 0x1

    return v0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchStationDown failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    return v1
.end method

.method public searchStationUp()Z
    .locals 4

    .line 128
    const-string v0, "RadioModel"

    const-string v1, "searchStationUp"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setRadioSearchStationUp()V

    goto :goto_0

    .line 133
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "searchStationUp mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    nop

    .line 139
    const/4 v0, 0x1

    return v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "searchStationUp! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    const/4 v1, 0x0

    return v1
.end method

.method public setFmVolume(II)V
    .locals 4
    .param p1, "channel"    # I
    .param p2, "volume"    # I

    .line 197
    const-string v0, "RadioModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFmVolume channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", volume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/radio/CarRadioManager;->setFmVolume(II)V

    goto :goto_0

    .line 202
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "setFmVolume mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    goto :goto_1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFmVolume failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setRadioBand(I)V
    .locals 4
    .param p1, "band"    # I

    .line 158
    const-string v0, "RadioModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioBand band:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/radio/CarRadioManager;->setRadioBand(I)V

    goto :goto_0

    .line 163
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "setRadioBand mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRadioBand failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setRadioFrequency(II)Z
    .locals 4
    .param p1, "band"    # I
    .param p2, "frequency"    # I

    .line 113
    const-string v0, "RadioModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioFrequency band:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", frequency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/radio/CarRadioManager;->setRadioFrequency(II)V

    goto :goto_0

    .line 118
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "setRadioFrequency mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    nop

    .line 124
    const/4 v0, 0x1

    return v0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRadioFrequency failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    const/4 v1, 0x0

    return v1
.end method

.method public setRadioVolumePercent(II)V
    .locals 4
    .param p1, "channel"    # I
    .param p2, "vol"    # I

    .line 171
    const-string v0, "RadioModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioVolumePercent channel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", vol:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/radio/CarRadioManager;->setRadioVolumePercent(II)V

    goto :goto_0

    .line 176
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "setRadioVolumePercent mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRadioVolumePercent failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setStartFullBandScan()V
    .locals 4

    .line 222
    const-string v0, "RadioModel"

    const-string v1, "setStartFullBandScan"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setStartFullBandScan()V

    goto :goto_0

    .line 227
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "setStartFullBandScan mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    goto :goto_1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStartFullBandScan failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setStopFullBandScan()V
    .locals 4

    .line 235
    const-string v0, "RadioModel"

    const-string v1, "setStopFullBandScan"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setStopFullBandScan()V

    goto :goto_0

    .line 240
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "setStopFullBandScan mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    goto :goto_1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStopFullBandScan failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public startRadioVolumeAutoFocus(I)V
    .locals 4
    .param p1, "percent"    # I

    .line 184
    const-string v0, "RadioModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioVolumeAutoFocus percent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/factory/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/radio/CarRadioManager;->setRadioVolumeAutoFocus(I)V

    goto :goto_0

    .line 189
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "setRadioVolumeAutoFocus mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRadioVolumeAutoFocus failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
