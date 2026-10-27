.class synthetic Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel$1;
.super Ljava/lang/Object;
.source "XpuViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuIslaMode:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 148
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuIslaMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuIslaMode:[I

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->SLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuIslaMode:[I

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->ISLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->ordinal()I

    move-result v3

    const/4 v4, 0x3

    aput v4, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 84
    :catch_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    :try_start_3
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/XpuViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
