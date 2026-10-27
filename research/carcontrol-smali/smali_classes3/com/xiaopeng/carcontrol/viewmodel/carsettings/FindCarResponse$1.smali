.class synthetic Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse$1;
.super Ljava/lang/Object;
.source "FindCarResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$FindCarResponse:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;->values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$FindCarResponse:[I

    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;->LightAndHorn:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$FindCarResponse:[I

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;->Light:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
