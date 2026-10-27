.class final Ljf$10;
.super Lcom/O000000o/O000000o/q;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/q<",
        "Lcom/O000000o/O000000o/r;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/O000000o/O000000o/q;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljg;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljf$10;->b(Ljg;)Lcom/O000000o/O000000o/r;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljh;Lcom/O000000o/O000000o/r;)V
    .locals 2

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/O000000o/O000000o/r;->O0000oO()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p2}, Lcom/O000000o/O000000o/r;->O0000oO0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/O000000o/O000000o/r;->O0000oo0()Lcom/O000000o/O000000o/m;

    move-result-object p2

    invoke-virtual {p2}, Lcom/O000000o/O000000o/m;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/O000000o/O000000o/m;->O00000o0()Ljava/lang/Number;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljh;->a(Ljava/lang/Number;)Ljh;

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p2}, Lcom/O000000o/O000000o/m;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/O000000o/O000000o/m;->O0000o0()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljh;->a(Z)Ljh;

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p2}, Lcom/O000000o/O000000o/m;->O00000o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljh;->b(Ljava/lang/String;)Ljh;

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/O000000o/O000000o/r;->O0000o0o()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljh;->b()Ljh;

    invoke-virtual {p2}, Lcom/O000000o/O000000o/r;->O0000oOo()Lcom/O000000o/O000000o/O0000o00;

    move-result-object p2

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O0000o00;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    invoke-virtual {p0, p1, v0}, Ljf$10;->a(Ljh;Lcom/O000000o/O000000o/r;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljh;->c()Ljh;

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Lcom/O000000o/O000000o/r;->O0000o()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljh;->d()Ljh;

    invoke-virtual {p2}, Lcom/O000000o/O000000o/r;->O0000oOO()Lcom/O000000o/O000000o/k;

    move-result-object p2

    invoke-virtual {p2}, Lcom/O000000o/O000000o/k;->b()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljh;->a(Ljava/lang/String;)Ljh;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    invoke-virtual {p0, p1, v0}, Ljf$10;->a(Ljh;Lcom/O000000o/O000000o/r;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljh;->e()Ljh;

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t write "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_2
    invoke-virtual {p1}, Ljh;->f()Ljh;

    :goto_3
    return-void
.end method

.method public bridge synthetic a(Ljh;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/O000000o/O000000o/r;

    invoke-virtual {p0, p1, p2}, Ljf$10;->a(Ljh;Lcom/O000000o/O000000o/r;)V

    return-void
.end method

.method public b(Ljg;)Lcom/O000000o/O000000o/r;
    .locals 3

    sget-object v0, Ljf$18;->a:[I

    invoke-virtual {p1}, Ljg;->f()Lji;

    move-result-object v1

    invoke-virtual {v1}, Lji;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    new-instance v0, Lcom/O000000o/O000000o/k;

    invoke-direct {v0}, Lcom/O000000o/O000000o/k;-><init>()V

    invoke-virtual {p1}, Ljg;->c()V

    :goto_0
    invoke-virtual {p1}, Ljg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljf$10;->b(Ljg;)Lcom/O000000o/O000000o/r;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/O000000o/O000000o/k;->a(Ljava/lang/String;Lcom/O000000o/O000000o/r;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljg;->d()V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/O000000o/O000000o/O0000o00;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O0000o00;-><init>()V

    invoke-virtual {p1}, Ljg;->a()V

    :goto_1
    invoke-virtual {p1}, Ljg;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Ljf$10;->b(Ljg;)Lcom/O000000o/O000000o/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/O000000o/O000000o/O0000o00;->O000000o(Lcom/O000000o/O000000o/r;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljg;->b()V

    return-object v0

    :pswitch_2
    invoke-virtual {p1}, Ljg;->j()V

    sget-object p1, Lcom/O000000o/O000000o/i;->a:Lcom/O000000o/O000000o/i;

    return-object p1

    :pswitch_3
    new-instance v0, Lcom/O000000o/O000000o/m;

    invoke-virtual {p1}, Ljg;->h()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/m;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    new-instance v0, Lcom/O000000o/O000000o/m;

    invoke-virtual {p1}, Ljg;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/m;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :pswitch_5
    invoke-virtual {p1}, Ljg;->h()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/O000000o/O000000o/m;

    new-instance v1, Lcom/O000000o/O000000o/O00000Oo/f;

    invoke-direct {v1, p1}, Lcom/O000000o/O000000o/O00000Oo/f;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/O000000o/O000000o/m;-><init>(Ljava/lang/Number;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
