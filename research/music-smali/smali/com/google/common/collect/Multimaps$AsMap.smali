.class final Lcom/google/common/collect/Multimaps$AsMap;
.super Lcom/google/common/collect/Maps$h;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AsMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Multimaps$AsMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$h<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/al<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/al;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/al<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1704
    invoke-direct {p0}, Lcom/google/common/collect/Maps$h;-><init>()V

    .line 1705
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/al;

    iput-object p1, p0, Lcom/google/common/collect/Multimaps$AsMap;->a:Lcom/google/common/collect/al;

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/Multimaps$AsMap;)Lcom/google/common/collect/al;
    .locals 0

    .line 1701
    iget-object p0, p0, Lcom/google/common/collect/Multimaps$AsMap;->a:Lcom/google/common/collect/al;

    return-object p0
.end method


# virtual methods
.method protected a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 1715
    new-instance v0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;-><init>(Lcom/google/common/collect/Multimaps$AsMap;)V

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .locals 1

    .line 1719
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0}, Lcom/google/common/collect/al;->n()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1755
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0, p1}, Lcom/google/common/collect/al;->d(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1760
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0, p1}, Lcom/google/common/collect/al;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 1780
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0}, Lcom/google/common/collect/al;->d()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0, p1}, Lcom/google/common/collect/al;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1701
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->b(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 1770
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0}, Lcom/google/common/collect/al;->m()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1765
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0}, Lcom/google/common/collect/al;->n()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1701
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1710
    iget-object v0, p0, Lcom/google/common/collect/Multimaps$AsMap;->a:Lcom/google/common/collect/al;

    invoke-interface {v0}, Lcom/google/common/collect/al;->n()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
