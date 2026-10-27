.class public Lcom/xiaopeng/commonfunc/model/test/RadioTest;
.super Ljava/lang/Object;
.source "RadioTest.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private mCar:Landroid/car/Car;

.field private mCarCallback:Lcom/xiaopeng/commonfunc/model/test/callback/CarCallback;

.field private mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

.field mContext:Landroid/content/Context;

.field private mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "RadioTest "

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Lcom/xiaopeng/commonfunc/model/test/RadioTest$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/test/RadioTest$1;-><init>(Lcom/xiaopeng/commonfunc/model/test/RadioTest;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 44
    new-instance v0, Lcom/xiaopeng/commonfunc/model/test/RadioTest$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/test/RadioTest$2;-><init>(Lcom/xiaopeng/commonfunc/model/test/RadioTest;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

    .line 63
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mContext:Landroid/content/Context;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {p1, v0}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mCar:Landroid/car/Car;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mCar:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/commonfunc/model/test/RadioTest;)Landroid/car/hardware/radio/CarRadioManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/RadioTest;

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/xiaopeng/commonfunc/model/test/RadioTest;Landroid/car/hardware/radio/CarRadioManager;)Landroid/car/hardware/radio/CarRadioManager;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/RadioTest;
    .param p1, "x1"    # Landroid/car/hardware/radio/CarRadioManager;

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/commonfunc/model/test/RadioTest;)Landroid/car/Car;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/RadioTest;

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mCar:Landroid/car/Car;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/commonfunc/model/test/RadioTest;)Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/RadioTest;

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mCarRadioEventCallback:Landroid/car/hardware/radio/CarRadioManager$CarRadioEventCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/commonfunc/model/test/RadioTest;)Lcom/xiaopeng/commonfunc/model/test/callback/CarCallback;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/test/RadioTest;

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mCarCallback:Lcom/xiaopeng/commonfunc/model/test/callback/CarCallback;

    return-object v0
.end method


# virtual methods
.method public closeFm()Z
    .locals 4

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setPowerOffTunner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    nop

    .line 97
    const/4 v0, 0x1

    return v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioTest "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeFm failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v1, 0x0

    return v1
.end method

.method public getRadioFrequency()[I
    .locals 5

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "result":[I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v1}, Landroid/car/hardware/radio/CarRadioManager;->getRadioFrequency()[I

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 184
    :cond_0
    goto :goto_0

    .line 182
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "RadioTest "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRadioFrequency failed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public openFm()Z
    .locals 4

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setPowerOnTunner()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    nop

    .line 85
    const/4 v0, 0x1

    return v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioTest "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFm failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v1, 0x0

    return v1
.end method

.method public registerCallback(Lcom/xiaopeng/commonfunc/model/test/callback/CarCallback;)V
    .locals 0
    .param p1, "carCallback"    # Lcom/xiaopeng/commonfunc/model/test/callback/CarCallback;

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mCarCallback:Lcom/xiaopeng/commonfunc/model/test/callback/CarCallback;

    .line 70
    return-void
.end method

.method public releaseCallback()V
    .locals 1

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mCarCallback:Lcom/xiaopeng/commonfunc/model/test/callback/CarCallback;

    .line 74
    return-void
.end method

.method public searchStationDown()Z
    .locals 4

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setRadioSearchStationDown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :cond_0
    nop

    .line 133
    const/4 v0, 0x1

    return v0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioTest "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search down failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v1, 0x0

    return v1
.end method

.method public searchStationUp()Z
    .locals 4

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setRadioSearchStationUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    nop

    .line 121
    const/4 v0, 0x1

    return v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioTest "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "search up failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v1, 0x0

    return v1
.end method

.method public setFmVolume(II)V
    .locals 4
    .param p1, "channel"    # I
    .param p2, "volume"    # I

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/radio/CarRadioManager;->setFmVolume(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioTest "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFmVolume failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setRadioBand(I)V
    .locals 4
    .param p1, "band"    # I

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/radio/CarRadioManager;->setRadioBand(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioTest "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRadioBand failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setRadioFrequency(II)Z
    .locals 4
    .param p1, "band"    # I
    .param p2, "frequency"    # I

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/radio/CarRadioManager;->setRadioFrequency(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    nop

    .line 109
    const/4 v0, 0x1

    return v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioTest "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRadioFrequency failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    return v1
.end method

.method public setRadioVolumeAutoFocus(I)V
    .locals 4
    .param p1, "percent"    # I

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1}, Landroid/car/hardware/radio/CarRadioManager;->setRadioVolumeAutoFocus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :cond_0
    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioTest "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRadioVolumeAutoFocus failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setRadioVolumePercent(II)V
    .locals 4
    .param p1, "channel"    # I
    .param p2, "vol"    # I

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0, p1, p2}, Landroid/car/hardware/radio/CarRadioManager;->setRadioVolumePercent(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioTest "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRadioVolumePercent failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setStartFullBandScan()V
    .locals 4

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setStartFullBandScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioTest "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStartFullBandScan failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public setStopFullBandScan()V
    .locals 4

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/RadioTest;->mRadioManager:Landroid/car/hardware/radio/CarRadioManager;

    invoke-virtual {v0}, Landroid/car/hardware/radio/CarRadioManager;->setStopFullBandScan()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RadioTest "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStopFullBandScan failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
