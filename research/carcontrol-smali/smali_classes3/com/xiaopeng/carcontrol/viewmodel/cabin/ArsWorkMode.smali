.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;
.super Ljava/lang/Enum;
.source "ArsWorkMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

.field public static final enum AUTO:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

.field public static final enum MANUAL:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 6
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    const-string v1, "MANUAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->MANUAL:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    const-string v3, "AUTO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->AUTO:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 5
    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->intValue:I

    return-void
.end method

.method public static fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 34
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->MANUAL:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->MANUAL:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    return-object p0

    .line 32
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->AUTO:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    return-object p0
.end method

.method public static fromIntValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 19
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 20
    iget v4, v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->intValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 5
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;
    .locals 1

    .line 5
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->intValue:I

    return v0
.end method

.method public toBcmValue()I
    .locals 2

    .line 38
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$ArsWorkMode:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
