.class synthetic Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl$1;
.super Ljava/lang/Object;
.source "LampManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$TurnLampState:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 247
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$TurnLampState:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Left:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$TurnLampState:[I

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Right:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$TurnLampState:[I

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Both:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 219
    :catch_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    :try_start_3
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/xiaopeng/carcontrol/sdkImpl/LampManagerImpl$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
