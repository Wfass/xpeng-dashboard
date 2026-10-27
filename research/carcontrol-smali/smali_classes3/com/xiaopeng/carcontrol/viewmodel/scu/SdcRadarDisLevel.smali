.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;
.super Ljava/lang/Enum;
.source "SdcRadarDisLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

.field public static final enum Level1:Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

.field public static final enum Level2:Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

.field public static final enum Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

    .line 14
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

    const-string v3, "Level1"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;->Level1:Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

    .line 18
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

    const-string v5, "Level2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;->Level2:Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 9
    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

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

.method public static fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;
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

    .line 35
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;->Off:Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

    return-object p0

    .line 32
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;->Level2:Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

    return-object p0

    .line 29
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;->Level1:Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;

    return-object v0
.end method


# virtual methods
.method public toScuCode()I
    .locals 2

    .line 40
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$SdcRadarDisLevel:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;->ordinal()I

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

.method public toStringParams()Ljava/lang/String;
    .locals 2

    .line 53
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$SdcRadarDisLevel:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/SdcRadarDisLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "0"

    return-object v0

    :cond_0
    const-string v0, "2"

    return-object v0

    :cond_1
    const-string v0, "1"

    return-object v0
.end method
