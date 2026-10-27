.class public final enum Lmf$a;
.super Ljava/lang/Enum;
.source "MergePaths.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmf$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmf$a;

.field public static final enum ADD:Lmf$a;

.field public static final enum EXCLUDE_INTERSECTIONS:Lmf$a;

.field public static final enum INTERSECT:Lmf$a;

.field public static final enum MERGE:Lmf$a;

.field public static final enum SUBTRACT:Lmf$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    new-instance v0, Lmf$a;

    const/4 v1, 0x0

    const-string v2, "MERGE"

    invoke-direct {v0, v2, v1}, Lmf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmf$a;->MERGE:Lmf$a;

    .line 16
    new-instance v0, Lmf$a;

    const/4 v2, 0x1

    const-string v3, "ADD"

    invoke-direct {v0, v3, v2}, Lmf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmf$a;->ADD:Lmf$a;

    .line 17
    new-instance v0, Lmf$a;

    const/4 v3, 0x2

    const-string v4, "SUBTRACT"

    invoke-direct {v0, v4, v3}, Lmf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmf$a;->SUBTRACT:Lmf$a;

    .line 18
    new-instance v0, Lmf$a;

    const/4 v4, 0x3

    const-string v5, "INTERSECT"

    invoke-direct {v0, v5, v4}, Lmf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmf$a;->INTERSECT:Lmf$a;

    .line 19
    new-instance v0, Lmf$a;

    const/4 v5, 0x4

    const-string v6, "EXCLUDE_INTERSECTIONS"

    invoke-direct {v0, v6, v5}, Lmf$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmf$a;->EXCLUDE_INTERSECTIONS:Lmf$a;

    const/4 v0, 0x5

    .line 14
    new-array v0, v0, [Lmf$a;

    sget-object v6, Lmf$a;->MERGE:Lmf$a;

    aput-object v6, v0, v1

    sget-object v1, Lmf$a;->ADD:Lmf$a;

    aput-object v1, v0, v2

    sget-object v1, Lmf$a;->SUBTRACT:Lmf$a;

    aput-object v1, v0, v3

    sget-object v1, Lmf$a;->INTERSECT:Lmf$a;

    aput-object v1, v0, v4

    sget-object v1, Lmf$a;->EXCLUDE_INTERSECTIONS:Lmf$a;

    aput-object v1, v0, v5

    sput-object v0, Lmf$a;->$VALUES:[Lmf$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lmf$a;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 34
    sget-object p0, Lmf$a;->MERGE:Lmf$a;

    return-object p0

    .line 32
    :cond_0
    sget-object p0, Lmf$a;->EXCLUDE_INTERSECTIONS:Lmf$a;

    return-object p0

    .line 30
    :cond_1
    sget-object p0, Lmf$a;->INTERSECT:Lmf$a;

    return-object p0

    .line 28
    :cond_2
    sget-object p0, Lmf$a;->SUBTRACT:Lmf$a;

    return-object p0

    .line 26
    :cond_3
    sget-object p0, Lmf$a;->ADD:Lmf$a;

    return-object p0

    .line 24
    :cond_4
    sget-object p0, Lmf$a;->MERGE:Lmf$a;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lmf$a;
    .locals 1

    .line 14
    const-class v0, Lmf$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmf$a;

    return-object p0
.end method

.method public static values()[Lmf$a;
    .locals 1

    .line 14
    sget-object v0, Lmf$a;->$VALUES:[Lmf$a;

    invoke-virtual {v0}, [Lmf$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmf$a;

    return-object v0
.end method
