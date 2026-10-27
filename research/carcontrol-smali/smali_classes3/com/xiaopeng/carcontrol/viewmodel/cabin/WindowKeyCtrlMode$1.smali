.class synthetic Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode$1;
.super Ljava/lang/Object;
.source "WindowKeyCtrlMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$WindowKeyCtrlMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 48
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;->values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$WindowKeyCtrlMode:[I

    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$WindowKeyCtrlMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;->Auto:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$WindowKeyCtrlMode:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;->Manual:Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/WindowKeyCtrlMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
