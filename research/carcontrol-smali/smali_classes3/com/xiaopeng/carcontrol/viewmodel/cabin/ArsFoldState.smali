.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;
.super Ljava/lang/Enum;
.source "ArsFoldState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

.field public static final enum FOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

.field public static final enum MOVING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

.field public static final enum UNFOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;


# instance fields
.field private intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    const-string v1, "FOLDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->FOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    const-string v3, "MOVING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->MOVING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    const-string v5, "UNFOLDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->UNFOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 5
    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

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
            "intValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->intValue:I

    return-void
.end method

.method public static final from(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->UNFOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    return-object p0

    .line 24
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->MOVING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    return-object p0

    .line 22
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->FOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    return-object p0
.end method

.method public static final fromBcmValue(II)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "workState",
            "position"
        }
    .end annotation

    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    const/16 p0, 0x64

    if-eq p1, p0, :cond_0

    .line 39
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->UNFOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    return-object p0

    .line 37
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->UNFOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    return-object p0

    .line 35
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->FOLDED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    return-object p0

    .line 42
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->MOVING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;
    .locals 1

    .line 5
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsFoldState;->intValue:I

    return v0
.end method
