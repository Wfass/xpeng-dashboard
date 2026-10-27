.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;
.super Ljava/lang/Enum;
.source "LssSensitivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

.field public static final enum High:Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

.field public static final enum Low:Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

.field public static final enum Medium:Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 12
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    const-string v1, "Low"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;->Low:Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    .line 16
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    const-string v3, "Medium"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    .line 20
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    const-string v5, "High"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;->High:Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 8
    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

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

.method public static fromXpuState(I)Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;
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

    .line 37
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;->Medium:Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    return-object p0

    .line 33
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;->High:Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    return-object p0

    .line 30
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;->Low:Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;

    return-object v0
.end method


# virtual methods
.method public toXpuCmd()I
    .locals 2

    .line 46
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$xpu$LssSensitivity:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/LssSensitivity;->ordinal()I

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
