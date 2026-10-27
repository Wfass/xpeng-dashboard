.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;
.super Ljava/lang/Object;
.source "WindowDoorBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;


# static fields
.field private static final DOOR_ANTI_PINCH_HEAD:F = 80.0f

.field private static final DOOR_STATE_CLOSED:Ljava/lang/String; = "0"

.field private static final DOOR_STATE_OPENED:Ljava/lang/String; = "1"

.field private static final STATE_SEPARATOR:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "WindowDoorBaseViewModel"

.field public static final TRUNK_ACTION_INVALIDE:I = -0x1

.field private static final TRUNK_ACTION_SUCCESS:I = 0x0

.field private static final TRUNK_NO_P_GEAR:I = 0x1

.field private static final TRUNK_OVER_HEATING:I = 0x3

.field private static final TRUNK_SYSTEM_ERROR:I = 0x2

.field private static final WINDOW_ANTI_PINCH_HEAD:F = 58.0f

.field private static final WINDOW_VENT_THRESHOLD_FRONT:F = 89.0f

.field private static final WINDOW_VENT_THRESHOLD_REAR:F = 80.0f


# instance fields
.field mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

.field private mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_bcm"

    .line 56
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const-string/jumbo v1, "xp_vcu"

    .line 58
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    return-void
.end method

