.class public final Lja$a;
.super Lcom/O000000o/O000000o/q;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/O000000o/O000000o/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/O000000o/O000000o/O00000Oo/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000Oo/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lja$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/O000000o/O000000o/O00000Oo/g;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000Oo/g<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lja$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/O000000o/O000000o/q;-><init>()V

    iput-object p1, p0, Lja$a;->a:Lcom/O000000o/O000000o/O00000Oo/g;

    iput-object p2, p0, Lja$a;->b:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/O000000o/O000000o/O00000Oo/g;Ljava/util/Map;Lja$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lja$a;-><init>(Lcom/O000000o/O000000o/O00000Oo/g;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Ljg;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljg;",
            ")TT;"
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
    iget-object v0, p0, Lja$a;->a:Lcom/O000000o/O000000o/O00000Oo/g;

    invoke-interface {v0}, Lcom/O000000o/O000000o/O00000Oo/g;->a()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Ljg;->c()V

    :goto_0
    invoke-virtual {p1}, Ljg;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljg;->g()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lja$a;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lja$b;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lja$b;->i:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1, v0}, Lja$b;->a(Ljg;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljg;->n()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljg;->d()V

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/O000000o/O000000o/n;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/n;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Ljh;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljh;",
            "TT;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljh;->f()Ljh;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljh;->d()Ljh;

    :try_start_0
    iget-object v0, p0, Lja$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lja$b;

    iget-boolean v2, v1, Lja$b;->h:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lja$b;->g:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljh;->a(Ljava/lang/String;)Ljh;

    invoke-virtual {v1, p1, p2}, Lja$b;->a(Ljh;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljh;->e()Ljh;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
