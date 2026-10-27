.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;
.super Ljava/lang/Enum;
.source "UnlockResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

.field public static final enum Light:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

.field public static final enum LightAndAvas:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

.field public static final enum LightAndHorn:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    const-string v1, "Light"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->Light:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    .line 16
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    const-string v3, "LightAndHorn"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndHorn:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    .line 20
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    const-string v5, "LightAndAvas"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndAvas:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 8
    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

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

.method public static fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 40
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->Light:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    return-object p0

    .line 36
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndAvas:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    return-object p0

    .line 33
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->LightAndHorn:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;

    return-object v0
.end method


# virtual methods
.method public toBcmCmd()I
    .locals 3

    .line 49
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$UnlockResponse:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/UnlockResponse;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
