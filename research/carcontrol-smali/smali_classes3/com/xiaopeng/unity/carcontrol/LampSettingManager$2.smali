.class synthetic Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;
.super Ljava/lang/Object;
.source "LampSettingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/LampSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LampHeightLevel:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LightMeHomeTime:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$xpu$NedcState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 588
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->values()[Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$xpu$NedcState:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->On:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$xpu$NedcState:[I

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOning:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$xpu$NedcState:[I

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOnFailure:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$xpu$NedcState:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOffing:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 531
    :catch_3
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    :try_start_4
    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 477
    :catch_6
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LightMeHomeTime:[I

    :try_start_7
    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LightMeHomeTime:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time15s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LightMeHomeTime:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time30s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LightMeHomeTime:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->Time60s:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LightMeHomeTime;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 397
    :catch_a
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LampHeightLevel:[I

    :try_start_b
    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->Highest:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v1, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LampHeightLevel:[I

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->High:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LampHeightLevel:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->Low:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/LampSettingManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LampHeightLevel:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->Lowest:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method
