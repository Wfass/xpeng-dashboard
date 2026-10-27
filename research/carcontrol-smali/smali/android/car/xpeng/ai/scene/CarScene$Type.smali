.class public final enum Landroid/car/xpeng/ai/scene/CarScene$Type;
.super Ljava/lang/Enum;
.source "CarScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/ai/scene/CarScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/xpeng/ai/scene/CarScene$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/xpeng/ai/scene/CarScene$Type;

.field public static final enum TYPE_AUTO_WAKE:Landroid/car/xpeng/ai/scene/CarScene$Type;

.field public static final enum TYPE_IG_OFF:Landroid/car/xpeng/ai/scene/CarScene$Type;

.field public static final enum TYPE_USER_ACTION:Landroid/car/xpeng/ai/scene/CarScene$Type;

.field public static final enum TYPE_WELCOME:Landroid/car/xpeng/ai/scene/CarScene$Type;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 75
    new-instance v0, Landroid/car/xpeng/ai/scene/CarScene$Type;

    const-string v1, "TYPE_WELCOME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/xpeng/ai/scene/CarScene$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/xpeng/ai/scene/CarScene$Type;->TYPE_WELCOME:Landroid/car/xpeng/ai/scene/CarScene$Type;

    .line 79
    new-instance v1, Landroid/car/xpeng/ai/scene/CarScene$Type;

    const-string v3, "TYPE_AUTO_WAKE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/xpeng/ai/scene/CarScene$Type;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/xpeng/ai/scene/CarScene$Type;->TYPE_AUTO_WAKE:Landroid/car/xpeng/ai/scene/CarScene$Type;

    .line 84
    new-instance v3, Landroid/car/xpeng/ai/scene/CarScene$Type;

    const-string v5, "TYPE_IG_OFF"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/xpeng/ai/scene/CarScene$Type;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/xpeng/ai/scene/CarScene$Type;->TYPE_IG_OFF:Landroid/car/xpeng/ai/scene/CarScene$Type;

    .line 89
    new-instance v5, Landroid/car/xpeng/ai/scene/CarScene$Type;

    const-string v7, "TYPE_USER_ACTION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Landroid/car/xpeng/ai/scene/CarScene$Type;-><init>(Ljava/lang/String;II)V

    sput-object v5, Landroid/car/xpeng/ai/scene/CarScene$Type;->TYPE_USER_ACTION:Landroid/car/xpeng/ai/scene/CarScene$Type;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/car/xpeng/ai/scene/CarScene$Type;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 71
    sput-object v7, Landroid/car/xpeng/ai/scene/CarScene$Type;->$VALUES:[Landroid/car/xpeng/ai/scene/CarScene$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 94
    iput p3, p0, Landroid/car/xpeng/ai/scene/CarScene$Type;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/xpeng/ai/scene/CarScene$Type;
    .locals 1

    .line 71
    const-class v0, Landroid/car/xpeng/ai/scene/CarScene$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/ai/scene/CarScene$Type;

    return-object p0
.end method

.method public static values()[Landroid/car/xpeng/ai/scene/CarScene$Type;
    .locals 1

    .line 71
    sget-object v0, Landroid/car/xpeng/ai/scene/CarScene$Type;->$VALUES:[Landroid/car/xpeng/ai/scene/CarScene$Type;

    invoke-virtual {v0}, [Landroid/car/xpeng/ai/scene/CarScene$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/xpeng/ai/scene/CarScene$Type;

    return-object v0
.end method
