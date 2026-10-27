.class public final enum Lmo$a;
.super Ljava/lang/Enum;
.source "ShapeStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmo$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmo$a;

.field public static final enum BUTT:Lmo$a;

.field public static final enum ROUND:Lmo$a;

.field public static final enum UNKNOWN:Lmo$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lmo$a;

    const/4 v1, 0x0

    const-string v2, "BUTT"

    invoke-direct {v0, v2, v1}, Lmo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmo$a;->BUTT:Lmo$a;

    .line 20
    new-instance v0, Lmo$a;

    const/4 v2, 0x1

    const-string v3, "ROUND"

    invoke-direct {v0, v3, v2}, Lmo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmo$a;->ROUND:Lmo$a;

    .line 21
    new-instance v0, Lmo$a;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    invoke-direct {v0, v4, v3}, Lmo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmo$a;->UNKNOWN:Lmo$a;

    const/4 v0, 0x3

    .line 18
    new-array v0, v0, [Lmo$a;

    sget-object v4, Lmo$a;->BUTT:Lmo$a;

    aput-object v4, v0, v1

    sget-object v1, Lmo$a;->ROUND:Lmo$a;

    aput-object v1, v0, v2

    sget-object v1, Lmo$a;->UNKNOWN:Lmo$a;

    aput-object v1, v0, v3

    sput-object v0, Lmo$a;->$VALUES:[Lmo$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmo$a;
    .locals 1

    .line 18
    const-class v0, Lmo$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmo$a;

    return-object p0
.end method

.method public static values()[Lmo$a;
    .locals 1

    .line 18
    sget-object v0, Lmo$a;->$VALUES:[Lmo$a;

    invoke-virtual {v0}, [Lmo$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmo$a;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Paint$Cap;
    .locals 2

    .line 24
    sget-object v0, Lmo$1;->a:[I

    invoke-virtual {p0}, Lmo$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 31
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 28
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object v0

    .line 26
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object v0
.end method
