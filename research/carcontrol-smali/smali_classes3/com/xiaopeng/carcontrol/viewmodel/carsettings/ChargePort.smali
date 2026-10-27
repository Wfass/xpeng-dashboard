.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;
.super Ljava/lang/Enum;
.source "ChargePort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

.field public static final enum Left:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

.field public static final enum Right:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Left:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    .line 16
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    const-string v3, "Right"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->Right:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 8
    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 8
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;

    return-object v0
.end method


# virtual methods
.method public toBcmPortValue()I
    .locals 3

    .line 23
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$ChargePort:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePort;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown charge port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1
.end method
