.class synthetic Lcom/xiaopeng/unity/carcontrol/SettingsManager$2;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/unity/carcontrol/SettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$BpfMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2794
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->values()[Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$BpfMode:[I

    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$BpfMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->Economic:Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/SettingsManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$chassis$BpfMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/BpfMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
