.class synthetic Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;
.super Ljava/lang/Object;
.source "MainControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/MainControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$TrunkState:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$ChargePortState:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 415
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->values()[Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Eco:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Comfort:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->OffRoad:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v7, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Adaptive:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v6, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v7, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->EcoPlus:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v7

    const/4 v8, 0x7

    aput v8, v6, v7
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 334
    :catch_6
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [I

    sput-object v6, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$TrunkState:[I

    :try_start_7
    sget-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Opening:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->ordinal()I

    move-result v7

    aput v1, v6, v7
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v6, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$TrunkState:[I

    sget-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Closing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->ordinal()I

    move-result v7

    aput v0, v6, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v6, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$TrunkState:[I

    sget-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Pause_Opening:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->ordinal()I

    move-result v7

    aput v2, v6, v7
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v6, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$TrunkState:[I

    sget-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Pause_Closing:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->ordinal()I

    move-result v7

    aput v3, v6, v7
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v6, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$TrunkState:[I

    sget-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Opened:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->ordinal()I

    move-result v7

    aput v4, v6, v7
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v6, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$TrunkState:[I

    sget-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->Closed:Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;

    invoke-virtual {v7}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/TrunkState;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 312
    :catch_c
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$ChargePortState:[I

    :try_start_d
    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->OPEN:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$ChargePortState:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->MIDDLE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$ChargePortState:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->CLOSE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$ChargePortState:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->FAULT:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/MainControlManager$3;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$ChargePortState:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->UNKNOWN:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method
