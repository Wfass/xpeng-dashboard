.class abstract enum Lcom/google/common/collect/TreeMultiset$a;
.super Ljava/lang/Enum;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/TreeMultiset$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/TreeMultiset$a;

.field public static final enum DISTINCT:Lcom/google/common/collect/TreeMultiset$a;

.field public static final enum SIZE:Lcom/google/common/collect/TreeMultiset$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 130
    new-instance v0, Lcom/google/common/collect/TreeMultiset$a$1;

    const/4 v1, 0x0

    const-string v2, "SIZE"

    invoke-direct {v0, v2, v1}, Lcom/google/common/collect/TreeMultiset$a$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/TreeMultiset$a;->SIZE:Lcom/google/common/collect/TreeMultiset$a;

    .line 141
    new-instance v0, Lcom/google/common/collect/TreeMultiset$a$2;

    const/4 v2, 0x1

    const-string v3, "DISTINCT"

    invoke-direct {v0, v3, v2}, Lcom/google/common/collect/TreeMultiset$a$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/TreeMultiset$a;->DISTINCT:Lcom/google/common/collect/TreeMultiset$a;

    const/4 v0, 0x2

    .line 129
    new-array v0, v0, [Lcom/google/common/collect/TreeMultiset$a;

    sget-object v3, Lcom/google/common/collect/TreeMultiset$a;->SIZE:Lcom/google/common/collect/TreeMultiset$a;

    aput-object v3, v0, v1

    sget-object v1, Lcom/google/common/collect/TreeMultiset$a;->DISTINCT:Lcom/google/common/collect/TreeMultiset$a;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/collect/TreeMultiset$a;->$VALUES:[Lcom/google/common/collect/TreeMultiset$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/TreeMultiset$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/TreeMultiset$a;
    .locals 1

    .line 129
    const-class v0, Lcom/google/common/collect/TreeMultiset$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/TreeMultiset$a;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/TreeMultiset$a;
    .locals 1

    .line 129
    sget-object v0, Lcom/google/common/collect/TreeMultiset$a;->$VALUES:[Lcom/google/common/collect/TreeMultiset$a;

    invoke-virtual {v0}, [Lcom/google/common/collect/TreeMultiset$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/TreeMultiset$a;

    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/google/common/collect/TreeMultiset$b;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "*>;)I"
        }
    .end annotation
.end method

.method abstract b(Lcom/google/common/collect/TreeMultiset$b;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$b<",
            "*>;)J"
        }
    .end annotation
.end method
