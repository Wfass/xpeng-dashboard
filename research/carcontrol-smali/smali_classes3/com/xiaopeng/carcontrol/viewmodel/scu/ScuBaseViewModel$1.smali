.class synthetic Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;
.super Ljava/lang/Object;
.source "ScuBaseViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuLssMode:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuOverseasElkMode:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuOverseasLkaMode:[I

.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 350
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuLssMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuLssMode:[I

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Ldw:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuLssMode:[I

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->Lka:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuLssMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 307
    :catch_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuOverseasElkMode:[I

    :try_start_3
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuOverseasElkMode:[I

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->Lka:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuOverseasElkMode:[I

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->All:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasElkMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 269
    :catch_5
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuOverseasLkaMode:[I

    :try_start_6
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuOverseasLkaMode:[I

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->Ldw:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuOverseasLkaMode:[I

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->Lka:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;

    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuOverseasLkaMode;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    .line 145
    :catch_8
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    :try_start_9
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ON:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuBaseViewModel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuResponse:[I

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuResponse;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method
