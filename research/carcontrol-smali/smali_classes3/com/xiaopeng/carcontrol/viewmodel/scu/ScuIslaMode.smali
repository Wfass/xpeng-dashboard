.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;
.super Ljava/lang/Enum;
.source "ScuIslaMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

.field public static final enum FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

.field public static final enum ISLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

.field public static final enum OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

.field public static final enum SLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    .line 18
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    const-string v3, "SLA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->SLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    .line 22
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    const-string v5, "ISLA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->ISLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    .line 26
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    const-string v7, "FAIL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 10
    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;
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

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 66
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->OFF:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    return-object p0

    .line 62
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->ISLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    return-object p0

    .line 60
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->SLA:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    return-object p0

    .line 58
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->FAIL:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 10
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;
    .locals 1

    .line 10
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;

    return-object v0
.end method


# virtual methods
.method public toDisplayIndex()I
    .locals 2

    .line 33
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuIslaMode:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method
