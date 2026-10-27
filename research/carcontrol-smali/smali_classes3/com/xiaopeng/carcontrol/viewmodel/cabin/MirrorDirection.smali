.class public final enum Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;
.super Ljava/lang/Enum;
.source "MirrorDirection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

.field public static final enum Down:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

.field public static final enum Left:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

.field public static final enum Right:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

.field public static final enum Up:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 13
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    const-string v1, "Left"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Left:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    .line 17
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    const-string v3, "Right"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Right:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    .line 21
    new-instance v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    const-string v5, "Up"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Up:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    .line 25
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    const-string v7, "Down"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->Down:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 9
    sput-object v7, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;
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
    const-class v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->$VALUES:[Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {v0}, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    return-object v0
.end method


# virtual methods
.method public toBcmDirection()I
    .locals 5

    .line 34
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$cabin$MirrorDirection:[I

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mirror direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method
