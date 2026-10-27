.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;
.super Ljava/lang/Enum;
.source "ChargePortState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

.field public static final enum CLOSE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

.field public static final enum FAULT:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

.field public static final enum MIDDLE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

.field public static final enum OPEN:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

.field public static final enum UNKNOWN:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 13
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->OPEN:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    .line 17
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->MIDDLE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    .line 21
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    const-string v5, "CLOSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->CLOSE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    .line 25
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    const-string v7, "FAULT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->FAULT:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    .line 29
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->UNKNOWN:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 9
    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

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

.method public static fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 44
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->FAULT:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    goto :goto_0

    .line 41
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->CLOSE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    goto :goto_0

    .line 38
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->MIDDLE:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    goto :goto_0

    .line 35
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->OPEN:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    goto :goto_0

    .line 47
    :cond_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->UNKNOWN:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ChargePortState;

    return-object v0
.end method
