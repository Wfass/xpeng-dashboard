.class final Lcom/google/common/graph/h$a;
.super Lcom/google/common/graph/h;
.source "EndpointPairIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/graph/h<",
        "TN;>;"
    }
.end annotation


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

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/google/common/graph/h;-><init>(Lcom/google/common/graph/e;Lcom/google/common/graph/h$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/e;Lcom/google/common/graph/h$1;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/google/common/graph/h$a;-><init>(Lcom/google/common/graph/e;)V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/google/common/graph/h$a;->d()Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/google/common/graph/EndpointPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/common/graph/h$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/google/common/graph/h$a;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/graph/h$a;->b:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/graph/h$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/google/common/graph/h$a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/graph/EndpointPair;

    return-object v0
.end method
