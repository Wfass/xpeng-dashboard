.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;
.super Ljava/lang/Enum;
.source "OverTakeMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

.field public static final enum Conservative:Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

.field public static final enum Normal:Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

    .line 16
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

    const-string v3, "Conservative"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;->Conservative:Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 8
    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

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

.method public static fromXpuState(I)Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 30
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;->Conservative:Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

    return-object p0

    .line 26
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;

    return-object v0
.end method


# virtual methods
.method public toXpuCmd()I
    .locals 2

    .line 39
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$xpu$OverTakeMode:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/OverTakeMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
