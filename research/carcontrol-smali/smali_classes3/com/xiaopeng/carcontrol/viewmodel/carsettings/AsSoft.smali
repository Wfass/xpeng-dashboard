.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;
.super Ljava/lang/Enum;
.source "AsSoft.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

.field public static final enum Hard:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

.field public static final enum Medium:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

.field public static final enum Soft:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    const-string v1, "Soft"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->Soft:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    .line 16
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    const-string v3, "Medium"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    .line 20
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    const-string v5, "Hard"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->Hard:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 8
    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

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

.method public static fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;
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

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->Hard:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    return-object p0

    .line 35
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    return-object p0

    .line 32
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->Soft:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;

    return-object v0
.end method


# virtual methods
.method public toBcmCmd()I
    .locals 3

    .line 50
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$carsettings$AsSoft:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/AsSoft;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return v1

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown As Soft: "

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
