.class public final Lcom/O000000o/O000000o/O0000o00;
.super Lcom/O000000o/O000000o/r;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/r;",
        "Ljava/lang/Iterable<",
        "Lcom/O000000o/O000000o/r;",
        ">;"
    }
.end annotation


# instance fields
.field private final O000000o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/O000000o/O000000o/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/O000000o/O000000o/r;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    return-void
.end method


# virtual methods
.method O000000o()Lcom/O000000o/O000000o/O0000o00;
    .locals 3

    new-instance v0, Lcom/O000000o/O000000o/O0000o00;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O0000o00;-><init>()V

    iget-object v1, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/O000000o/O000000o/r;

    invoke-virtual {v2}, Lcom/O000000o/O000000o/r;->O0000o0O()Lcom/O000000o/O000000o/r;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/O000000o/O000000o/O0000o00;->O000000o(Lcom/O000000o/O000000o/r;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public O000000o(I)Lcom/O000000o/O000000o/r;
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/O000000o/O000000o/r;

    return-object p1
.end method

.method public O000000o(Lcom/O000000o/O000000o/O0000o00;)V
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    iget-object p1, p1, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public O000000o(Lcom/O000000o/O000000o/r;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/O000000o/O000000o/i;->a:Lcom/O000000o/O000000o/i;

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public O00000Oo()I
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public O00000o()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/r;->O00000o()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public O00000o0()Ljava/lang/Number;
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/r;->O00000o0()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public O00000oO()D
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/r;->O00000oO()D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public O00000oo()Ljava/math/BigDecimal;
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/r;->O00000oo()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public O0000O0o()Ljava/math/BigInteger;
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/r;->O0000O0o()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public O0000OOo()F
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/r;->O0000OOo()F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public O0000Oo()I
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/r;->O0000Oo()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public O0000Oo0()J
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/r;->O0000Oo0()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public O0000OoO()B
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/r;->O0000OoO()B

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public O0000Ooo()C
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/r;->O0000Ooo()C

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public O0000o0()Z
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/r;->O0000o0()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public O0000o00()S
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/r;->O0000o00()S

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method synthetic O0000o0O()Lcom/O000000o/O000000o/r;
    .locals 1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O0000o00;->O000000o()Lcom/O000000o/O000000o/O0000o00;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/O000000o/O000000o/O0000o00;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/O000000o/O000000o/O0000o00;

    iget-object p1, p1, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/O000000o/O000000o/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000o00;->O000000o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
