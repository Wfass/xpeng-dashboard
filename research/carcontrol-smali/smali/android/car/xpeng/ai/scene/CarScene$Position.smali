.class public final enum Landroid/car/xpeng/ai/scene/CarScene$Position;
.super Ljava/lang/Enum;
.source "CarScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/ai/scene/CarScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/xpeng/ai/scene/CarScene$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/xpeng/ai/scene/CarScene$Position;

.field public static final enum POSITION_FRONT_LEFT:Landroid/car/xpeng/ai/scene/CarScene$Position;

.field public static final enum POSITION_FRONT_RIGHT:Landroid/car/xpeng/ai/scene/CarScene$Position;

.field public static final enum POSITION_NONE:Landroid/car/xpeng/ai/scene/CarScene$Position;

.field public static final enum POSITION_SECOND_LEFT:Landroid/car/xpeng/ai/scene/CarScene$Position;

.field public static final enum POSITION_SECOND_RIGHT:Landroid/car/xpeng/ai/scene/CarScene$Position;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 43
    new-instance v0, Landroid/car/xpeng/ai/scene/CarScene$Position;

    const-string v1, "POSITION_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/xpeng/ai/scene/CarScene$Position;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/xpeng/ai/scene/CarScene$Position;->POSITION_NONE:Landroid/car/xpeng/ai/scene/CarScene$Position;

    .line 47
    new-instance v1, Landroid/car/xpeng/ai/scene/CarScene$Position;

    const-string v3, "POSITION_FRONT_LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/xpeng/ai/scene/CarScene$Position;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/xpeng/ai/scene/CarScene$Position;->POSITION_FRONT_LEFT:Landroid/car/xpeng/ai/scene/CarScene$Position;

    .line 51
    new-instance v3, Landroid/car/xpeng/ai/scene/CarScene$Position;

    const-string v5, "POSITION_FRONT_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/xpeng/ai/scene/CarScene$Position;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/xpeng/ai/scene/CarScene$Position;->POSITION_FRONT_RIGHT:Landroid/car/xpeng/ai/scene/CarScene$Position;

    .line 55
    new-instance v5, Landroid/car/xpeng/ai/scene/CarScene$Position;

    const-string v7, "POSITION_SECOND_LEFT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/xpeng/ai/scene/CarScene$Position;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/xpeng/ai/scene/CarScene$Position;->POSITION_SECOND_LEFT:Landroid/car/xpeng/ai/scene/CarScene$Position;

    .line 59
    new-instance v7, Landroid/car/xpeng/ai/scene/CarScene$Position;

    const-string v9, "POSITION_SECOND_RIGHT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Landroid/car/xpeng/ai/scene/CarScene$Position;-><init>(Ljava/lang/String;II)V

    sput-object v7, Landroid/car/xpeng/ai/scene/CarScene$Position;->POSITION_SECOND_RIGHT:Landroid/car/xpeng/ai/scene/CarScene$Position;

    const/4 v9, 0x5

    new-array v9, v9, [Landroid/car/xpeng/ai/scene/CarScene$Position;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 39
    sput-object v9, Landroid/car/xpeng/ai/scene/CarScene$Position;->$VALUES:[Landroid/car/xpeng/ai/scene/CarScene$Position;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 64
    iput p3, p0, Landroid/car/xpeng/ai/scene/CarScene$Position;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/xpeng/ai/scene/CarScene$Position;
    .locals 1

    .line 39
    const-class v0, Landroid/car/xpeng/ai/scene/CarScene$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/ai/scene/CarScene$Position;

    return-object p0
.end method

.method public static values()[Landroid/car/xpeng/ai/scene/CarScene$Position;
    .locals 1

    .line 39
    sget-object v0, Landroid/car/xpeng/ai/scene/CarScene$Position;->$VALUES:[Landroid/car/xpeng/ai/scene/CarScene$Position;

    invoke-virtual {v0}, [Landroid/car/xpeng/ai/scene/CarScene$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/xpeng/ai/scene/CarScene$Position;

    return-object v0
.end method
