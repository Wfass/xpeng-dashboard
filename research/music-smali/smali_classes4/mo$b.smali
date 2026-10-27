.class public final enum Lmo$b;
.super Ljava/lang/Enum;
.source "ShapeStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmo$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmo$b;

.field public static final enum BEVEL:Lmo$b;

.field public static final enum MITER:Lmo$b;

.field public static final enum ROUND:Lmo$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lmo$b;

    const/4 v1, 0x0

    const-string v2, "MITER"

    invoke-direct {v0, v2, v1}, Lmo$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmo$b;->MITER:Lmo$b;

    .line 38
    new-instance v0, Lmo$b;

    const/4 v2, 0x1

    const-string v3, "ROUND"

    invoke-direct {v0, v3, v2}, Lmo$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmo$b;->ROUND:Lmo$b;

    .line 39
    new-instance v0, Lmo$b;

    const/4 v3, 0x2

    const-string v4, "BEVEL"

    invoke-direct {v0, v4, v3}, Lmo$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmo$b;->BEVEL:Lmo$b;

    const/4 v0, 0x3

    .line 36
    new-array v0, v0, [Lmo$b;

    sget-object v4, Lmo$b;->MITER:Lmo$b;

    aput-object v4, v0, v1

    sget-object v1, Lmo$b;->ROUND:Lmo$b;

    aput-object v1, v0, v2

    sget-object v1, Lmo$b;->BEVEL:Lmo$b;

    aput-object v1, v0, v3

    sput-object v0, Lmo$b;->$VALUES:[Lmo$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmo$b;
    .locals 1

    .line 36
    const-class v0, Lmo$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmo$b;

    return-object p0
.end method

.method public static values()[Lmo$b;
    .locals 1

    .line 36
    sget-object v0, Lmo$b;->$VALUES:[Lmo$b;

    invoke-virtual {v0}, [Lmo$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmo$b;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/graphics/Paint$Join;
    .locals 2

    .line 42
    sget-object v0, Lmo$1;->b:[I

    invoke-virtual {p0}, Lmo$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 48
    :cond_0
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object v0

    .line 46
    :cond_1
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object v0

    .line 44
    :cond_2
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object v0
.end method
