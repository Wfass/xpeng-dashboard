.class public final enum Laoz$c;
.super Ljava/lang/Enum;
.source "Caton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Laoz$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laoz$c;

.field public static final enum FRAME:Laoz$c;

.field public static final enum LOOPER:Laoz$c;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 107
    new-instance v0, Laoz$c;

    const/4 v1, 0x0

    const-string v2, "LOOPER"

    invoke-direct {v0, v2, v1, v1}, Laoz$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laoz$c;->LOOPER:Laoz$c;

    new-instance v0, Laoz$c;

    const/4 v2, 0x1

    const-string v3, "FRAME"

    invoke-direct {v0, v3, v2, v2}, Laoz$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Laoz$c;->FRAME:Laoz$c;

    const/4 v0, 0x2

    .line 106
    new-array v0, v0, [Laoz$c;

    sget-object v3, Laoz$c;->LOOPER:Laoz$c;

    aput-object v3, v0, v1

    sget-object v1, Laoz$c;->FRAME:Laoz$c;

    aput-object v1, v0, v2

    sput-object v0, Laoz$c;->$VALUES:[Laoz$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput p3, p0, Laoz$c;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laoz$c;
    .locals 1

    .line 106
    const-class v0, Laoz$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Laoz$c;

    return-object p0
.end method

.method public static values()[Laoz$c;
    .locals 1

    .line 106
    sget-object v0, Laoz$c;->$VALUES:[Laoz$c;

    invoke-virtual {v0}, [Laoz$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laoz$c;

    return-object v0
.end method
