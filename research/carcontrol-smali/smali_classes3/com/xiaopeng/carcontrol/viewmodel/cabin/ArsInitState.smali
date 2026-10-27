.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;
.super Ljava/lang/Enum;
.source "ArsInitState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

.field public static final enum INITIALIZED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

.field public static final enum INITIALIZING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

.field public static final enum INVALID:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

.field public static final enum UNINITIALIZED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;


# instance fields
.field intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 6
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->UNINITIALIZED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    const-string v3, "INITIALIZING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INITIALIZING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    const-string v5, "INITIALIZED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INITIALIZED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    const-string v7, "INVALID"

    const/4 v8, 0x3

    const/4 v9, -0x1

    invoke-direct {v5, v7, v8, v9}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INVALID:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->intValue:I

    return-void
.end method

.method public static from(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;
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

    .line 27
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INVALID:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    return-object p0

    .line 25
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INITIALIZED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    return-object p0

    .line 23
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INITIALIZING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    return-object p0

    .line 21
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->UNINITIALIZED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    return-object p0
.end method

.method public static fromBcmValue(I)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 40
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INVALID:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    return-object p0

    .line 37
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INITIALIZING:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    return-object p0

    .line 35
    :cond_1
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->INITIALIZED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    return-object p0

    .line 33
    :cond_2
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->UNINITIALIZED:Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;
    .locals 1

    .line 5
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;->intValue:I

    return v0
.end method
