.class public abstract Lcom/google/common/graph/c;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lcom/google/common/graph/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/graph/k<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method private static a(Lcom/google/common/graph/k;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/k<",
            "TN;TE;>;)",
            "Ljava/util/Map<",
            "TE;",
            "Lcom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 273
    new-instance v0, Lcom/google/common/graph/c$2;

    invoke-direct {v0, p0}, Lcom/google/common/graph/c$2;-><init>(Lcom/google/common/graph/k;)V

    .line 280
    invoke-interface {p0}, Lcom/google/common/graph/k;->b()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Set;Lcom/google/common/base/h;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 242
    :cond_0
    instance-of v1, p1, Lcom/google/common/graph/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 245
    :cond_1
    check-cast p1, Lcom/google/common/graph/k;

    .line 247
    invoke-virtual {p0}, Lcom/google/common/graph/c;->c()Z

    move-result v1

    invoke-interface {p1}, Lcom/google/common/graph/k;->c()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/google/common/graph/c;->a()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/common/graph/k;->a()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    invoke-static {p0}, Lcom/google/common/graph/c;->a(Lcom/google/common/graph/k;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Lcom/google/common/graph/c;->a(Lcom/google/common/graph/k;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 254
    invoke-static {p0}, Lcom/google/common/graph/c;->a(Lcom/google/common/graph/k;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDirected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p0}, Lcom/google/common/graph/c;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowsParallelEdges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p0}, Lcom/google/common/graph/c;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowsSelfLoops: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p0}, Lcom/google/common/graph/c;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", nodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p0}, Lcom/google/common/graph/c;->a()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", edges: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-static {p0}, Lcom/google/common/graph/c;->a(Lcom/google/common/graph/k;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
