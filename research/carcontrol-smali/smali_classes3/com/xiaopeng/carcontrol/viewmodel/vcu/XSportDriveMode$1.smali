.class synthetic Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode$1;
.super Ljava/lang/Object;
.source "XSportDriveMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$XSportDriveMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->values()[Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$XSportDriveMode:[I

    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->XPower:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$XSportDriveMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->Geek:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$XSportDriveMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->AI:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$XSportDriveMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->Race:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$XSportDriveMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->NoCommand:Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/XSportDriveMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method
