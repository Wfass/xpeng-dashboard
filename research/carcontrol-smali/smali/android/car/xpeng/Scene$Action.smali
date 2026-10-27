.class public final enum Landroid/car/xpeng/Scene$Action;
.super Ljava/lang/Enum;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/car/xpeng/Scene$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/car/xpeng/Scene$Action;

.field public static final enum ENTER:Landroid/car/xpeng/Scene$Action;

.field public static final enum EXIT:Landroid/car/xpeng/Scene$Action;

.field public static final enum NONE:Landroid/car/xpeng/Scene$Action;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Landroid/car/xpeng/Scene$Action;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/car/xpeng/Scene$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/car/xpeng/Scene$Action;->NONE:Landroid/car/xpeng/Scene$Action;

    .line 27
    new-instance v1, Landroid/car/xpeng/Scene$Action;

    const-string v3, "ENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Landroid/car/xpeng/Scene$Action;-><init>(Ljava/lang/String;II)V

    sput-object v1, Landroid/car/xpeng/Scene$Action;->ENTER:Landroid/car/xpeng/Scene$Action;

    .line 31
    new-instance v3, Landroid/car/xpeng/Scene$Action;

    const-string v5, "EXIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Landroid/car/xpeng/Scene$Action;-><init>(Ljava/lang/String;II)V

    sput-object v3, Landroid/car/xpeng/Scene$Action;->EXIT:Landroid/car/xpeng/Scene$Action;

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/car/xpeng/Scene$Action;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 19
    sput-object v5, Landroid/car/xpeng/Scene$Action;->$VALUES:[Landroid/car/xpeng/Scene$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Landroid/car/xpeng/Scene$Action;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/car/xpeng/Scene$Action;
    .locals 1

    .line 19
    const-class v0, Landroid/car/xpeng/Scene$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/car/xpeng/Scene$Action;

    return-object p0
.end method

.method public static values()[Landroid/car/xpeng/Scene$Action;
    .locals 1

    .line 19
    sget-object v0, Landroid/car/xpeng/Scene$Action;->$VALUES:[Landroid/car/xpeng/Scene$Action;

    invoke-virtual {v0}, [Landroid/car/xpeng/Scene$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/car/xpeng/Scene$Action;

    return-object v0
.end method
