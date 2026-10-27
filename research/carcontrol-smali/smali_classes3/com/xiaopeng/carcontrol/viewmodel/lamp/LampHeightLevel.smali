.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;
.super Ljava/lang/Enum;
.source "LampHeightLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

.field public static final enum High:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

.field public static final enum Highest:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

.field public static final enum Low:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

.field public static final enum Lowest:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    const-string v1, "Highest"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->Highest:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    .line 5
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    const-string v3, "High"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->High:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    .line 6
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    const-string v5, "Low"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->Low:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    .line 7
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    const-string v7, "Lowest"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->Lowest:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 3
    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    move-result-object v0

    array-length v0, v0

    if-ltz p0, :cond_1

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;

    return-object v0
.end method


# virtual methods
.method public toBcmValue()I
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LampHeightLevel;->ordinal()I

    move-result v0

    return v0
.end method
