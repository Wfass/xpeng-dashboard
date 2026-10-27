.class abstract enum Lcom/google/common/collect/bd$b;
.super Ljava/lang/Enum;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/bd$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/bd$b;

.field public static final enum ANY_PRESENT:Lcom/google/common/collect/bd$b;

.field public static final enum FIRST_AFTER:Lcom/google/common/collect/bd$b;

.field public static final enum FIRST_PRESENT:Lcom/google/common/collect/bd$b;

.field public static final enum LAST_BEFORE:Lcom/google/common/collect/bd$b;

.field public static final enum LAST_PRESENT:Lcom/google/common/collect/bd$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 49
    new-instance v0, Lcom/google/common/collect/bd$b$1;

    const/4 v1, 0x0

    const-string v2, "ANY_PRESENT"

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/bd$b$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/bd$b;->ANY_PRESENT:Lcom/google/common/collect/bd$b;

    .line 57
    new-instance v0, Lcom/google/common/collect/bd$b$2;

    const/4 v2, 0x1

    const-string v3, "LAST_PRESENT"

    invoke-direct {v0, v3, v2}, Lcom/google/common/collect/bd$b$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/bd$b;->LAST_PRESENT:Lcom/google/common/collect/bd$b;

    .line 79
    new-instance v0, Lcom/google/common/collect/bd$b$3;

    const/4 v3, 0x2

    const-string v4, "FIRST_PRESENT"

    invoke-direct {v0, v4, v3}, Lcom/google/common/collect/bd$b$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/bd$b;->FIRST_PRESENT:Lcom/google/common/collect/bd$b;

    .line 105
    new-instance v0, Lcom/google/common/collect/bd$b$4;

    const/4 v4, 0x3

    const-string v5, "FIRST_AFTER"

    invoke-direct {v0, v5, v4}, Lcom/google/common/collect/bd$b$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/bd$b;->FIRST_AFTER:Lcom/google/common/collect/bd$b;

    .line 116
    new-instance v0, Lcom/google/common/collect/bd$b$5;

    const/4 v5, 0x4

    const-string v6, "LAST_BEFORE"

    invoke-direct {v0, v6, v5}, Lcom/google/common/collect/bd$b$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/bd$b;->LAST_BEFORE:Lcom/google/common/collect/bd$b;

    const/4 v0, 0x5

    .line 44
    new-array v0, v0, [Lcom/google/common/collect/bd$b;

    sget-object v6, Lcom/google/common/collect/bd$b;->ANY_PRESENT:Lcom/google/common/collect/bd$b;

    aput-object v6, v0, v1

    sget-object v1, Lcom/google/common/collect/bd$b;->LAST_PRESENT:Lcom/google/common/collect/bd$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/bd$b;->FIRST_PRESENT:Lcom/google/common/collect/bd$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/collect/bd$b;->FIRST_AFTER:Lcom/google/common/collect/bd$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/collect/bd$b;->LAST_BEFORE:Lcom/google/common/collect/bd$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/common/collect/bd$b;->$VALUES:[Lcom/google/common/collect/bd$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/bd$1;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/bd$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/bd$b;
    .locals 1

    .line 44
    const-class v0, Lcom/google/common/collect/bd$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/bd$b;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/bd$b;
    .locals 1

    .line 44
    sget-object v0, Lcom/google/common/collect/bd$b;->$VALUES:[Lcom/google/common/collect/bd$b;

    invoke-virtual {v0}, [Lcom/google/common/collect/bd$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/bd$b;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;",
            "Ljava/util/List<",
            "+TE;>;I)I"
        }
    .end annotation
.end method
