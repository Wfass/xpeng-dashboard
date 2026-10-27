.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;
.super Ljava/lang/Enum;
.source "DsmSensitivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

.field public static final enum High:Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

.field public static final enum Low:Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

.field public static final enum Medium:Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 13
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    const-string v1, "Low"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;->Low:Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    .line 17
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    const-string v3, "Medium"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    .line 21
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    const-string v5, "High"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;->High:Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 9
    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

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

.method public static fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 38
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    return-object p0

    .line 34
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;->High:Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    return-object p0

    .line 31
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;->Low:Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;

    return-object v0
.end method


# virtual methods
.method public toScuCmd()I
    .locals 3

    .line 47
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$DsmSensitivity:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/DsmSensitivity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x3

    return v0

    :cond_1
    return v1
.end method
