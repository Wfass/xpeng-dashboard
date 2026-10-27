.class Lcom/google/common/collect/Maps$f;
.super Lcom/google/common/collect/Maps$a;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$a<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final c:Lcom/google/common/base/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/p<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;Lcom/google/common/base/p;Lcom/google/common/base/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/google/common/base/p<",
            "-TK;>;",
            "Lcom/google/common/base/p<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 2679
    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/Maps$a;-><init>(Ljava/util/Map;Lcom/google/common/base/p;)V

    .line 2680
    iput-object p2, p0, Lcom/google/common/collect/Maps$f;->c:Lcom/google/common/base/p;

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2685
    iget-object v0, p0, Lcom/google/common/collect/Maps$f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$f;->b:Lcom/google/common/base/p;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Lcom/google/common/base/p;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2690
    iget-object v0, p0, Lcom/google/common/collect/Maps$f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Maps$f;->c:Lcom/google/common/base/p;

    invoke-static {v0, v1}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;Lcom/google/common/base/p;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 2698
    iget-object v0, p0, Lcom/google/common/collect/Maps$f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Maps$f;->c:Lcom/google/common/base/p;

    invoke-interface {v0, p1}, Lcom/google/common/base/p;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
