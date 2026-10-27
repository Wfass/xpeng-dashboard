.class public Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;
.super Ljava/lang/Object;
.source "CarClientProxy.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;


# instance fields
.field private mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    return-void
.end method


# virtual methods
.method public addAmpManagerListener(Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addAmpManagerListener(Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;)V

    .line 181
    :cond_0
    return-void
.end method

.method public addAtlManagerListener(Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addAtlManagerListener(Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;)V

    .line 174
    :cond_0
    return-void
.end method

.method public addAvasManagerListener(Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addAvasManagerListener(Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;)V

    .line 129
    :cond_0
    return-void
.end method

.method public addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 73
    :cond_0
    return-void
.end method

.method public addCarRemindManagerListener(Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addCarRemindManagerListener(Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;)V

    .line 223
    :cond_0
    return-void
.end method

.method public addCiuManagerListener(Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addCiuManagerListener(Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;)V

    .line 66
    :cond_0
    return-void
.end method

.method public addConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V
    .locals 1
    .param p1, "con"    # Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V

    .line 44
    :cond_0
    return-void
.end method

.method public addEpsManagerListener(Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addEpsManagerListener(Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;)V

    .line 188
    :cond_0
    return-void
.end method

.method public addEspManagerListener(Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addEspManagerListener(Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;)V

    .line 150
    :cond_0
    return-void
.end method

.method public addHvacManagerListener(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addHvacManagerListener(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V

    .line 167
    :cond_0
    return-void
.end method

.method public addIcmManagerListener(Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addIcmManagerListener(Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;)V

    .line 143
    :cond_0
    return-void
.end method

.method public addInputManagerListener(Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    .line 154
    const-string v0, "CarClientProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addInputManagerListener start callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 157
    const-string v0, "CarClientProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addInputManagerListener  next will mCarControl.addInputManagerListener callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addInputManagerListener(Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;)V

    .line 160
    :cond_0
    return-void
.end method

.method public addLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V

    .line 136
    :cond_0
    return-void
.end method

.method public addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 87
    :cond_0
    return-void
.end method

.method public addMsmManagerListener(Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addMsmManagerListener(Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;)V

    .line 115
    :cond_0
    return-void
.end method

.method public addPowerStateListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addPowerStateListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V

    .line 195
    :cond_0
    return-void
.end method

.method public addScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V

    .line 94
    :cond_0
    return-void
.end method

.method public addSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V

    .line 122
    :cond_0
    return-void
.end method

.method public addTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V

    .line 108
    :cond_0
    return-void
.end method

.method public addTpmsManagerListener(Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    .line 213
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addTpmsManagerListener(Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;)V

    .line 216
    :cond_0
    return-void
.end method

.method public addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 80
    :cond_0
    return-void
.end method

.method public addVcuSpecialManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addVcuSpecialManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 202
    :cond_0
    return-void
.end method

.method public addVpmManagerListener(Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addVpmManagerListener(Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;)V

    .line 101
    :cond_0
    return-void
.end method

.method public addXpDiagnosticManagerListener(Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addXpDiagnosticManagerListener(Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;)V

    .line 209
    :cond_0
    return-void
.end method

.method public addXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->addXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V

    .line 59
    :cond_0
    return-void
.end method

.method public getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;

    move-result-object v0

    return-object v0

    .line 398
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeAmpManagerListener(Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeAmpManagerListener(Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;)V

    .line 349
    :cond_0
    return-void
.end method

.method public removeAtlManagerListener(Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeAtlManagerListener(Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;)V

    .line 342
    :cond_0
    return-void
.end method

.method public removeAvasManagerListener(Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeAvasManagerListener(Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;)V

    .line 300
    :cond_0
    return-void
.end method

.method public removeBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V

    .line 244
    :cond_0
    return-void
.end method

.method public removeCarRemindManagerListener(Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeCarRemindManagerListener(Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;)V

    .line 391
    :cond_0
    return-void
.end method

.method public removeCiuManagerListener(Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeCiuManagerListener(Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;)V

    .line 237
    :cond_0
    return-void
.end method

.method public removeConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V
    .locals 1
    .param p1, "con"    # Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V

    .line 52
    :cond_0
    return-void
.end method

.method public removeEpsManagerListener(Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeEpsManagerListener(Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;)V

    .line 356
    :cond_0
    return-void
.end method

.method public removeEspManagerListener(Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeEspManagerListener(Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;)V

    .line 321
    :cond_0
    return-void
.end method

.method public removeHvacManagerListener(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeHvacManagerListener(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V

    .line 335
    :cond_0
    return-void
.end method

.method public removeIcmManagerListener(Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeIcmManagerListener(Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;)V

    .line 314
    :cond_0
    return-void
.end method

.method public removeInputManagerListener(Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeInputManagerListener(Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;)V

    .line 328
    :cond_0
    return-void
.end method

.method public removeLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V

    .line 307
    :cond_0
    return-void
.end method

.method public removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V

    .line 258
    :cond_0
    return-void
.end method

.method public removeMsmManagerListener(Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeMsmManagerListener(Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;)V

    .line 286
    :cond_0
    return-void
.end method

.method public removePowerStateListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removePowerStateListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V

    .line 363
    :cond_0
    return-void
.end method

.method public removeScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V

    .line 265
    :cond_0
    return-void
.end method

.method public removeSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V

    .line 293
    :cond_0
    return-void
.end method

.method public removeTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V

    .line 279
    :cond_0
    return-void
.end method

.method public removeTpmsManagerListener(Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeTpmsManagerListener(Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;)V

    .line 384
    :cond_0
    return-void
.end method

.method public removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 251
    :cond_0
    return-void
.end method

.method public removeVcuSpecialManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeVcuSpecialManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 370
    :cond_0
    return-void
.end method

.method public removeVpmManagerListener(Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeVpmManagerListener(Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;)V

    .line 272
    :cond_0
    return-void
.end method

.method public removeXpDiagnosticManagerListener(Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeXpDiagnosticManagerListener(Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;)V

    .line 377
    :cond_0
    return-void
.end method

.method public removeXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;->removeXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V

    .line 230
    :cond_0
    return-void
.end method

.method public setCarControl(Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;)V
    .locals 0
    .param p1, "control"    # Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/carcontrol/CarClientProxy;->mCarControl:Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;

    .line 36
    return-void
.end method
