.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;
.super Ljava/lang/Enum;
.source "FindCarResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

.field public static final enum Light:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

.field public static final enum LightAndHorn:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

    const-string v1, "LightAndHorn"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;->LightAndHorn:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

    .line 16
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

    const-string v3, "Light"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;->Light:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 8
    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

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

.method public static fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 29
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;->Light:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

    return-object p0

    .line 26
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;->LightAndHorn:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;

    return-object v0
.end method


# virtual methods
.method public toBcmCmd()I
    .locals 3

    .line 41
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$FindCarResponse:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/FindCarResponse;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown find car response type:"

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
