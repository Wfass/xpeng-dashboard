.class public final enum Lbyb;
.super Ljava/lang/Enum;
.source "VuiPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbyb;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbyb;

.field public static final enum LEVEL1:Lbyb;

.field public static final enum LEVEL2:Lbyb;

.field public static final enum LEVEL3:Lbyb;

.field public static final enum LEVEL4:Lbyb;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lbyb;

    const/4 v1, 0x0

    const-string v2, "LEVEL1"

    invoke-direct {v0, v2, v1, v1}, Lbyb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbyb;->LEVEL1:Lbyb;

    .line 5
    new-instance v0, Lbyb;

    const/4 v2, 0x1

    const-string v3, "LEVEL2"

    invoke-direct {v0, v3, v2, v2}, Lbyb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbyb;->LEVEL2:Lbyb;

    .line 6
    new-instance v0, Lbyb;

    const/4 v3, 0x2

    const-string v4, "LEVEL3"

    invoke-direct {v0, v4, v3, v3}, Lbyb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbyb;->LEVEL3:Lbyb;

    .line 7
    new-instance v0, Lbyb;

    const/4 v4, 0x3

    const-string v5, "LEVEL4"

    invoke-direct {v0, v5, v4, v4}, Lbyb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbyb;->LEVEL4:Lbyb;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lbyb;

    sget-object v5, Lbyb;->LEVEL1:Lbyb;

    aput-object v5, v0, v1

    sget-object v1, Lbyb;->LEVEL2:Lbyb;

    aput-object v1, v0, v2

    sget-object v1, Lbyb;->LEVEL3:Lbyb;

    aput-object v1, v0, v3

    sget-object v1, Lbyb;->LEVEL4:Lbyb;

    aput-object v1, v0, v4

    sput-object v0, Lbyb;->$VALUES:[Lbyb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lbyb;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbyb;
    .locals 1

    .line 3
    const-class v0, Lbyb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbyb;

    return-object p0
.end method

.method public static values()[Lbyb;
    .locals 1

    .line 3
    sget-object v0, Lbyb;->$VALUES:[Lbyb;

    invoke-virtual {v0}, [Lbyb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbyb;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 15
    iget v0, p0, Lbyb;->a:I

    return v0
.end method
