.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;
.super Ljava/lang/Enum;
.source "ScuIslaSpdRange.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

.field public static final enum HIGH:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

.field public static final enum LOW:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->LOW:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    .line 16
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    const-string v3, "HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->HIGH:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 8
    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

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

.method public static fromScuState(I)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;
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

    if-eq p0, v0, :cond_0

    .line 45
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->HIGH:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    return-object p0

    .line 41
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->LOW:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;

    return-object v0
.end method


# virtual methods
.method public toDisplayIndex()I
    .locals 2

    .line 23
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuIslaSpdRange:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toScuCmd()I
    .locals 3

    .line 54
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$scu$ScuIslaSpdRange:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuIslaSpdRange;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ISLA speed range type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1
.end method
