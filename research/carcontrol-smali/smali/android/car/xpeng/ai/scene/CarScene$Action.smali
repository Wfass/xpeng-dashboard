.class public final enum Landroid/car/xpeng/ai/scene/CarScene$Action;
.super Ljava/lang/Enum;
.source "CarScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/ai/scene/CarScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/xpeng/ai/scene/CarScene$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/xpeng/ai/scene/CarScene$Action;

.field public static final enum ACTION_ENTER:Landroid/car/xpeng/ai/scene/CarScene$Action;

.field public static final enum ACTION_EXIT:Landroid/car/xpeng/ai/scene/CarScene$Action;

.field public static final enum ACTION_NONE:Landroid/car/xpeng/ai/scene/CarScene$Action;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Landroid/car/xpeng/ai/scene/CarScene$Action;

    const-string v1, "ACTION_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/xpeng/ai/scene/CarScene$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/xpeng/ai/scene/CarScene$Action;->ACTION_NONE:Landroid/car/xpeng/ai/scene/CarScene$Action;

    .line 24
    new-instance v1, Landroid/car/xpeng/ai/scene/CarScene$Action;

    const-string v3, "ACTION_ENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/xpeng/ai/scene/CarScene$Action;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/xpeng/ai/scene/CarScene$Action;->ACTION_ENTER:Landroid/car/xpeng/ai/scene/CarScene$Action;

    .line 28
    new-instance v3, Landroid/car/xpeng/ai/scene/CarScene$Action;

    const-string v5, "ACTION_EXIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/xpeng/ai/scene/CarScene$Action;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/xpeng/ai/scene/CarScene$Action;->ACTION_EXIT:Landroid/car/xpeng/ai/scene/CarScene$Action;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/car/xpeng/ai/scene/CarScene$Action;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 16
    sput-object v5, Landroid/car/xpeng/ai/scene/CarScene$Action;->$VALUES:[Landroid/car/xpeng/ai/scene/CarScene$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput p3, p0, Landroid/car/xpeng/ai/scene/CarScene$Action;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/xpeng/ai/scene/CarScene$Action;
    .locals 1

    .line 16
    const-class v0, Landroid/car/xpeng/ai/scene/CarScene$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/ai/scene/CarScene$Action;

    return-object p0
.end method

.method public static values()[Landroid/car/xpeng/ai/scene/CarScene$Action;
    .locals 1

    .line 16
    sget-object v0, Landroid/car/xpeng/ai/scene/CarScene$Action;->$VALUES:[Landroid/car/xpeng/ai/scene/CarScene$Action;

    invoke-virtual {v0}, [Landroid/car/xpeng/ai/scene/CarScene$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/xpeng/ai/scene/CarScene$Action;

    return-object v0
.end method
