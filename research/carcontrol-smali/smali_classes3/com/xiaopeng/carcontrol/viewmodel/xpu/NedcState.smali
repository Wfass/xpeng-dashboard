.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;
.super Ljava/lang/Enum;
.source "NedcState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

.field public static final enum Failure:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

.field public static final enum Off:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

.field public static final enum On:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

.field public static final enum TurnOffing:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

.field public static final enum TurnOnFailure:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

.field public static final enum TurnOning:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 13
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    const-string v1, "On"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->On:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    .line 17
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    const-string v3, "Off"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->Off:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    .line 21
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    const-string v5, "Failure"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->Failure:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    .line 25
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    const-string v7, "TurnOning"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOning:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    .line 29
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    const-string v9, "TurnOffing"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOffing:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    .line 33
    new-instance v9, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    const-string v11, "TurnOnFailure"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOnFailure:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 9
    sput-object v11, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

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

.method public static fromXpuCmd(I)Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOnFailure:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    return-object p0

    .line 44
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOning:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    return-object p0

    .line 46
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->TurnOffing:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    return-object p0

    .line 42
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->Failure:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    return-object p0

    .line 40
    :cond_4
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->On:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    return-object p0

    .line 38
    :cond_5
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->Off:Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/xpu/NedcState;

    return-object v0
.end method
