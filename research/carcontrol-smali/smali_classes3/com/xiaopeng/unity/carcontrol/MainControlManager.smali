.class public Lcom/xiaopeng/unity/carcontrol/MainControlManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "MainControlManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/IMainControlManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/MainControlManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/MainControlListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/IMainControlManager;"
    }
.end annotation


# instance fields
.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/unity/carcontrol/MainControlManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private convertChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 310
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->UNKNOWN:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    .line 312
    :cond_0
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$ChargePortState:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    return v1

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private convertDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 414
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->NoCommand:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    if-eq p1, v0, :cond_0

    .line 415
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xa

    goto :goto_1

    :pswitch_1
    const/4 p1, 0x7

    goto :goto_1

    :pswitch_2
    const/4 p1, 0x4

    goto :goto_1

    :pswitch_3
    const/4 p1, 0x3

    goto :goto_1

    :pswitch_4
    const/4 p1, 0x2

    goto :goto_1

    :pswitch_5
    const/4 p1, 0x1

    goto :goto_1

    :pswitch_6
    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private convertTrunkState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 332
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Closed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    .line 334
    :cond_0
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$TrunkState:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/MainControlManager;
    .locals 1

    .line 44
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/MainControlManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/MainControlManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkLeftSlideDoorOpenAvailability(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isToast"
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->checkLeftSlideDoorOpenAvailability(Z)I

    move-result p1

    return p1
.end method

.method public checkRightSlideDoorOpenAvailability(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isToast"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->checkRightSlideDoorOpenAvailability(Z)I

    move-result p1

    return p1
.end method

.method public controlCarSmartRestore()V
    .locals 1

    .line 635
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->handleSmartRestore()V

    return-void
.end method

.method public controlLeftSlideDoor(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_left_slide_door_act:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlLeftSlideDoor(I)V

    .line 615
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_left_slide_door_act"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public controlRightSlideDoor(I)V
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_right_slide_door_act:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cmd"
        }
    .end annotation

    .line 630
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlRightSlideDoor(I)V

    .line 631
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "windowdoor_right_slide_door_act"

    invoke-static {v0, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public controlSdc(ZZ)V
    .locals 1
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

    .line 569
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZZ)V

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

    .line 619
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->directControlLeftSlideDoor(I)V

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

    .line 624
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->directControlRightSlideDoor(I)V

    return-void
.end method

.method public enterScene(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    const-string v0, "c_c"

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "p_gear_menu"

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->setConflictState(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public executeSdcCmd(ZI)V
    .locals 1
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

    .line 574
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlSdc(ZI)V

    return-void
.end method

.method public exitScene(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    const-string v0, "c_c"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "p_gear_menu"

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/view/dialog/poppanel/PopPanelManager;->setConflictState(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public getAsFault()Z
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getAsFaultStatus()Z

    move-result v0

    return v0
.end method

.method public getChargePort(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation

    .line 539
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Left:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Right:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->convertChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;)I

    move-result p1

    return p1
.end method

.method public getDriveMode()I
    .locals 5

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveModeValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->convertDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 404
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDriveMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getEspFault()Z
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspFault()Z

    move-result v0

    return v0
.end method

.method public getLeftSdcSysRunningState()I
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSdcSysRunningState()I

    move-result v0

    return v0
.end method

.method public getLeftSlideDoorMode()I
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSlideDoorMode()I

    move-result v0

    return v0
.end method

.method public getLeftSlideDoorState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_left_slide_door_act:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 601
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSlideDoorState()I

    move-result v0

    return v0
.end method

.method public getRightSdcSysRunningState()I
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSdcSysRunningState()I

    move-result v0

    return v0
.end method

.method public getRightSlideDoorMode()I
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSlideDoorMode()I

    move-result v0

    return v0
.end method

.method public getRightSlideDoorState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_right_slide_door_act:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSlideDoorState()I

    move-result v0

    return v0
.end method

.method public getTrunkState()I
    .locals 1
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_trunk:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRearTrunkStateValue()Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->convertTrunkState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;)I

    move-result v0

    return v0
.end method

.method protected initInternal()V
    .locals 2

    .line 49
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    .line 50
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 51
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    .line 52
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 53
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 54
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isTestDriveModeOn()Z
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isTestDriveModeOn()Z

    move-result v0

    return v0
.end method

.method public isTtmOpen()Z
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTrailerModeStatus()Z

    move-result v0

    return v0
.end method

.method public isXPedalMode()Z
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getNewDriveArchXPedalMode()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$observeData$0$MainControlManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "on"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MainControlListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlListener;->onXPedalModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$MainControlManager(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MainControlListener;

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->convertTrunkState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlListener;->onTrunkStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$MainControlManager(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MainControlListener;

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->convertChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlListener;->onChargePortChanged(ZI)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$MainControlManager(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MainControlListener;

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->convertChargePortState(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;)I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlListener;->onChargePortChanged(ZI)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$MainControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MainControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlListener;->onLeftSdcSysRunningStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$MainControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MainControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlListener;->onRightSdcSysRunningStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$MainControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MainControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlListener;->onLeftSlideDoorStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$7$MainControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MainControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlListener;->onRightSlideDoorStateChanged(I)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$8$MainControlManager(Ljava/lang/Integer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/MainControlListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlListener;->onAutoShowModeChanged(I)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getXPedalSwitchData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$fvoDKGAZzLWrz397gmwUUXoAL3g;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$fvoDKGAZzLWrz397gmwUUXoAL3g;-><init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRearTrunkData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$LDIGqNIC4vl_4t97YRdBfy7DrZM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$LDIGqNIC4vl_4t97YRdBfy7DrZM;-><init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getRightChargePortStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$r65so7RcRDP4SJ_UZRzBt2OGfE4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$r65so7RcRDP4SJ_UZRzBt2OGfE4;-><init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->getLeftChargePortStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$2cCG0OrKHuYuKQbyb0B9T5N1q5I;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$2cCG0OrKHuYuKQbyb0B9T5N1q5I;-><init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    const-string v0, "isSupportSdc"

    .line 269
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSdcSysRunningStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$q8vwssK00GboiK_itmLUoYoksEw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$q8vwssK00GboiK_itmLUoYoksEw;-><init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSdcSysRunningStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$aJBjn_aUl5rQbo9U9qOc3E8yaWo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$aJBjn_aUl5rQbo9U9qOc3E8yaWo;-><init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    :cond_0
    const-string v0, "isSupportSlideDoor"

    .line 285
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getLeftSlideDoorStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$GEqm3TDy3BXie8wGfkmRbT5NWj4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$GEqm3TDy3BXie8wGfkmRbT5NWj4;-><init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRightSlideDoorStateData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$Xwc-kCmhMxWbB-6fIPe833PCW14;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$Xwc-kCmhMxWbB-6fIPe833PCW14;-><init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getAutoShowModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$jE5UNllDn13rbCMCGns6S-YBmkM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MainControlManager$jE5UNllDn13rbCMCGns6S-YBmkM;-><init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "param"
        }
    .end annotation

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "setChargePort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0x1c

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "controlCarSmartRestore"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x1b

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "getLeftSlideDoorMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x1a

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "getLeftSdcSysRunningState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x19

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "setTrunk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x18

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "setXPedalMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0x17

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "getChargePort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0x16

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "executeSdcCmd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0x15

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "getRightSlideDoorMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0x14

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "controlSdc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0x13

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "getRightSdcSysRunningState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0x12

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "controlRightSlideDoor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0x11

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "getLeftSlideDoorState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0x10

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "isTestDriveModeOn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0xf

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "getAsFault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v4, 0xe

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "getRightSlideDoorState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_10
    const-string v0, "setDriveMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_11
    const-string v0, "getEspFault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_12
    const-string v0, "checkRightSlideDoorOpenAvailability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_13
    const-string v0, "directControlLeftSlideDoor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "checkLeftSlideDoorOpenAvailability"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_15
    const-string v0, "openRearTrunk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_16
    const-string v0, "getDriveMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_17
    const-string v0, "isXPedalMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_18
    const-string v0, "isTtmOpen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_0

    :cond_18
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_19
    const-string v0, "directControlRightSlideDoor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_0

    :cond_19
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1a
    const-string v0, "controlLeftSlideDoor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_0

    :cond_1a
    move v4, v1

    goto :goto_0

    :sswitch_1b
    const-string v0, "getTrunkState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_0

    :cond_1b
    move v4, v2

    goto :goto_0

    :sswitch_1c
    const-string v0, "resetChargePort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_0

    :cond_1c
    move v4, v3

    :goto_0
    const-string v0, ","

    packed-switch v4, :pswitch_data_0

    .line 224
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 156
    :pswitch_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 157
    aget-object p2, p1, v3

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->setChargePort(ZZ)V

    goto/16 :goto_1

    .line 212
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->controlCarSmartRestore()V

    goto/16 :goto_1

    .line 188
    :pswitch_2
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->getLeftSlideDoorMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 180
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->getLeftSdcSysRunningState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 147
    :pswitch_4
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->setTrunk(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 141
    :pswitch_5
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->setXPedalMode(Z)V

    goto/16 :goto_1

    .line 153
    :pswitch_6
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->getChargePort(Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_7
    if-eqz p2, :cond_1d

    .line 172
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 173
    array-length p2, p1

    if-lt p2, v1, :cond_1d

    .line 174
    aget-object p2, p1, v3

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->executeSdcCmd(ZI)V

    goto/16 :goto_1

    .line 191
    :pswitch_8
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->getRightSlideDoorMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_9
    if-eqz p2, :cond_1d

    .line 164
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 165
    array-length p2, p1

    if-lt p2, v1, :cond_1d

    .line 166
    aget-object p2, p1, v3

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    aget-object p1, p1, v2

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->controlSdc(ZZ)V

    goto/16 :goto_1

    .line 184
    :pswitch_a
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->getRightSdcSysRunningState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 203
    :pswitch_b
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->controlRightSlideDoor(I)V

    goto/16 :goto_1

    .line 194
    :pswitch_c
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->getLeftSlideDoorState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 221
    :pswitch_d
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->isTestDriveModeOn()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 132
    :pswitch_e
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->getAsFault()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto/16 :goto_2

    .line 197
    :pswitch_f
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->getRightSlideDoorState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto/16 :goto_2

    .line 123
    :pswitch_10
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->setDriveMode(I)V

    goto/16 :goto_1

    .line 129
    :pswitch_11
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->getEspFault()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 218
    :pswitch_12
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->checkRightSlideDoorOpenAvailability(Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 206
    :pswitch_13
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->directControlLeftSlideDoor(I)V

    goto :goto_1

    .line 215
    :pswitch_14
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->checkLeftSlideDoorOpenAvailability(Z)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 150
    :pswitch_15
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->openRearTrunk()V

    goto :goto_1

    .line 126
    :pswitch_16
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->getDriveMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 138
    :pswitch_17
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->isXPedalMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 135
    :pswitch_18
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->isTtmOpen()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 209
    :pswitch_19
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->directControlRightSlideDoor(I)V

    goto :goto_1

    .line 200
    :pswitch_1a
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->controlLeftSlideDoor(I)V

    goto :goto_1

    .line 144
    :pswitch_1b
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->getTrunkState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 160
    :pswitch_1c
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->resetChargePort(Z)V

    :cond_1d
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_1e

    .line 227
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_1e
    const-string p1, ""

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x6ee067fc -> :sswitch_1c
        -0x69c940cd -> :sswitch_1b
        -0x64e4a9a5 -> :sswitch_1a
        -0x5feef369 -> :sswitch_19
        -0x5e241ab3 -> :sswitch_18
        -0x5562c691 -> :sswitch_17
        -0x52131c69 -> :sswitch_16
        -0x355238ba -> :sswitch_15
        -0x3135868b -> :sswitch_14
        -0x2f21e81c -> :sswitch_13
        -0x2af1abb0 -> :sswitch_12
        -0x1bb60ca -> :sswitch_11
        0xa40a40b -> :sswitch_10
        0xd3b10d8 -> :sswitch_f
        0x114f48da -> :sswitch_e
        0x13e2c290 -> :sswitch_d
        0x1bc63caf -> :sswitch_c
        0x1d7b9d00 -> :sswitch_b
        0x2088adf3 -> :sswitch_a
        0x25fe0595 -> :sswitch_9
        0x29b4c87c -> :sswitch_8
        0x330e3f7d -> :sswitch_7
        0x42c56d4b -> :sswitch_6
        0x459742a7 -> :sswitch_5
        0x53c3fe72 -> :sswitch_4
        0x5b5c164a -> :sswitch_3
        0x5bb945c5 -> :sswitch_2
        0x61b0735c -> :sswitch_1
        0x70e9bb57 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public openRearTrunk()V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->openRearTrunk()V

    return-void
.end method

.method public resetChargePort(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLeft"
        }
    .end annotation

    .line 562
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isChargePortEnable(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isChargePortResetable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->resetChargePort(Z)V

    :cond_0
    return-void
.end method

.method public setChargePort(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isLeft",
            "open"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->isChargePortEnable(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Left:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Right:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->controlChargePort(Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;Z)V

    .line 551
    :cond_1
    sget-object v0, Lcom/xiaopeng/track/constant/BID;->windowdoor_charge_port:Lcom/xiaopeng/track/constant/BID;

    invoke-virtual {v0}, Lcom/xiaopeng/track/constant/BID;->name()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/MainControlManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/MainControlManager$2;-><init>(Lcom/xiaopeng/unity/carcontrol/MainControlManager;ZZ)V

    invoke-static {v0, v1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p2, :cond_2

    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_chargeport_on.wav"

    goto :goto_1

    :cond_2
    const-string p1, "/system/media/audio/xiaopeng/cdu/wav/CDU_chargeport_off.wav"

    :goto_1
    const/4 p2, 0x0

    .line 555
    invoke-static {p1, p2, p2}, Lcom/xiaopeng/carcontrol/helper/SoundHelper;->play(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public setDriveMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 386
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->EcoPlus:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    goto :goto_0

    .line 383
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Xpower:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    goto :goto_0

    .line 380
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Geek:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    goto :goto_0

    .line 377
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Adaptive:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    goto :goto_0

    .line 371
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->OffRoad:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    goto :goto_0

    .line 368
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Comfort:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    goto :goto_0

    .line 365
    :pswitch_7
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Eco:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    goto :goto_0

    .line 362
    :pswitch_8
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    goto :goto_0

    .line 359
    :pswitch_9
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setTrunk(I)I
    .locals 2
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->windowdoor_trunk:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controlType"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->getRearTrunkStateValue()Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;->Close:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlRearTrunk(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;)I

    move-result v0

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;->Pause:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlRearTrunk(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;)I

    move-result v0

    goto :goto_0

    .line 515
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mWindowDoorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;->Open:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowDoorViewModel;->controlRearTrunk(Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkType;)I

    move-result v0

    .line 525
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "windowdoor_trunk"

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return v0
.end method

.method public setXPedalMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/MainControlManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setNewDriveArchXPedalMode(Z)V

    return-void
.end method
