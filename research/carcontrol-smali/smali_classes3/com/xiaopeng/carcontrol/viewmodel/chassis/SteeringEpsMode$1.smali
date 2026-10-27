.class synthetic Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode$1;
.super Ljava/lang/Object;
.source "SteeringEpsMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$SteeringEpsMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->values()[Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$SteeringEpsMode:[I

    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Standard:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$SteeringEpsMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Soft:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$SteeringEpsMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$SteeringEpsMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->Invalid:Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/SteeringEpsMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
