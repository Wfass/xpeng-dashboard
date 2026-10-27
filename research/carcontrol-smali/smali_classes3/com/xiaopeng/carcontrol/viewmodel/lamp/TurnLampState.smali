.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;
.super Ljava/lang/Enum;
.source "TurnLampState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

.field public static final enum Both:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

.field public static final enum Left:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

.field public static final enum Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

.field public static final enum Right:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 12
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    .line 16
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    const-string v3, "Left"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Left:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    .line 20
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    const-string v5, "Right"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Right:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    .line 24
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    const-string v7, "Both"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Both:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 8
    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

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

.method public static fromBcmStatus([I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 32
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 36
    aget v1, p0, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    aget v1, p0, v2

    if-ne v1, v2, :cond_1

    .line 37
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Both:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    return-object p0

    .line 38
    :cond_1
    aget v0, p0, v0

    if-ne v0, v2, :cond_2

    .line 39
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Left:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    return-object p0

    .line 40
    :cond_2
    aget p0, p0, v2

    if-ne p0, v2, :cond_3

    .line 41
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Right:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    return-object p0

    .line 43
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    return-object p0

    .line 33
    :cond_4
    :goto_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;

    return-object v0
.end method
