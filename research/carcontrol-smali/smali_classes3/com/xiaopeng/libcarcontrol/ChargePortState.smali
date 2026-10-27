.class public final enum Lcom/xiaopeng/libcarcontrol/ChargePortState;
.super Ljava/lang/Enum;
.source "ChargePortState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/libcarcontrol/ChargePortState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/libcarcontrol/ChargePortState;

.field private static final BCM_CHARGE_PORT_CLOSED:I = 0x2

.field private static final BCM_CHARGE_PORT_FAULT:I = 0x3

.field private static final BCM_CHARGE_PORT_MIDDLE:I = 0x1

.field private static final BCM_CHARGE_PORT_OPEN:I = 0x0

.field private static final BCM_CHARGE_PORT_UNKNOWN:I = -0x1

.field public static final enum CLOSED:Lcom/xiaopeng/libcarcontrol/ChargePortState;

.field public static final enum FAULT:Lcom/xiaopeng/libcarcontrol/ChargePortState;

.field public static final enum MIDDLE:Lcom/xiaopeng/libcarcontrol/ChargePortState;

.field public static final enum OPENED:Lcom/xiaopeng/libcarcontrol/ChargePortState;

.field public static final enum UNKNOWN:Lcom/xiaopeng/libcarcontrol/ChargePortState;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 10
    new-instance v0, Lcom/xiaopeng/libcarcontrol/ChargePortState;

    const-string v1, "OPENED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/libcarcontrol/ChargePortState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/libcarcontrol/ChargePortState;->OPENED:Lcom/xiaopeng/libcarcontrol/ChargePortState;

    .line 14
    new-instance v1, Lcom/xiaopeng/libcarcontrol/ChargePortState;

    const-string v3, "MIDDLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/libcarcontrol/ChargePortState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/libcarcontrol/ChargePortState;->MIDDLE:Lcom/xiaopeng/libcarcontrol/ChargePortState;

    .line 18
    new-instance v3, Lcom/xiaopeng/libcarcontrol/ChargePortState;

    const-string v5, "CLOSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/libcarcontrol/ChargePortState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/libcarcontrol/ChargePortState;->CLOSED:Lcom/xiaopeng/libcarcontrol/ChargePortState;

    .line 22
    new-instance v5, Lcom/xiaopeng/libcarcontrol/ChargePortState;

    const-string v7, "FAULT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/libcarcontrol/ChargePortState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/libcarcontrol/ChargePortState;->FAULT:Lcom/xiaopeng/libcarcontrol/ChargePortState;

    .line 26
    new-instance v7, Lcom/xiaopeng/libcarcontrol/ChargePortState;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/libcarcontrol/ChargePortState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/libcarcontrol/ChargePortState;->UNKNOWN:Lcom/xiaopeng/libcarcontrol/ChargePortState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaopeng/libcarcontrol/ChargePortState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/xiaopeng/libcarcontrol/ChargePortState;->$VALUES:[Lcom/xiaopeng/libcarcontrol/ChargePortState;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromBcmValue(I)Lcom/xiaopeng/libcarcontrol/ChargePortState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 52
    sget-object p0, Lcom/xiaopeng/libcarcontrol/ChargePortState;->UNKNOWN:Lcom/xiaopeng/libcarcontrol/ChargePortState;

    goto :goto_0

    .line 47
    :cond_0
    sget-object p0, Lcom/xiaopeng/libcarcontrol/ChargePortState;->FAULT:Lcom/xiaopeng/libcarcontrol/ChargePortState;

    goto :goto_0

    .line 44
    :cond_1
    sget-object p0, Lcom/xiaopeng/libcarcontrol/ChargePortState;->CLOSED:Lcom/xiaopeng/libcarcontrol/ChargePortState;

    goto :goto_0

    .line 41
    :cond_2
    sget-object p0, Lcom/xiaopeng/libcarcontrol/ChargePortState;->MIDDLE:Lcom/xiaopeng/libcarcontrol/ChargePortState;

    goto :goto_0

    .line 38
    :cond_3
    sget-object p0, Lcom/xiaopeng/libcarcontrol/ChargePortState;->OPENED:Lcom/xiaopeng/libcarcontrol/ChargePortState;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/libcarcontrol/ChargePortState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    const-class v0, Lcom/xiaopeng/libcarcontrol/ChargePortState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/libcarcontrol/ChargePortState;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/libcarcontrol/ChargePortState;
    .locals 1

    .line 6
    sget-object v0, Lcom/xiaopeng/libcarcontrol/ChargePortState;->$VALUES:[Lcom/xiaopeng/libcarcontrol/ChargePortState;

    invoke-virtual {v0}, [Lcom/xiaopeng/libcarcontrol/ChargePortState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/libcarcontrol/ChargePortState;

    return-object v0
.end method
