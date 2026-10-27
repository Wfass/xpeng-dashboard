.class public Lcom/xiaopeng/commonfunc/model/car/RadioModel;
.super Ljava/lang/Object;
.source "RadioModel.java"


# static fields
.field public static final DEFAULT_FM:I = 0x155cc

.field public static final DEFAULT_VOLUME:I = 0x64

.field public static final FM_GAP:I = 0x64

.field public static final PATH_READ_FM_RSSI:Ljava/lang/String; = "/sys/audio/tunerlevel"

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_OPEN:I = 0x1

.field private static sRadioModel:Lcom/xiaopeng/commonfunc/model/car/RadioModel;


# instance fields
.field final TAG:Ljava/lang/String;

.field private final mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

.field private mRadioManager:Landroid/car/hardware/radio/CarRadioManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "RadioModel"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Lcom/xiaopeng/commonfunc/model/car/RadioModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/car/RadioModel$1;-><init>(Lcom/xiaopeng/commonfunc/model/car/RadioModel;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->getCarManager()V

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->registerCallback()V

    .line 42
    return-void
.end method

.method private getCarManager()V
    .locals 0

    .line 61
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/commonfunc/model/car/RadioModel;
    .locals 1

    .line 45
    sget-object v0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->sRadioModel:Lcom/xiaopeng/commonfunc/model/car/RadioModel;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;

    invoke-direct {v0}, Lcom/xiaopeng/commonfunc/model/car/RadioModel;-><init>()V

    sput-object v0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->sRadioModel:Lcom/xiaopeng/commonfunc/model/car/RadioModel;

    .line 48
    :cond_0
    sget-object v0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->sRadioModel:Lcom/xiaopeng/commonfunc/model/car/RadioModel;

    return-object v0
.end method


# virtual methods
.method public closeFm()Z
    .locals 4

    .line 92
    const-string v0, "RadioModel"

    const-string v1, "closeFm"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setPowerOffTunner()V

    goto :goto_0

    .line 97
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "closeFm mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    nop

    .line 103
    const/4 v0, 0x1

    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
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

    .line 101
    const/4 v1, 0x0

    return v1
.end method

.method public getRadioFrequency()[I
    .locals 5

    .line 204
    const/4 v0, 0x0

    .line 206
    .local v0, "result":[I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v1}, Landroid/car/hardware/radio/CarRadioManager;->getRadioFrequency()[I

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 211
    :cond_0
    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 210
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

    .line 212
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public openFm()Z
    .locals 4

    .line 77
    const-string v0, "RadioModel"

    const-string v1, "openFm"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setPowerOnTunner()V

    goto :goto_0

    .line 82
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "openFm mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    nop

    .line 88
    const/4 v0, 0x1

    return v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
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

    .line 86
    const/4 v1, 0x0

    return v1
.end method

.method public registerCallback()V
    .locals 2

    .line 64
    const-string v0, "RadioModel"

    const-string v1, "registerCallback mRadioManager"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

    invoke-virtual {v0, v1}, Landroid/car/hardware/radio/CarRadioManager;->registerCallback(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V

    goto :goto_0

    .line 69
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "registerCallback mRadioManager == null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    goto :goto_1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/car/CarNotConnectedException;
    invoke-virtual {v0}, Landroid/car/CarNotConnectedException;->printStackTrace()V

    .line 74
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    :goto_1
    return-void
.end method

.method public searchStationDown()Z
    .locals 4

    .line 137
    const-string v0, "RadioModel"

    const-string v1, "searchStationDown"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setRadioSearchStationDown()V

    goto :goto_0

    .line 142
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "searchStationDown mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    nop

    .line 148
    const/4 v0, 0x1

    return v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
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

    .line 146
    const/4 v1, 0x0

    return v1
.end method

.method public searchStationUp()Z
    .locals 4

    .line 122
    const-string v0, "RadioModel"

    const-string v1, "searchStationUp"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setRadioSearchStationUp()V

    goto :goto_0

    .line 127
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "searchStationUp mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    nop

    .line 133
    const/4 v0, 0x1

    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
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

    .line 131
    const/4 v1, 0x0

    return v1
.end method

.method public setFmVolume(II)V
    .locals 4
    .param p1, "channel"    # I
    .param p2, "volume"    # I

    .line 191
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

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/radio/CarRadioManager;->setFmVolume(II)V

    goto :goto_0

    .line 196
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "setFmVolume mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    goto :goto_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
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

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setRadioBand(I)V
    .locals 4
    .param p1, "band"    # I

    .line 152
    const-string v0, "RadioModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioBand band:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/radio/CarRadioManager;->setRadioBand(I)V

    goto :goto_0

    .line 157
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "setRadioBand mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    goto :goto_1

    .line 159
    :catch_0
    move-exception v0

    .line 160
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

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setRadioFrequency(II)Z
    .locals 4
    .param p1, "band"    # I
    .param p2, "frequency"    # I

    .line 107
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

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/radio/CarRadioManager;->setRadioFrequency(II)V

    goto :goto_0

    .line 112
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "setRadioFrequency mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    nop

    .line 118
    const/4 v0, 0x1

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
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

    .line 116
    const/4 v1, 0x0

    return v1
.end method

.method public setRadioVolumePercent(II)V
    .locals 4
    .param p1, "channel"    # I
    .param p2, "vol"    # I

    .line 165
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

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/radio/CarRadioManager;->setRadioVolumePercent(II)V

    goto :goto_0

    .line 170
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "setRadioVolumePercent mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
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

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setStartFullBandScan()V
    .locals 4

    .line 216
    const-string v0, "RadioModel"

    const-string v1, "setStartFullBandScan"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setStartFullBandScan()V

    goto :goto_0

    .line 221
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "setStartFullBandScan mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    goto :goto_1

    .line 223
    :catch_0
    move-exception v0

    .line 224
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

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public setStopFullBandScan()V
    .locals 4

    .line 229
    const-string v0, "RadioModel"

    const-string v1, "setStopFullBandScan"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setStopFullBandScan()V

    goto :goto_0

    .line 234
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "setStopFullBandScan mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    goto :goto_1

    .line 236
    :catch_0
    move-exception v0

    .line 237
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

    .line 239
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public startRadioVolumeAutoFocus(I)V
    .locals 4
    .param p1, "percent"    # I

    .line 178
    const-string v0, "RadioModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioVolumeAutoFocus percent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/car/RadioModel;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/radio/CarRadioManager;->setRadioVolumeAutoFocus(I)V

    goto :goto_0

    .line 183
    :cond_0
    const-string v0, "RadioModel"

    const-string v1, "setRadioVolumeAutoFocus mRadioManager is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    goto :goto_1

    .line 185
    :catch_0
    move-exception v0

    .line 186
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

    .line 188
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
