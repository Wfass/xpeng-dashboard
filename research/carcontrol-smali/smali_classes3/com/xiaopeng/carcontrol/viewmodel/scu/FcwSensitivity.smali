.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;
.super Ljava/lang/Enum;
.source "FcwSensitivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

.field public static final enum High:Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

.field public static final enum Low:Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

.field public static final enum Medium:Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

.field public static final enum Unavailable:Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 9
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    const-string v1, "Low"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->Low:Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    .line 10
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    const-string v3, "Medium"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    .line 11
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    const-string v5, "High"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->High:Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    .line 12
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    const-string v7, "Unavailable"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->Unavailable:Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 8
    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

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

.method public static fromXpuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;
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

    .line 24
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->Unavailable:Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    return-object p0

    .line 22
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->High:Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    return-object p0

    .line 18
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->Low:Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    return-object p0

    .line 20
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    return-object p0
.end method

.method public static toXpuCmd(Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensitivity"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$FcwSensitivity:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method public static valueOf(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ordinal"
        }
    .end annotation

    if-ltz p0, :cond_0

    .line 42
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    move-result-object v0

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 45
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Invalid ordinal"

    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/scu/FcwSensitivity;

    return-object v0
.end method
