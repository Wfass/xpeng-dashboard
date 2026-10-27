.class synthetic Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;
.super Ljava/lang/Object;
.source "CustomDriveModeSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsSoft:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$SteeringEpsMode:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$EnergyRecycleGrade:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$PowerResponse:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 562
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->values()[Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$SteeringEpsMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Soft:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$SteeringEpsMode:[I

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$SteeringEpsMode:[I

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Invalid:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$SteeringEpsMode:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Standard:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 451
    :catch_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->values()[Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$EnergyRecycleGrade:[I

    :try_start_4
    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->High:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$EnergyRecycleGrade:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->Low:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$EnergyRecycleGrade:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->XPEDAL:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$EnergyRecycleGrade:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    .line 394
    :catch_7
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->values()[Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$PowerResponse:[I

    :try_start_8
    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Standard:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$PowerResponse:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Fast:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$PowerResponse:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->SuperFast:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$PowerResponse:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->Slow:Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/PowerResponse;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    .line 344
    :catch_b
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsSoft:[I

    :try_start_c
    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->Soft:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsSoft:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->Hard:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsSoft:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    .line 288
    :catch_e
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

    :try_start_f
    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL2:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v1, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL2:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL3:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CustomDriveModeSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->H0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    return-void
.end method