.method private checkSliderDoorStateError(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "left"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getLeftSlideDoorState()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getRightSlideDoorState()I

    move-result p1

    :goto_0
    if-nez p1, :cond_1

    .line 769
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_error_state_control_tips:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private static convertMixedDoorState([I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorState"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 1146
    array-length v0, p0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_2

    .line 1150
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-gt v1, v2, :cond_3

    .line 1152
    aget v3, p0, v1

    if-nez v3, :cond_1

    const-string v3, "0"

    goto :goto_1

    :cond_1
    const-string v3, "1"

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v1, v2, :cond_2

    const-string v2, ","

    .line 1154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1157
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1147
    :cond_4
    :goto_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v0, "door state array is error"

    invoke-static {p0, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertTrunkState(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1423
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Pause_Closing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    goto :goto_0

    .line 1419
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Closing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    goto :goto_0

    .line 1415
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Opened:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    goto :goto_0

    .line 1412
    :pswitch_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Pause_Opening:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    goto :goto_0

    .line 1409
    :pswitch_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Opening:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    goto :goto_0

    .line 1428
    :pswitch_5
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Closed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public static convertTrunkStateToQuickSetting(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1396
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Min_Open_Angle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    goto :goto_0

    .line 1389
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Pause_Closing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    goto :goto_0

    .line 1385
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Closing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    goto :goto_0

    .line 1381
    :pswitch_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Opened:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    goto :goto_0

    .line 1378
    :pswitch_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Pause_Opening:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    goto :goto_0

    .line 1375
    :pswitch_5
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Opening:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    goto :goto_0

    .line 1393
    :pswitch_6
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Closed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSdcRunningCmd(ZZ)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "open"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1161
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getLeftSdcSysRunningState()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getRightSdcSysRunningState()I

    move-result v0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz p2, :cond_1

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_2
    const/4 v1, 0x1

    .line 1176
    :cond_3
    :goto_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSdcRunningCmd, left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", open="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", cmd="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method private handleDoorStateChanged([I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorState"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1126
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_3

    :cond_0
    new-array v0, v1, [Z

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x3

    if-gt v3, v4, :cond_4

    .line 1134
    aget v5, p1, v3

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    aput-boolean v5, v0, v3

    .line 1135
    aget-boolean v5, v0, v3

    if-eqz v5, :cond_2

    const-string v5, "0"

    goto :goto_2

    :cond_2
    const-string v5, "1"

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v3, v4, :cond_3

    const-string v4, ","

    .line 1137
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1141
    :cond_4
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleDoorStateChanged([Z)V

    .line 1142
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleDoorStateChanged(Ljava/lang/String;)V

    return-void

    .line 1127
    :cond_5
    :goto_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v0, "Door state array is invalid"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkLeftSlideDoorCloseAvailability()I
    .locals 2

    .line 825
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getLeftSlideDoorState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 826
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "close left slide door failed, left slide door is already closed"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    return v0

    .line 829
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isLeftSlideDoorFault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 830
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "close left slide door failed, left slide door lock is locked"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_close_fail_fault_left:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 v0, 0x4

    return v0

    .line 834
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isLeftSlideDoorThermalProtect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 835
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "close left slide door failed, left slide door is ThermalProtect"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_open_fail_thermal_protect:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 v0, 0x5

    return v0

    .line 839
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getLeftSlideDoorMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 840
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "close left slide door failed, left slide door is not in power mode"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_close_fail_mode_left:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 v0, 0x6

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public checkLeftSlideDoorOpenAvailability(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isToast"
        }
    .end annotation

    .line 786
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getLeftSlideDoorState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 787
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v0, "open left slide door failed, left slide door is already full open"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    goto :goto_0

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v0

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    if-eqz p1, :cond_1

    .line 791
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_open_fail_running:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 793
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v0, "open left slide door failed, vehicle is running"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    goto :goto_0

    .line 795
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isLeftSlideDoorFault()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 796
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "open left slide door failed, left slide door is fault"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 798
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_open_fail_fault_left:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    .line 801
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isLeftSlideDoorThermalProtect()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 802
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "open left slide door failed, left slide door Thermal Protect"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 804
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_open_fail_thermal_protect:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    .line 807
    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getLeftSlideDoorMode()I

    move-result v0

    if-eqz v0, :cond_8

    .line 808
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "open left slide door failed, left slide door mode is not power mode"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 810
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_open_fail_mode_left:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_7
    const/4 v1, 0x6

    .line 814
    :cond_8
    :goto_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLeftSlideDoorOpenAvailability result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public checkLeftSlideDoorStopAvailability()I
    .locals 3

    .line 849
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isLeftSlideDoorFault()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    .line 850
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v2, "Stop left slide door failed, left slide door is Fault"

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_pause_fail_fault_left:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    .line 854
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isLeftSlideDoorThermalProtect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "open left slide door failed, left slide door Thermal Protect"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_open_fail_thermal_protect:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 v0, 0x5

    return v0

    .line 859
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getLeftSlideDoorState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getLeftSlideDoorState()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public checkRightSlideDoorCloseAvailability()I
    .locals 2

    .line 909
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getRightSlideDoorState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 910
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "close Right slide door failed, left slide door is already closed"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    return v0

    .line 913
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isRightSlideDoorFault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 914
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "close Right slide door failed, left slide door lock is locked"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_close_fail_fault_right:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 v0, 0x4

    return v0

    .line 918
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isRightSlideDoorThermalProtect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 919
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "close Right slide door failed, left slide door is ThermalProtect"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_open_fail_thermal_protect:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 v0, 0x5

    return v0

    .line 923
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getRightSlideDoorMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 924
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "close Right slide door failed, left slide door is not in power mode"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_close_fail_mode_right:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 v0, 0x6

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public checkRightSlideDoorOpenAvailability(Z)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isToast"
        }
    .end annotation

    .line 868
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getRightSlideDoorState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    .line 869
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v0, "open right slide door failed, left slide door is already full open"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    goto/16 :goto_0

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v0

    const/high16 v3, 0x40400000    # 3.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    if-eqz p1, :cond_1

    .line 873
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_open_fail_running:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 875
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v0, "open right slide door failed, vehicle is running"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    .line 877
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getChargePortUnlock(I)I

    move-result v0

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isRightSlideDoorBeyondOpeningLimit()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 878
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "open right slide door not fully for charge port opoen"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 880
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_open_middle_charge_port:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    .line 883
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isRightSlideDoorFault()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 884
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "open right slide door failed, left slide door is Fault"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 886
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_open_fail_fault_right:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    .line 889
    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isRightSlideDoorThermalProtect()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 890
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "open right slide door failed, left slide door is Thermal Protect"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 892
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_open_fail_thermal_protect:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_7
    const/4 v1, 0x5

    goto :goto_0

    .line 895
    :cond_8
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getRightSlideDoorMode()I

    move-result v0

    if-eqz v0, :cond_a

    .line 896
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "open right slide door failed, left slide door mode is not power mode"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    .line 898
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_open_fail_mode_right:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :cond_9
    const/4 v1, 0x6

    .line 902
    :cond_a
    :goto_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkRightSlideDoorOpenAvailability result: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public checkRightSlideDoorStopAvailability()I
    .locals 4

    .line 933
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isRightSlideDoorFault()Z

    move-result v0

    const/4 v1, 0x4

    const-string v2, "Stop right slide door failed, left slide door is Fault"

    if-eqz v0, :cond_0

    .line 934
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_pause_fail_fault_right:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    .line 938
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isRightSlideDoorThermalProtect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 939
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v1, "open right slide door failed, left slide door is Thermal Protect"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->slide_door_open_fail_thermal_protect:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 v0, 0x5

    return v0

    .line 943
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getRightSlideDoorState()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getRightSlideDoorState()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    return v0

    .line 944
    :cond_3
    :goto_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public closeSunShade()V
    .locals 2

    .line 1254
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlSunShade(I)V

    return-void
.end method

.method public controlFLWin(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWindowMoveCmd(II)V

    return-void
.end method

.method public controlFRWin(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 388
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWindowMoveCmd(II)V

    return-void
.end method

.method public controlLeftSlideDoor(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation

    .line 709
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlLeftSlideDoor, cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 710
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->checkSliderDoorStateError(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const-string p1, "Invalid control type"

    .line 732
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 725
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->checkLeftSlideDoorStopAvailability()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 726
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlLeftSlideDoor(I)V

    goto :goto_0

    :cond_2
    const-string p1, "Left slide door is not in opening or closing state"

    .line 728
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 720
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->checkLeftSlideDoorCloseAvailability()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 721
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlLeftSlideDoor(I)V

    goto :goto_0

    .line 715
    :cond_4
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->checkLeftSlideDoorOpenAvailability(Z)I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 716
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlLeftSlideDoor(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public controlLeftSlideDoorByXKey()V
    .locals 4

    .line 952
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getLeftSlideDoorState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    .line 966
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->controlLeftSlideDoor(I)V

    goto :goto_0

    .line 959
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->controlLeftSlideDoor(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 955
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->controlLeftSlideDoor(I)V

    :goto_0
    return-void
.end method

.method public controlRLWin(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    move p1, v0

    .line 394
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWindowMoveCmd(II)V

    return-void
.end method

.method public controlRRWin(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWindowMoveCmd(II)V

    return-void
.end method

.method public controlRearTrunk(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1073
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 1074
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->trunk_unable_with_p_gear_level:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    :cond_0
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 1081
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 1082
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->trunk_unable_by_xKey_p_gear_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v1

    :cond_1
    const-string v0, "isSupportTrunkOverHeatingProtected"

    .line 1085
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1086
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTrunkWorkModeStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v1, :cond_2

    .line 1088
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->trunk_system_faulty:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return v2

    :cond_2
    if-ne v0, v2, :cond_3

    .line 1092
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->trunk_over_heating:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    const/4 p1, 0x3

    return p1

    .line 1096
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlRearTrunk(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public controlRightSlideDoor(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation

    .line 739
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlRightSlideDoor, cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 740
    invoke-direct {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->checkSliderDoorStateError(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const-string p1, "Invalid control type"

    .line 762
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 755
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->checkRightSlideDoorStopAvailability()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 756
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlRightSlideDoor(I)V

    goto :goto_0

    :cond_2
    const-string p1, "Right slide door is not in opening or closing state"

    .line 758
    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->checkRightSlideDoorCloseAvailability()I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 751
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlRightSlideDoor(I)V

    goto :goto_0

    .line 745
    :cond_4
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->checkRightSlideDoorOpenAvailability(Z)I

    move-result p1

    if-ne p1, v1, :cond_5

    .line 746
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlRightSlideDoor(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public controlRightSlideDoorByXKey()V
    .locals 4

    .line 973
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getRightSlideDoorState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    .line 987
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->controlRightSlideDoor(I)V

    goto :goto_0

    .line 980
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->controlRightSlideDoor(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 976
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->controlRightSlideDoor(I)V

    :goto_0
    return-void
.end method

.method public controlSdc(ZI)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "cmd"
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 556
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 557
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 558
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 559
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "controlSdc not GEAR_LEVEL_P/N or speed > 3"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 560
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->sdc_control_failed_tips:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 566
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlLeftSdc(I)V

    goto :goto_0

    .line 568
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlRightSdc(I)V

    :goto_0
    return-void
.end method

.method public controlSdc(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "left",
            "open"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 542
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 543
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 544
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getCarSpeed()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 545
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    const-string v0, "not GEAR_LEVEL_P/N or speed > 3"

    invoke-static {p1, v0, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 546
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget p2, Lcom/xiaopeng/carcontrolmodule/R$string;->sdc_control_failed_tips:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    return-void

    .line 550
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getSdcRunningCmd(ZZ)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->controlSdc(ZI)V

    return-void
.end method

.method public controlSdcByXKey(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getLeftSdcSysRunningState()I

    move-result v0

    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getRightSdcSysRunningState()I

    move-result v0

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v3, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 612
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->sdc_error_toast:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_1

    .line 609
    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->controlSdc(ZI)V

    goto :goto_1

    .line 605
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->controlSdc(ZI)V

    goto :goto_1

    .line 601
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->controlSdc(ZI)V

    :goto_1
    return-void
.end method

.method public controlWindowAuto(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlWindowAuto(Z)V

    return-void
.end method

.method public controlWindowVent()V
    .locals 4

    const-string v0, "isSupportSdc"

    .line 361
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 362
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isAllDoorsClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlWinVent()V

    goto :goto_2

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x0

    .line 366
    invoke-virtual {p0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isDoorClosed(I)Z

    move-result v1

    const/high16 v2, 0x42b20000    # 89.0f

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getFLWinPos()F

    move-result v1

    :goto_0
    const/4 v3, 0x1

    .line 367
    invoke-virtual {p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isDoorClosed(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getFRWinPos()F

    move-result v2

    :goto_1
    const/high16 v3, 0x42a00000    # 80.0f

    .line 365
    invoke-interface {v0, v1, v2, v3, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWindowsMovePositions(FFFF)V

    goto :goto_2

    .line 371
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlWinVent()V

    :goto_2
    return-void
.end method

.method public directControlLeftSlideDoor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation

    .line 699
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlLeftSlideDoor(I)V

    return-void
.end method

.method public directControlRightSlideDoor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation

    .line 704
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlRightSlideDoor(I)V

    return-void
.end method

.method public getAutoWindowLockSw()Z
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAutoWindowLockSw()Z

    move-result v0

    return v0
.end method

.method public getBonnetState()Z
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getBonnetState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDoorLockState()Z
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorLockState()Z

    move-result v0

    return v0
.end method

.method public getElcTrunkPos()I
    .locals 1

    .line 1059
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getElcTrunkPos()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getElcTrunkState()I
    .locals 1

    .line 1049
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getElcTrunkState()I

    move-result v0

    return v0
.end method

.method public getFLWinPos()F
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getWinPos(I)F

    move-result v0

    return v0
.end method

.method public getFRWinPos()F
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getWinPos(I)F

    move-result v0

    return v0
.end method

.method public getLeftSdcDoorPos()I
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftSdcDoorPos()I

    move-result v0

    return v0
.end method

.method public getLeftSdcSysRunningState()I
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftSdcSysRunningState()I

    move-result v0

    return v0
.end method

.method public getLeftSlideDoorMode()I
    .locals 1

    .line 669
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftSlideDoorMode()I

    move-result v0

    return v0
.end method

.method public getLeftSlideDoorPos()I
    .locals 1

    .line 1024
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftSlideDoorPosition()I

    move-result v0

    return v0
.end method

.method public getLeftSlideDoorState()I
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftSlideDoorState()I

    move-result v0

    return v0
.end method

.method public getMixedDoorState()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorsState()[I

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->convertMixedDoorState([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRLWinPos()F
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getWinPos(I)F

    move-result v0

    return v0
.end method

.method public getRRWinPos()F
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getWinPos(I)F

    move-result v0

    return v0
.end method

.method public getRearTrunkState()I
    .locals 1

    .line 1044
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRearTrunk()I

    move-result v0

    return v0
.end method

.method public getRightSdcDoorPos()I
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightSdcDoorPos()I

    move-result v0

    return v0
.end method

.method public getRightSdcSysRunningState()I
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightSdcSysRunningState()I

    move-result v0

    return v0
.end method

.method public getRightSlideDoorMode()I
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightSlideDoorMode()I

    move-result v0

    return v0
.end method

.method public getRightSlideDoorPos()I
    .locals 1

    .line 1029
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightSlideDoorPosition()I

    move-result v0

    return v0
.end method

.method public getRightSlideDoorState()I
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightSlideDoorState()I

    move-result v0

    return v0
.end method

.method public getSdcBrakeCloseDoorCfg()I
    .locals 1

    .line 664
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSdcBrakeCloseDoorCfg()I

    move-result v0

    return v0
.end method

.method public getSdcKeyCfg()I
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSdcKeyOpenCtrlCfg()I

    move-result v0

    return v0
.end method

.method public getSdcMaxAutoDoorOpeningAngle()I
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSdcMaxAutoDoorOpeningAngle()I

    move-result v0

    return v0
.end method

.method public getSdcWinAutoDown()Z
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSdcWindowsAutoDownSwitch()Z

    move-result v0

    return v0
.end method

.method public getSunShadePos()I
    .locals 1

    .line 1244
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getSunShadePos()I

    move-result v0

    return v0
.end method

.method public getTrunkFullOpenPos()I
    .locals 1

    .line 1362
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTrunkFullOpenPos()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->convertTrunkFullOpenPosLevel2Pos(I)I

    move-result v0

    return v0
.end method

.method public getTrunkWorkStatus()I
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getTrunkWorkModeStatus()I

    move-result v0

    return v0
.end method

.method public getWindowsPos()[F
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAllWindowPosition()[F

    move-result-object v0

    return-object v0
.end method

.method public getWindowsState()[Z
    .locals 7

    .line 315
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getWindowsPos()[F

    move-result-object v0

    if-eqz v0, :cond_1

    .line 316
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    .line 317
    array-length v1, v0

    new-array v2, v1, [Z

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    .line 319
    aget v5, v0, v4

    const/high16 v6, 0x42be0000    # 95.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v3

    :goto_1
    aput-boolean v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method protected abstract handleAutoDoorHandleChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method protected abstract handleAutoWindowLockSwChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method protected abstract handleBonnetStateChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isClosed"
        }
    .end annotation
.end method

.method protected abstract handleCentralLockStateChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLocked"
        }
    .end annotation
.end method

.method protected abstract handleDoorStateChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mixedDoorState"
        }
    .end annotation
.end method

.method protected abstract handleDoorStateChanged([Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorState"
        }
    .end annotation
.end method

.method protected abstract handleElcTrunkPosChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method protected abstract handleHighSpdCloseWinChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method protected abstract handleKeyCtrlModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method protected abstract handleLeftSdcDoorPosChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method protected abstract handleLeftSdcStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method protected abstract handleLeftSdcSysRunningStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method protected abstract handleLeftSlideDoorLockStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method protected abstract handleLeftSlideDoorModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method protected abstract handleLeftSlideDoorPosChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method protected abstract handleLeftSlideDoorStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method protected abstract handleRightSdcDoorPosChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method protected abstract handleRightSdcStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method protected abstract handleRightSdcSysRunningStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method protected abstract handleRightSlideDoorLockStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method protected abstract handleRightSlideDoorModeChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method protected abstract handleRightSlideDoorPosChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method protected abstract handleRightSlideDoorStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method protected abstract handleSdcAutoWinDownChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation
.end method

.method protected abstract handleSdcBrakeCloseDoorCfgChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation
.end method

.method protected abstract handleSdcKeyCfgChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation
.end method

.method protected abstract handleSdcMaxDoorOpeningAngleChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation
.end method

.method protected abstract handleSunShadePosChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation
.end method

.method protected abstract handleTrunkStateChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation
.end method

.method protected abstract handleTrunkWorkStatusChanged(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation
.end method

.method protected handleWinPosChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    return-void
.end method

.method protected abstract handleWindowLockStateChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public isAllDoorsClosed()Z
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorsState()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 242
    array-length v2, v0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    aget v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_1

    aget v2, v0, v3

    if-nez v2, :cond_1

    const/4 v2, 0x2

    aget v2, v0, v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    aget v0, v0, v2

    if-nez v0, :cond_1

    move v1, v3

    :cond_1
    :goto_0
    return v1
.end method

.method public isAutoDoorHandleEnabled()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isAutoDoorHandleEnabled()Z

    move-result v0

    return v0
.end method

.method public isCentralLocked()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorLockState()Z

    move-result v0

    return v0
.end method

.method public isDoorClosed(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorIdx"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getDoorsState()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 233
    array-length v2, v0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    aget p1, v0, p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isHighSpdCloseWinEnabled()Z
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isHighSpdCloseWinEnabled()Z

    move-result v0

    return v0
.end method

.method public isLeftSlideDoorFault()Z
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftSlideDoorFaultSt()Z

    move-result v0

    return v0
.end method

.method public isLeftSlideDoorLocked()Z
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftSlideDoorLockState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLeftSlideDoorThermalProtect()Z
    .locals 1

    .line 1014
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getLeftSlideDoorThermalProtectSt()Z

    move-result v0

    return v0
.end method

.method public isRightSlideDoorBeyondOpeningLimit()Z
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isRightSlideDoorBeyondOpeningLimit()Z

    move-result v0

    return v0
.end method

.method public isRightSlideDoorFault()Z
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightSlideDoorFaultSt()Z

    move-result v0

    return v0
.end method

.method public isRightSlideDoorLocked()Z
    .locals 2

    .line 999
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightSlideDoorLockState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRightSlideDoorThermalProtect()Z
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getRightSlideDoorThermalProtectSt()Z

    move-result v0

    return v0
.end method

.method public isSunShadeBlocked()Z
    .locals 1

    .line 1279
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isSunShadeAntiPinch()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isSunShadeIceBreak()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSunShadeHotProtect()Z
    .locals 1

    .line 1274
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isSunShadeHotProtect()Z

    move-result v0

    return v0
.end method

.method public isSunShadeInitialized()Z
    .locals 1

    .line 1269
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isSunShadeInitialized()Z

    move-result v0

    return v0
.end method

.method public isTrunkClosed()Z
    .locals 1

    .line 1054
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getRearTrunkState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTrunkSensorEnable()Z
    .locals 1

    .line 1352
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isTrunkSensorEnable()Z

    move-result v0

    return v0
.end method

.method public isWindowInitFailed(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/4 v0, 0x1

    .line 328
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isWindowInitFailed(IZ)Z

    move-result p1

    return p1
.end method

.method public isWindowInitFailed(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "tts"
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->isWindowInitFailed(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 334
    sget p1, Lcom/xiaopeng/carcontrolmodule/R$string;->window_init_failed:I

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 337
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isWindowLockActive()Z
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getWindowLockState()Z

    move-result v0

    return v0
.end method

.method public isWindowOpened()Z
    .locals 4

    .line 346
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getWindowsState()[Z

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 348
    aget-boolean v2, v0, v1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    aget-boolean v2, v0, v3

    if-nez v2, :cond_0

    const/4 v2, 0x2

    aget-boolean v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    move v1, v3

    :cond_1
    return v1
.end method

.method public onAutoDoorHandleChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleAutoDoorHandleChanged(Z)V

    return-void
.end method

.method public onAutoWindowLockSwChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 109
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleAutoWindowLockSwChanged(Z)V

    return-void
.end method

.method public onBonnetStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 84
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleBonnetStateChanged(Z)V

    return-void
.end method

.method public onCentralLockStateChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLocked"
        }
    .end annotation

    .line 68
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleCentralLockStateChanged(Z)V

    return-void
.end method

.method public onDoorStateChanged([I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorState"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleDoorStateChanged([I)V

    return-void
.end method

.method public onElcTrunkPosChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    add-int/lit8 p1, p1, -0x1

    .line 94
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleElcTrunkPosChanged(I)V

    return-void
.end method

.method public onHighSpdCloseWinChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 119
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleHighSpdCloseWinChanged(Z)V

    return-void
.end method

.method public onLeftSdcDoorPosChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 139
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleLeftSdcDoorPosChanged(I)V

    return-void
.end method

.method public onLeftSdcStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleLeftSdcStateChanged(I)V

    return-void
.end method

.method public onLeftSdcSysRunningStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleLeftSdcSysRunningStateChanged(I)V

    return-void
.end method

.method public onLeftSlideDoorLockStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 198
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleLeftSlideDoorLockStateChanged(I)V

    return-void
.end method

.method public onLeftSlideDoorModeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 178
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleLeftSlideDoorModeChanged(I)V

    return-void
.end method

.method public onLeftSlideDoorPosChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 208
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleLeftSlideDoorPosChanged(I)V

    return-void
.end method

.method public onLeftSlideDoorStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 188
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleLeftSlideDoorStateChanged(I)V

    return-void
.end method

.method public onRightSdcDoorPosChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleRightSdcDoorPosChanged(I)V

    return-void
.end method

.method public onRightSdcStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 134
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleRightSdcStateChanged(I)V

    return-void
.end method

.method public onRightSdcSysRunningStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 153
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleRightSdcSysRunningStateChanged(I)V

    return-void
.end method

.method public onRightSlideDoorLockStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 203
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleRightSlideDoorLockStateChanged(I)V

    return-void
.end method

.method public onRightSlideDoorModeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleRightSlideDoorModeChanged(I)V

    return-void
.end method

.method public onRightSlideDoorPosChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 213
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleRightSlideDoorPosChanged(I)V

    return-void
.end method

.method public onRightSlideDoorStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleRightSlideDoorStateChanged(I)V

    return-void
.end method

.method public onSdcBrakeCloseDoorCfgChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation

    .line 173
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleSdcBrakeCloseDoorCfgChange(I)V

    return-void
.end method

.method public onSdcKeyCfgChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation

    .line 158
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleSdcKeyCfgChanged(I)V

    return-void
.end method

.method public onSdcMaxDoorOpeningAngleChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 168
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleSdcMaxDoorOpeningAngleChange(I)V

    return-void
.end method

.method public onSdcWinAutoDown(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation

    .line 163
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleSdcAutoWinDownChanged(Z)V

    return-void
.end method

.method public onSunShadePosChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    const/16 v0, 0x64

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 1234
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleSunShadePosChange(I)V

    return-void
.end method

.method public onTrunkStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 89
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleTrunkStateChanged(I)V

    return-void
.end method

.method public onTrunkWorkStatusChange(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 99
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleTrunkWorkStatusChanged(I)V

    return-void
.end method

.method public onWindowKeyControlModeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleKeyCtrlModeChanged(I)V

    return-void
.end method

.method public onWindowLockStateChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 114
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleWindowLockStateChanged(Z)V

    return-void
.end method

.method public onWindowPosChanged(IF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "window",
            "windowStates"
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->handleWinPosChanged(I)V

    return-void
.end method

.method public openRearTrunk()V
    .locals 2

    .line 1064
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlRearTrunk(I)V

    goto :goto_0

    .line 1067
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrolmodule/R$string;->trunk_unable_with_none_park_gear:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    :goto_0
    return-void
.end method

.method public openSunShade()V
    .locals 2

    .line 1249
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlSunShade(I)V

    return-void
.end method

.method public varargs registerBusiness([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 1342
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->registerBusiness([Ljava/lang/String;)V

    return-void
.end method

.method public resetSunShade()V
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->resetSunShade()V

    return-void
.end method

.method public setAllWinPos(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x4

    .line 405
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isWindowInitFailed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isWindowLockActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->win_lock_is_active:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZ)V

    return-void

    .line 412
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWinPos(IF)V

    return-void
.end method

.method public setAutoDoorHandleEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAutoDoorHandleEnable(ZZ)V

    return-void
.end method

.method public setAutoWindowLockSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAutoWindowLockSw(Z)V

    return-void
.end method

.method public setCentralLock(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lock"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setCentralLock(Z)V

    return-void
.end method

.method public setFLWinPos(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isWindowInitFailed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 420
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWinPos(IF)V

    return-void
.end method

.method public setFRWinPos(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x1

    .line 425
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isWindowInitFailed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWinPos(IF)V

    return-void
.end method

.method public setFrontWinPos(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x5

    .line 467
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isWindowInitFailed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-interface {v0, p1, p1, v1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWindowsMovePositions(FFFF)V

    return-void
.end method

.method public setHighSpdCloseWin(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setHighSpdCloseWin(Z)V

    return-void
.end method

.method public setLeftSlideDoorMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 674
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setLeftSlideDoorMode(I)V

    return-void
.end method

.method public setLeftWinPos(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x7

    .line 449
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isWindowInitFailed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-interface {v0, p1, v1, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWindowsMovePositions(FFFF)V

    return-void
.end method

.method public setRLWinPos(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x2

    .line 433
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isWindowInitFailed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 436
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWinPos(IF)V

    return-void
.end method

.method public setRRWinPos(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x3

    .line 441
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isWindowInitFailed(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v1, v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWinPos(IF)V

    return-void
.end method

.method public setRearWinPos(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x6

    .line 476
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isWindowInitFailed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-interface {v0, v1, v1, p1, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWindowsMovePositions(FFFF)V

    return-void
.end method

.method public setRightSlideDoorMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setRightSlideDoorMode(I)V

    return-void
.end method

.method public setRightWinPos(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/16 v0, 0x8

    .line 458
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->isWindowInitFailed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-interface {v0, v1, p1, v1, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWindowsMovePositions(FFFF)V

    return-void
.end method

.method public setSdcBrakeCloseDoorCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSdcBrakeCloseDoorCfg(I)V

    return-void
.end method

.method public setSdcKeyCfg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cfg"
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSdcKeyOpenCtrlCfg(I)V

    return-void
.end method

.method public setSdcMaxAutoDoorOpeningAngle(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "angle"
        }
    .end annotation

    .line 639
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getLeftSdcSysRunningState()I

    move-result v0

    .line 640
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->getRightSdcSysRunningState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    if-eq v1, v3, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 648
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSdcMaxAutoDoorOpeningAngle, angle: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 649
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSdcMaxAutoDoorOpeningAngle(I)V

    return-void

    .line 645
    :cond_1
    :goto_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->TAG:Ljava/lang/String;

    const-string v0, "The Sdc System is Running, return"

    invoke-static {p1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setSdcWinAutoDown(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSdcWindowsAutoDownSwitch(Z)V

    return-void
.end method

.method public setSunShadePos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1239
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setSunShadePos(I)V

    return-void
.end method

.method public setTrunkFullOpenPos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1367
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setTrunkFullOpenPos(I)V

    return-void
.end method

.method public setTrunkSensorEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1357
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setTrunkSensorEnable(Z)V

    return-void
.end method

.method public setWindowLockActive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setWindowLockState(Z)V

    return-void
.end method

.method public stopSunShade()V
    .locals 2

    .line 1259
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->controlSunShade(I)V

    return-void
.end method

.method public varargs unregisterBusiness([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .line 1347
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorBaseViewModel;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->unregisterBusiness([Ljava/lang/String;)V

    return-void
.end method
