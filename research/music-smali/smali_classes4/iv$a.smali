.class final Liv$a;
.super Lcom/O000000o/O000000o/q;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/O000000o/O000000o/q<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/O000000o/O000000o/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/q<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/O000000o/O000000o/O00000Oo/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000Oo/g<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/O000000o/O000000o/e;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/q;Lcom/O000000o/O000000o/O00000Oo/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/e;",
            "Ljava/lang/reflect/Type;",
            "Lcom/O000000o/O000000o/q<",
            "TE;>;",
            "Lcom/O000000o/O000000o/O00000Oo/g<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/O000000o/O000000o/q;-><init>()V

    new-instance v0, Ljc;

    invoke-direct {v0, p1, p3, p2}, Ljc;-><init>(Lcom/O000000o/O000000o/e;Lcom/O000000o/O000000o/q;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Liv$a;->a:Lcom/O000000o/O000000o/q;

    iput-object p4, p0, Liv$a;->b:Lcom/O000000o/O000000o/O00000Oo/g;

    return-void
.end method


# virtual methods
.method public synthetic a(Ljg;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Liv$a;->b(Ljg;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Liv$a;->a(Ljh;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Ljh;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljh;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljh;->f()Ljh;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljh;->b()Ljh;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Liv$a;->a:Lcom/O000000o/O000000o/q;

    invoke-virtual {v1, p1, v0}, Lcom/O000000o/O000000o/q;->a(Ljh;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljh;->c()Ljh;

    return-void
.end method

.method public b(Ljg;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljg;->f()Lji;

    move-result-object v0

    sget-object v1, Lji;->O0000Oo0:Lji;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljg;->j()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Liv$a;->b:Lcom/O000000o/O000000o/O00000Oo/g;

    invoke-interface {v0}, Lcom/O000000o/O000000o/O00000Oo/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Ljg;->a()V

    :goto_0
    invoke-virtual {p1}, Ljg;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Liv$a;->a:Lcom/O000000o/O000000o/q;

    invoke-virtual {v1, p1}, Lcom/O000000o/O000000o/q;->a(Ljg;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljg;->b()V

    return-object v0
.end method
