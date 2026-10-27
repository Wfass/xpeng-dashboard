.class public final enum Lmg$a;
.super Ljava/lang/Enum;
.source "PolystarShape.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmg$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmg$a;

.field public static final enum POLYGON:Lmg$a;

.field public static final enum STAR:Lmg$a;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 14
    new-instance v0, Lmg$a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "STAR"

    invoke-direct {v0, v3, v1, v2}, Lmg$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmg$a;->STAR:Lmg$a;

    .line 15
    new-instance v0, Lmg$a;

    const/4 v3, 0x2

    const-string v4, "POLYGON"

    invoke-direct {v0, v4, v2, v3}, Lmg$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmg$a;->POLYGON:Lmg$a;

    .line 13
    new-array v0, v3, [Lmg$a;

    sget-object v3, Lmg$a;->STAR:Lmg$a;

    aput-object v3, v0, v1

    sget-object v1, Lmg$a;->POLYGON:Lmg$a;

    aput-object v1, v0, v2

    sput-object v0, Lmg$a;->$VALUES:[Lmg$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lmg$a;->value:I

    return-void
.end method

.method public static a(I)Lmg$a;
    .locals 5

    .line 24
    invoke-static {}, Lmg$a;->values()[Lmg$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 25
    iget v4, v3, Lmg$a;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmg$a;
    .locals 1

    .line 13
    const-class v0, Lmg$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmg$a;

    return-object p0
.end method

.method public static values()[Lmg$a;
    .locals 1

    .line 13
    sget-object v0, Lmg$a;->$VALUES:[Lmg$a;

    invoke-virtual {v0}, [Lmg$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmg$a;

    return-object v0
.end method
