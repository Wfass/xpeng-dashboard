.class Lcom/google/common/collect/Maps$b;
.super Lcom/google/common/collect/Maps$h;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$h<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/base/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/h<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/common/base/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TK;>;",
            "Lcom/google/common/base/h<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 773
    invoke-direct {p0}, Lcom/google/common/collect/Maps$h;-><init>()V

    .line 774
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/google/common/collect/Maps$b;->b:Ljava/util/Set;

    .line 775
    invoke-static {p2}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/h;

    iput-object p1, p0, Lcom/google/common/collect/Maps$b;->a:Lcom/google/common/base/h;

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 839
    new-instance v0, Lcom/google/common/collect/Maps$AsMapView$1EntrySetImpl;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$AsMapView$1EntrySetImpl;-><init>(Lcom/google/common/collect/Maps$b;)V

    return-object v0
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 780
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$b;->d()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->b:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/Maps$b;->a:Lcom/google/common/base/h;

    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Lcom/google/common/base/h;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 822
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$b;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 795
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$b;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->b:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 800
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$b;->d()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/Collections2;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->a:Lcom/google/common/base/h;

    invoke-interface {v0, p1}, Lcom/google/common/base/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 811
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$b;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/google/common/collect/Maps$b;->a:Lcom/google/common/base/h;

    invoke-interface {v0, p1}, Lcom/google/common/base/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 790
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$b;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
