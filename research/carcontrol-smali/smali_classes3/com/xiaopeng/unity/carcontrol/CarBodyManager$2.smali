.class synthetic Lcom/xiaopeng/unity/carcontrol/CarBodyManager$2;
.super Ljava/lang/Object;
.source "CarBodyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/CarBodyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$TurnLampState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 599
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$TurnLampState:[I

    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Left:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$TurnLampState:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Right:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/CarBodyManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$TurnLampState:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Both:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
