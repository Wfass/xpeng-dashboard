.class public interface abstract Lcom/xiaopeng/xuiservice/carcontrol/ICarControl;
.super Ljava/lang/Object;
.source "ICarControl.java"


# virtual methods
.method public abstract addAmpManagerListener(Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;)V
.end method

.method public abstract addAtlManagerListener(Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;)V
.end method

.method public abstract addAvasManagerListener(Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;)V
.end method

.method public abstract addBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V
.end method

.method public abstract addCarRemindManagerListener(Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;)V
.end method

.method public abstract addCiuManagerListener(Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;)V
.end method

.method public addConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V
    .locals 0
    .param p1, "con"    # Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    .line 115
    return-void
.end method

.method public abstract addEpsManagerListener(Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;)V
.end method

.method public abstract addEspManagerListener(Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;)V
.end method

.method public abstract addHvacManagerListener(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V
.end method

.method public abstract addIcmManagerListener(Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;)V
.end method

.method public abstract addInputManagerListener(Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;)V
.end method

.method public abstract addLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V
.end method

.method public abstract addMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V
.end method

.method public abstract addMsmManagerListener(Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;)V
.end method

.method public abstract addPowerStateListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V
.end method

.method public abstract addScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V
.end method

.method public abstract addSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V
.end method

.method public abstract addTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V
.end method

.method public abstract addTpmsManagerListener(Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;)V
.end method

.method public abstract addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V
.end method

.method public abstract addVcuSpecialManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V
.end method

.method public abstract addVpmManagerListener(Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;)V
.end method

.method public abstract addXpDiagnosticManagerListener(Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;)V
.end method

.method public abstract addXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V
.end method

.method public abstract getCarManager(Ljava/lang/String;)Landroid/car/CarManagerBase;
.end method

.method public abstract removeAmpManagerListener(Landroid/car/hardware/amp/CarAmpManager$CarAmpEventCallback;)V
.end method

.method public abstract removeAtlManagerListener(Landroid/car/hardware/atl/CarAtlManager$CarAtlEventCallback;)V
.end method

.method public abstract removeAvasManagerListener(Landroid/car/hardware/avas/CarAvasManager$CarAvasEventCallback;)V
.end method

.method public abstract removeBcmManagerListener(Landroid/car/hardware/bcm/CarBcmManager$CarBcmEventCallback;)V
.end method

.method public abstract removeCarRemindManagerListener(Landroid/car/xpeng/remind/CarRemindManager$XpRemindEventCallback;)V
.end method

.method public abstract removeCiuManagerListener(Landroid/car/hardware/ciu/CarCiuManager$CarCiuEventCallback;)V
.end method

.method public removeConnectionListener(Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;)V
    .locals 0
    .param p1, "con"    # Lcom/xiaopeng/xuiservice/carcontrol/IServiceConn;

    .line 116
    return-void
.end method

.method public abstract removeEpsManagerListener(Landroid/car/hardware/eps/CarEpsManager$CarEpsEventCallback;)V
.end method

.method public abstract removeEspManagerListener(Landroid/car/hardware/esp/CarEspManager$CarEspEventCallback;)V
.end method

.method public abstract removeHvacManagerListener(Landroid/car/hardware/hvac/CarHvacManager$CarHvacEventCallback;)V
.end method

.method public abstract removeIcmManagerListener(Landroid/car/hardware/icm/CarIcmManager$CarIcmEventCallback;)V
.end method

.method public abstract removeInputManagerListener(Landroid/car/hardware/input/CarInputManager$CarInputEventCallback;)V
.end method

.method public abstract removeLluManagerListener(Landroid/car/hardware/llu/CarLluManager$CarLluEventCallback;)V
.end method

.method public abstract removeMcuManagerListener(Landroid/car/hardware/mcu/CarMcuManager$CarMcuEventCallback;)V
.end method

.method public abstract removeMsmManagerListener(Landroid/car/hardware/msm/CarMsmManager$CarMsmEventCallback;)V
.end method

.method public abstract removePowerStateListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V
.end method

.method public abstract removeScuManagerListener(Landroid/car/hardware/scu/CarScuManager$CarScuEventCallback;)V
.end method

.method public abstract removeSrsManagerListener(Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;)V
.end method

.method public abstract removeTboxManagerListener(Landroid/car/hardware/tbox/CarTboxManager$CarTboxEventCallback;)V
.end method

.method public abstract removeTpmsManagerListener(Landroid/car/hardware/tpms/CarTpmsManager$CarTpmsEventCallback;)V
.end method

.method public abstract removeVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V
.end method

.method public abstract removeVcuSpecialManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V
.end method

.method public abstract removeVpmManagerListener(Landroid/car/hardware/vpm/CarVpmManager$CarVpmEventCallback;)V
.end method

.method public abstract removeXpDiagnosticManagerListener(Landroid/car/diagnostic/XpDiagnosticManager$XpDiagnosticEventCallback;)V
.end method

.method public abstract removeXpuManagerListener(Landroid/car/hardware/xpu/CarXpuManager$CarXpuEventCallback;)V
.end method
