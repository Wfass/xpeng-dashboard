.class final Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo$O000000o;
.super Lcom/O000000o/O000000o/O000o000;
.source "CollectionTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "O000000o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/O000000o/O000000o/O000o000<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final O000000o:Lcom/O000000o/O000000o/O000o000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O000o000<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/O000000o/O000000o/O0000OOo;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/O000o000;Lcom/O000000o/O000000o/O00000Oo/O0000Oo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O0000OOo;",
            "Ljava/lang/reflect/Type;",
            "Lcom/O000000o/O000000o/O000o000<",
            "TE;>;",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/O000000o/O000000o/O000o000;-><init>()V

    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;

    invoke-direct {v0, p1, p3, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;-><init>(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O000o000;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo$O000000o;->O000000o:Lcom/O000000o/O000000o/O000o000;

    iput-object p4, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo$O000000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo;

    return-void
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000o/O000000o;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v0

    sget-object v1, Lcom/O000000o/O000000o/O00000o/O00000o0;->O0000Oo0:Lcom/O000000o/O000000o/O00000o/O00000o0;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000Oo()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo$O000000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo;

    invoke-interface {v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo;->O000000o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o()V

    :goto_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oO()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo$O000000o;->O000000o:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v1, p1}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo()V

    return-object v0
.end method

.method public bridge synthetic O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo$O000000o;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/util/Collection;)V

    return-void
.end method

.method public O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000o/O00000o;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000Oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo$O000000o;->O000000o:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v1, p1, v0}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o0()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void
.end method

.method public synthetic O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo$O000000o;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
