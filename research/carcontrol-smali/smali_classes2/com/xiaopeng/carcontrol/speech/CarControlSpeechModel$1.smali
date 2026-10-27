.class synthetic Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;
.super Ljava/lang/Object;
.source "CarControlSpeechModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$avas$AvasEffect:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$ArsFoldState:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorFoldState:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LampHeightLevel:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluSayHiEffect:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$light$AtlEffect:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$EnergyRecycleGrade:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 6873
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$ArsFoldState:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->UNFOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$ArsFoldState:[I

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->FOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$ArsFoldState:[I

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->MOVING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 6635
    :catch_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$light$AtlEffect:[I

    :try_start_3
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->None:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$light$AtlEffect:[I

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Breathing:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$light$AtlEffect:[I

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Speed:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v3, 0x4

    :try_start_6
    sget-object v4, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$light$AtlEffect:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->Music:Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 6395
    :catch_6
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->values()[Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    :try_start_7
    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v4, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Eco:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v4, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Comfort:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    const/4 v4, 0x5

    :try_start_b
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->OffRoad:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->EcoPlus:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Xpower:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v6

    const/4 v7, 0x7

    aput v7, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Geek:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v6

    const/16 v7, 0x8

    aput v7, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Race:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v6

    const/16 v7, 0x9

    aput v7, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Individual:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result v6

    const/16 v7, 0xa

    aput v7, v5, v6
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    .line 5458
    :catch_10
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluSayHiEffect:[I

    :try_start_11
    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->EffectB:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluSayHiEffect:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->EffectC:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LluSayHiEffect:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->EffectA:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluSayHiEffect;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    .line 5447
    :catch_13
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->values()[Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$avas$AvasEffect:[I

    :try_start_14
    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->SoundEffect2:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$avas$AvasEffect:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->SoundEffect3:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    .line 5241
    :catch_15
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    :try_start_16
    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    .line 2781
    :catch_18
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->values()[Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$EnergyRecycleGrade:[I

    :try_start_19
    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->Low:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$EnergyRecycleGrade:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->High:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    :catch_1a
    :try_start_1b
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$EnergyRecycleGrade:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->XPEDAL:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$EnergyRecycleGrade:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/EnergyRecycleGrade;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 2602
    :catch_1c
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorFoldState:[I

    :try_start_1d
    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Middle:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorFoldState:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Folded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1f
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorFoldState:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->Unfolded:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 2570
    :catch_1f
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LampHeightLevel:[I

    :try_start_20
    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->Highest:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_20

    :catch_20
    :try_start_21
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LampHeightLevel:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->High:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_21

    :catch_21
    :try_start_22
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LampHeightLevel:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->Low:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_22

    :catch_22
    :try_start_23
    sget-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LampHeightLevel:[I

    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->Lowest:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_23

    .line 2166
    :catch_23
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

    :try_start_24
    sget-object v6, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL2:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v6}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_24

    :catch_24
    :try_start_25
    sget-object v1, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

    sget-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->HL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v5}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_25

    :catch_25
    :try_start_26
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL1:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_26

    :catch_26
    :try_start_27
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->LL3:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_27

    :catch_27
    :try_start_28
    sget-object v0, Lcom/xiaopeng/carcontrol/speech/CarControlSpeechModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsHeight:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->H0:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsHeight;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
