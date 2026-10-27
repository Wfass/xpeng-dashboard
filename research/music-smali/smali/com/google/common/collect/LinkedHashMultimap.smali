.class public final Lcom/google/common/collect/LinkedHashMultimap;
.super Lcom/google/common/collect/ai;
.source "LinkedHashMultimap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/LinkedHashMultimap$ValueSet;,
        Lcom/google/common/collect/LinkedHashMultimap$a;,
        Lcom/google/common/collect/LinkedHashMultimap$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ai<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_KEY_CAPACITY:I = 0x10

.field private static final DEFAULT_VALUE_SET_CAPACITY:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field transient a:I

.field private transient multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic a(Lcom/google/common/collect/LinkedHashMultimap;)Lcom/google/common/collect/LinkedHashMultimap$a;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$a;

    return-object p0
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0

    .line 77
    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0

    .line 77
    invoke-static {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 0

    .line 77
    invoke-static {p0}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method static synthetic a(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 0

    .line 77
    invoke-static {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method private static b(Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$a;->a()Lcom/google/common/collect/LinkedHashMultimap$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap$a;->b()Lcom/google/common/collect/LinkedHashMultimap$a;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V

    return-void
.end method

.method private static b(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;",
            "Lcom/google/common/collect/LinkedHashMultimap$a<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$a;->a(Lcom/google/common/collect/LinkedHashMultimap$a;)V

    .line 131
    invoke-virtual {p1, p0}, Lcom/google/common/collect/LinkedHashMultimap$a;->b(Lcom/google/common/collect/LinkedHashMultimap$a;)V

    return-void
.end method

.method private static b(Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 135
    invoke-interface {p0}, Lcom/google/common/collect/LinkedHashMultimap$b;->getPredecessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/common/collect/LinkedHashMultimap$b;->getSuccessorInValueSet()Lcom/google/common/collect/LinkedHashMultimap$b;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method

.method private static b(Lcom/google/common/collect/LinkedHashMultimap$b;Lcom/google/common/collect/LinkedHashMultimap$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;",
            "Lcom/google/common/collect/LinkedHashMultimap$b<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 125
    invoke-interface {p0, p1}, Lcom/google/common/collect/LinkedHashMultimap$b;->setSuccessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$b;)V

    .line 126
    invoke-interface {p1, p0}, Lcom/google/common/collect/LinkedHashMultimap$b;->setPredecessorInValueSet(Lcom/google/common/collect/LinkedHashMultimap$b;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 250
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;

    iget v1, p0, Lcom/google/common/collect/LinkedHashMultimap;->a:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/LinkedHashMultimap$ValueSet;-><init>(Lcom/google/common/collect/LinkedHashMultimap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ai;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method synthetic b()Ljava/util/Collection;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->p()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/google/common/collect/ai;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/ai;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic c()I
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/google/common/collect/ai;->c()I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .line 542
    invoke-super {p0}, Lcom/google/common/collect/ai;->d()V

    .line 543
    iget-object v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->multimapHeaderEntry:Lcom/google/common/collect/LinkedHashMultimap$a;

    invoke-static {v0, v0}, Lcom/google/common/collect/LinkedHashMultimap;->b(Lcom/google/common/collect/LinkedHashMultimap$a;Lcom/google/common/collect/LinkedHashMultimap$a;)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)Z
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/google/common/collect/ai;->e(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/google/common/collect/ai;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 306
    invoke-super {p0}, Lcom/google/common/collect/ai;->f()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/google/common/collect/ai;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/google/common/collect/ai;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method h()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 537
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->k()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Maps;->b(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/google/common/collect/ai;->hashCode()I

    move-result v0

    return v0
.end method

.method public synthetic i()Ljava/util/Collection;
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedHashMultimap;->r()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method k()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 506
    new-instance v0, Lcom/google/common/collect/LinkedHashMultimap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/LinkedHashMultimap$1;-><init>(Lcom/google/common/collect/LinkedHashMultimap;)V

    return-object v0
.end method

.method public bridge synthetic m()Z
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/google/common/collect/ai;->m()Z

    move-result v0

    return v0
.end method

.method public n()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 294
    invoke-super {p0}, Lcom/google/common/collect/ai;->n()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic o()Ljava/util/Map;
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/google/common/collect/ai;->o()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method p()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 236
    iget v0, p0, Lcom/google/common/collect/LinkedHashMultimap;->a:I

    invoke-static {v0}, Lcom/google/common/collect/at;->a(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 279
    invoke-super {p0}, Lcom/google/common/collect/ai;->r()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 76
    invoke-super {p0}, Lcom/google/common/collect/ai;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
