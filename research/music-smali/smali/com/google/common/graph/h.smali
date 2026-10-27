.class abstract Lcom/google/common/graph/h;
.super Lcom/google/common/collect/b;
.source "EndpointPairIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/h$b;,
        Lcom/google/common/graph/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/b<",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/common/graph/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/e<",
            "TN;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/graph/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/e<",
            "TN;>;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/google/common/collect/b;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/google/common/graph/h;->a:Ljava/lang/Object;

    .line 37
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/bk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/h;->b:Ljava/util/Iterator;

    .line 44
    iput-object p1, p0, Lcom/google/common/graph/h;->c:Lcom/google/common/graph/e;

    .line 45
    invoke-interface {p1}, Lcom/google/common/graph/e;->c()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/graph/h;->d:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/e;Lcom/google/common/graph/h$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/google/common/graph/h;-><init>(Lcom/google/common/graph/e;)V

    return-void
.end method

.method static a(Lcom/google/common/graph/e;)Lcom/google/common/graph/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/e<",
            "TN;>;)",
            "Lcom/google/common/graph/h<",
            "TN;>;"
        }
    .end annotation

    .line 40
    invoke-interface {p0}, Lcom/google/common/graph/e;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/graph/h$a;

    invoke-direct {v0, p0, v1}, Lcom/google/common/graph/h$a;-><init>(Lcom/google/common/graph/e;Lcom/google/common/graph/h$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/graph/h$b;

    invoke-direct {v0, p0, v1}, Lcom/google/common/graph/h$b;-><init>(Lcom/google/common/graph/e;Lcom/google/common/graph/h$1;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected final c()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/google/common/graph/h;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/common/base/o;->b(Z)V

    .line 54
    iget-object v0, p0, Lcom/google/common/graph/h;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/h;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/h;->a:Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/google/common/graph/h;->c:Lcom/google/common/graph/e;

    iget-object v2, p0, Lcom/google/common/graph/h;->a:Ljava/lang/Object;

    invoke-interface {v0, v2}, Lcom/google/common/graph/e;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/graph/h;->b:Ljava/util/Iterator;

    return v1
.end method
