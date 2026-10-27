.class final Lcom/google/common/graph/f;
.super Ljava/lang/Object;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TN;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/graph/f;->a:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/common/graph/f;)Ljava/util/Map;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/google/common/graph/f;->b:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/google/common/graph/f;->c(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/common/graph/f;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/google/common/graph/f;->c:I

    return p0
.end method

.method static synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    invoke-static {p0}, Lcom/google/common/graph/f;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/google/common/graph/f;)I
    .locals 0

    .line 45
    iget p0, p0, Lcom/google/common/graph/f;->d:I

    return p0
.end method

.method private static c(Ljava/lang/Object;)Z
    .locals 1

    .line 245
    sget-object v0, Lcom/google/common/graph/f;->a:Ljava/lang/Object;

    if-eq p0, v0, :cond_1

    instance-of p0, p0, Lcom/google/common/graph/f$a;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static d(Ljava/lang/Object;)Z
    .locals 1

    .line 249
    sget-object v0, Lcom/google/common/graph/f;->a:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
