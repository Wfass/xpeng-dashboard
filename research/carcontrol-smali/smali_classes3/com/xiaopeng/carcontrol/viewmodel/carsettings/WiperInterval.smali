.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;
.super Ljava/lang/Enum;
.source "WiperInterval.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

.field public static final enum Auto:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

.field public static final enum Fast:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

.field public static final enum Medium:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

.field public static final enum Slow:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

.field public static final enum Ultra:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 13
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    const-string v1, "Slow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Slow:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    .line 17
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    const-string v3, "Medium"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    .line 21
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    const-string v5, "Fast"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Fast:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    .line 25
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    const-string v7, "Ultra"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Ultra:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    .line 30
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    const-string v9, "Auto"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Auto:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 9
    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;
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

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Slow:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object p0

    .line 46
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object p0

    .line 43
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Fast:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object p0

    .line 40
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Ultra:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object p0
.end method

.method public static fromCiuState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 99
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Ultra:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object p0

    .line 96
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Fast:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object p0

    .line 93
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object p0

    .line 90
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Slow:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object p0

    .line 87
    :cond_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Auto:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object p0
.end method

.method public static fromSensitivityBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;
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

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 150
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Ultra:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object p0

    .line 147
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Fast:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object p0

    .line 144
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object p0

    .line 141
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->Slow:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object p0
.end method

.method public static getIndexValue(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 188
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    move-result-object v0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 9
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;

    return-object v0
.end method


# virtual methods
.method public toBcmCmd()I
    .locals 5

    .line 61
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$WiperInterval:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    return v2

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown wiper interval type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v4

    :cond_2
    return v3

    :cond_3
    return v1
.end method

.method public toCiuCmd()I
    .locals 3

    .line 111
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$WiperInterval:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ciu rain wiper interval type: "

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

.method public toSensitivityBcmCmd()I
    .locals 3

    .line 163
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$WiperInterval:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/WiperInterval;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return v1

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown wiper sensitivity type: "

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
