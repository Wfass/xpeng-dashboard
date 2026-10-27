.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;
.super Ljava/lang/Enum;
.source "LampMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

.field public static final enum Auto:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

.field public static final enum Far:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

.field public static final enum LowBeam:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

.field public static final enum Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

.field public static final enum Position:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 13
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    const-string v1, "Off"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    .line 17
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    const-string v3, "Position"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Position:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    .line 21
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    const-string v5, "LowBeam"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->LowBeam:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    .line 25
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    const-string v7, "Auto"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Auto:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    .line 29
    new-instance v7, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    const-string v9, "Far"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Far:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 9
    sput-object v9, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

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

.method public static convertHeadLampMode(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;
    .locals 3
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

    if-ne p0, v0, :cond_0

    .line 111
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Auto:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    return-object p0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown head lamp state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->LowBeam:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    return-object p0

    .line 107
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Position:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    return-object p0

    .line 105
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    return-object p0
.end method

.method public static convertHeadLampValue(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x3

    if-nez p0, :cond_0

    return v0

    .line 86
    :cond_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LampMode:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v0, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static fromBcmState(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;
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

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Auto:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    return-object p0

    .line 46
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->LowBeam:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    return-object p0

    .line 43
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Position:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    return-object p0

    .line 40
    :cond_3
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->Off:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;

    return-object v0
.end method


# virtual methods
.method public toBcmLampCmd()I
    .locals 3

    .line 61
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$lamp$LampMode:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    return v1

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown head lamp state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method
