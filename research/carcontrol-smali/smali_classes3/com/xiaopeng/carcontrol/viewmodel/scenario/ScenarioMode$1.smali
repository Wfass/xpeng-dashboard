.class synthetic Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode$1;
.super Ljava/lang/Object;
.source "ScenarioMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$scenario$ScenarioMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->values()[Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scenario$ScenarioMode:[I

    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Meditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scenario$ScenarioMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ViceMeditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scenario$ScenarioMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsule:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scenario$ScenarioMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleSleep:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scenario$ScenarioMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleCinema:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scenario$ScenarioMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->VipSeat:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scenario$ScenarioMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Rescue:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scenario$ScenarioMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
