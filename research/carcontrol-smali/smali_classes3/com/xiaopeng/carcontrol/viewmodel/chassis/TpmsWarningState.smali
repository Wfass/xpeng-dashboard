.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;
.super Ljava/lang/Enum;
.source "TpmsWarningState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

.field public static final enum HIGH_PRESSURE:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

.field public static final enum INVALID:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

.field public static final enum LOW_PRESSURE:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

.field public static final enum NORMAL:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 13
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->NORMAL:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    .line 17
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    const-string v3, "LOW_PRESSURE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->LOW_PRESSURE:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    .line 21
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    const-string v5, "HIGH_PRESSURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->HIGH_PRESSURE:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    .line 25
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    const-string v7, "INVALID"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->INVALID:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 9
    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

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

.method public static fromTpms(I)Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 37
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->INVALID:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    return-object p0

    .line 34
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->HIGH_PRESSURE:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    return-object p0

    .line 32
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->LOW_PRESSURE:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    return-object p0

    .line 30
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->NORMAL:Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/chassis/TpmsWarningState;

    return-object v0
.end method
