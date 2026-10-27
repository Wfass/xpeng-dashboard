.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;
.super Ljava/lang/Enum;
.source "KeyTouchDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

.field public static final enum Inward:Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

.field public static final enum Outward:Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

    const-string v1, "Inward"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;->Inward:Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

    .line 14
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

    const-string v3, "Outward"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;->Outward:Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 6
    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromIcmStatus(I)Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 23
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;->values()[Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

    move-result-object v0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 25
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown llu effect value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getIndexValue(I)Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 44
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;->values()[Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

    move-result-object v0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 6
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;
    .locals 1

    .line 6
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

    return-object v0
.end method


# virtual methods
.method public toIcmCmd()I
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;->ordinal()I

    move-result v0

    return v0
.end method
