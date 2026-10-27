.class public final Lcom/O000000o/O000000o/e;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/O000000o/O000000o/e$a;
    }
.end annotation


# instance fields
.field final a:Lcom/O000000o/O000000o/g;

.field final b:Lcom/O000000o/O000000o/l;

.field private final c:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljk<",
            "*>;",
            "Lcom/O000000o/O000000o/e$a<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljk<",
            "*>;",
            "Lcom/O000000o/O000000o/q<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/O000000o/O000000o/p;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/O000000o/O000000o/O00000Oo/d;

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    sget-object v1, Lcom/O000000o/O000000o/O00000Oo/c;->a:Lcom/O000000o/O000000o/O00000Oo/c;

    sget-object v2, Lcom/O000000o/O000000o/b;->O000000o:Lcom/O000000o/O000000o/b;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v10, Lcom/O000000o/O000000o/o;->O000000o:Lcom/O000000o/O000000o/o;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/O000000o/O000000o/e;-><init>(Lcom/O000000o/O000000o/O00000Oo/c;Lcom/O000000o/O000000o/d;Ljava/util/Map;ZZZZZZLcom/O000000o/O000000o/o;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/O000000o/O000000o/O00000Oo/c;Lcom/O000000o/O000000o/d;Ljava/util/Map;ZZZZZZLcom/O000000o/O000000o/o;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000Oo/c;",
            "Lcom/O000000o/O000000o/d;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/O000000o/O000000o/f<",
            "*>;>;ZZZZZZ",
            "Lcom/O000000o/O000000o/o;",
            "Ljava/util/List<",
            "Lcom/O000000o/O000000o/p;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/O000000o/O000000o/e;->c:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/O000000o/O000000o/e;->d:Ljava/util/Map;

    new-instance v0, Lcom/O000000o/O000000o/e$1;

    invoke-direct {v0, p0}, Lcom/O000000o/O000000o/e$1;-><init>(Lcom/O000000o/O000000o/e;)V

    iput-object v0, p0, Lcom/O000000o/O000000o/e;->a:Lcom/O000000o/O000000o/g;

    new-instance v0, Lcom/O000000o/O000000o/e$2;

    invoke-direct {v0, p0}, Lcom/O000000o/O000000o/e$2;-><init>(Lcom/O000000o/O000000o/e;)V

    iput-object v0, p0, Lcom/O000000o/O000000o/e;->b:Lcom/O000000o/O000000o/l;

    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/d;

    invoke-direct {v0, p3}, Lcom/O000000o/O000000o/O00000Oo/d;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/O000000o/O000000o/e;->f:Lcom/O000000o/O000000o/O00000Oo/d;

    iput-boolean p4, p0, Lcom/O000000o/O000000o/e;->g:Z

    iput-boolean p6, p0, Lcom/O000000o/O000000o/e;->i:Z

    iput-boolean p7, p0, Lcom/O000000o/O000000o/e;->h:Z

    iput-boolean p8, p0, Lcom/O000000o/O000000o/e;->j:Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    sget-object p4, Ljf;->Q:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljb;->a:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p4, Ljf;->x:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->m:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->g:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->i:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->k:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/O000000o/O000000o/e;->a(Lcom/O000000o/O000000o/o;)Lcom/O000000o/O000000o/q;

    move-result-object p7

    invoke-static {p4, p6, p7}, Ljf;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/O000000o/O000000o/q;)Lcom/O000000o/O000000o/p;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/O000000o/O000000o/e;->a(Z)Lcom/O000000o/O000000o/q;

    move-result-object p7

    invoke-static {p4, p6, p7}, Ljf;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/O000000o/O000000o/q;)Lcom/O000000o/O000000o/p;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/O000000o/O000000o/e;->b(Z)Lcom/O000000o/O000000o/q;

    move-result-object p7

    invoke-static {p4, p6, p7}, Ljf;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/O000000o/O000000o/q;)Lcom/O000000o/O000000o/p;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->r:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->t:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->z:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->B:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigDecimal;

    sget-object p6, Ljf;->v:Lcom/O000000o/O000000o/q;

    invoke-static {p4, p6}, Ljf;->a(Ljava/lang/Class;Lcom/O000000o/O000000o/q;)Lcom/O000000o/O000000o/p;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigInteger;

    sget-object p6, Ljf;->w:Lcom/O000000o/O000000o/q;

    invoke-static {p4, p6}, Ljf;->a(Ljava/lang/Class;Lcom/O000000o/O000000o/q;)Lcom/O000000o/O000000o/p;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->D:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->F:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->J:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->O:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->H:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->d:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lix;->a:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->M:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljd;->a:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lje;->a:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->K:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Liu;->a:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->R:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljf;->b:Lcom/O000000o/O000000o/p;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Liv;

    iget-object p6, p0, Lcom/O000000o/O000000o/e;->f:Lcom/O000000o/O000000o/O00000Oo/d;

    invoke-direct {p4, p6}, Liv;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Liz;

    iget-object p6, p0, Lcom/O000000o/O000000o/e;->f:Lcom/O000000o/O000000o/O00000Oo/d;

    invoke-direct {p4, p6, p5}, Liz;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;Z)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lja;

    iget-object p5, p0, Lcom/O000000o/O000000o/e;->f:Lcom/O000000o/O000000o/O00000Oo/d;

    invoke-direct {p4, p5, p2, p1}, Lja;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;Lcom/O000000o/O000000o/d;Lcom/O000000o/O000000o/O00000Oo/c;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/O000000o/O000000o/e;->e:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/O000000o/O000000o/o;)Lcom/O000000o/O000000o/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/o;",
            ")",
            "Lcom/O000000o/O000000o/q<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/O000000o/O000000o/o;->O000000o:Lcom/O000000o/O000000o/o;

    if-ne p1, v0, :cond_0

    sget-object p1, Ljf;->n:Lcom/O000000o/O000000o/q;

    return-object p1

    :cond_0
    new-instance p1, Lcom/O000000o/O000000o/e$5;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/e$5;-><init>(Lcom/O000000o/O000000o/e;)V

    return-object p1
.end method

.method private a(Z)Lcom/O000000o/O000000o/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/O000000o/O000000o/q<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Ljf;->p:Lcom/O000000o/O000000o/q;

    return-object p1

    :cond_0
    new-instance p1, Lcom/O000000o/O000000o/e$3;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/e$3;-><init>(Lcom/O000000o/O000000o/e;)V

    return-object p1
.end method

.method private a(Ljava/io/Writer;)Ljh;
    .locals 1

    iget-boolean v0, p0, Lcom/O000000o/O000000o/e;->i:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljh;

    invoke-direct {v0, p1}, Ljh;-><init>(Ljava/io/Writer;)V

    iget-boolean p1, p0, Lcom/O000000o/O000000o/e;->j:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljh;->c(Ljava/lang/String;)V

    :cond_1
    iget-boolean p1, p0, Lcom/O000000o/O000000o/e;->g:Z

    invoke-virtual {v0, p1}, Ljh;->d(Z)V

    return-object v0
.end method

.method private a(D)V
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/O000000o/O000000o/e;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/O000000o/O000000o/e;->a(D)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljg;)V
    .locals 0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljg;->f()Lji;

    move-result-object p0

    sget-object p1, Lji;->O0000Oo:Lji;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/O000000o/O000000o/h;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/h;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljj; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/O000000o/O000000o/h;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/h;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/O000000o/O000000o/n;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/n;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Z)Lcom/O000000o/O000000o/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/O000000o/O000000o/q<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Ljf;->o:Lcom/O000000o/O000000o/q;

    return-object p1

    :cond_0
    new-instance p1, Lcom/O000000o/O000000o/e$4;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/e$4;-><init>(Lcom/O000000o/O000000o/e;)V

    return-object p1
.end method


# virtual methods
.method public a(Lcom/O000000o/O000000o/p;Ljk;)Lcom/O000000o/O000000o/q;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/O000000o/O000000o/p;",
            "Ljk<",
            "TT;>;)",
            "Lcom/O000000o/O000000o/q<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/O000000o/O000000o/p;

    if-nez v1, :cond_1

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2, p0, p2}, Lcom/O000000o/O000000o/p;->a(Lcom/O000000o/O000000o/e;Ljk;)Lcom/O000000o/O000000o/q;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Class;)Lcom/O000000o/O000000o/q;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/O000000o/O000000o/q<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Ljk;->b(Ljava/lang/Class;)Ljk;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/e;->a(Ljk;)Lcom/O000000o/O000000o/q;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljk;)Lcom/O000000o/O000000o/q;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljk<",
            "TT;>;)",
            "Lcom/O000000o/O000000o/q<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/e;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/q;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/O000000o/O000000o/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/O000000o/O000000o/e$a;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    :try_start_0
    new-instance v2, Lcom/O000000o/O000000o/e$a;

    invoke-direct {v2}, Lcom/O000000o/O000000o/e$a;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/O000000o/O000000o/e;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/O000000o/O000000o/p;

    invoke-interface {v4, p0, p1}, Lcom/O000000o/O000000o/p;->a(Lcom/O000000o/O000000o/e;Ljk;)Lcom/O000000o/O000000o/q;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v4}, Lcom/O000000o/O000000o/e$a;->a(Lcom/O000000o/O000000o/q;)V

    iget-object v2, p0, Lcom/O000000o/O000000o/e;->d:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/O000000o/O000000o/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    return-object v4

    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/O000000o/O000000o/e;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_6
    throw v2
.end method

.method public a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Ljg;

    invoke-direct {v0, p1}, Ljg;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/O000000o/O000000o/e;->a(Ljg;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/O000000o/O000000o/e;->a(Ljava/lang/Object;Ljg;)V

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/O000000o/O000000o/O00000Oo/j;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/O000000o/O000000o/e;->a(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljg;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljg;->p()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljg;->a(Z)V

    :try_start_0
    invoke-virtual {p1}, Ljg;->f()Lji;

    const/4 v1, 0x0

    invoke-static {p2}, Ljk;->a(Ljava/lang/reflect/Type;)Ljk;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/O000000o/O000000o/e;->a(Ljk;)Lcom/O000000o/O000000o/q;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/O000000o/O000000o/q;->a(Ljg;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Ljg;->a(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    new-instance v1, Lcom/O000000o/O000000o/n;

    invoke-direct {v1, p2}, Lcom/O000000o/O000000o/n;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p2

    new-instance v1, Lcom/O000000o/O000000o/n;

    invoke-direct {v1, p2}, Lcom/O000000o/O000000o/n;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_2
    move-exception p2

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, v0}, Ljg;->a(Z)V

    return-object p2

    :cond_0
    :try_start_2
    new-instance v1, Lcom/O000000o/O000000o/n;

    invoke-direct {v1, p2}, Lcom/O000000o/O000000o/n;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {p1, v0}, Ljg;->a(Z)V

    throw p2
.end method

.method public a(Lcom/O000000o/O000000o/r;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/O000000o/O000000o/e;->a(Lcom/O000000o/O000000o/r;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/O000000o/O000000o/i;->a:Lcom/O000000o/O000000o/i;

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/e;->a(Lcom/O000000o/O000000o/r;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/O000000o/O000000o/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/O000000o/O000000o/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/O000000o/O000000o/r;Ljava/lang/Appendable;)V
    .locals 0

    :try_start_0
    invoke-static {p2}, Lcom/O000000o/O000000o/O00000Oo/i;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/O000000o/O000000o/e;->a(Ljava/io/Writer;)Ljh;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/e;->a(Lcom/O000000o/O000000o/r;Ljh;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Lcom/O000000o/O000000o/r;Ljh;)V
    .locals 4

    invoke-virtual {p2}, Ljh;->g()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljh;->b(Z)V

    invoke-virtual {p2}, Ljh;->h()Z

    move-result v1

    iget-boolean v2, p0, Lcom/O000000o/O000000o/e;->h:Z

    invoke-virtual {p2, v2}, Ljh;->c(Z)V

    invoke-virtual {p2}, Ljh;->i()Z

    move-result v2

    iget-boolean v3, p0, Lcom/O000000o/O000000o/e;->g:Z

    invoke-virtual {p2, v3}, Ljh;->d(Z)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/O000000o/O000000o/O00000Oo/i;->a(Lcom/O000000o/O000000o/r;Ljh;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v0}, Ljh;->b(Z)V

    invoke-virtual {p2, v1}, Ljh;->c(Z)V

    invoke-virtual {p2, v2}, Ljh;->d(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v3, Lcom/O000000o/O000000o/h;

    invoke-direct {v3, p1}, Lcom/O000000o/O000000o/h;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p2, v0}, Ljh;->b(Z)V

    invoke-virtual {p2, v1}, Ljh;->c(Z)V

    invoke-virtual {p2, v2}, Ljh;->d(Z)V

    throw p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0

    :try_start_0
    invoke-static {p3}, Lcom/O000000o/O000000o/O00000Oo/i;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/O000000o/O000000o/e;->a(Ljava/io/Writer;)Ljh;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/O000000o/O000000o/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljh;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/O000000o/O000000o/h;

    invoke-direct {p2, p1}, Lcom/O000000o/O000000o/h;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljh;)V
    .locals 4

    invoke-static {p2}, Ljk;->a(Ljava/lang/reflect/Type;)Ljk;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/O000000o/O000000o/e;->a(Ljk;)Lcom/O000000o/O000000o/q;

    move-result-object p2

    invoke-virtual {p3}, Ljh;->g()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljh;->b(Z)V

    invoke-virtual {p3}, Ljh;->h()Z

    move-result v1

    iget-boolean v2, p0, Lcom/O000000o/O000000o/e;->h:Z

    invoke-virtual {p3, v2}, Ljh;->c(Z)V

    invoke-virtual {p3}, Ljh;->i()Z

    move-result v2

    iget-boolean v3, p0, Lcom/O000000o/O000000o/e;->g:Z

    invoke-virtual {p3, v3}, Ljh;->d(Z)V

    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/O000000o/O000000o/q;->a(Ljh;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v0}, Ljh;->b(Z)V

    invoke-virtual {p3, v1}, Ljh;->c(Z)V

    invoke-virtual {p3, v2}, Ljh;->d(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/O000000o/O000000o/h;

    invoke-direct {p2, p1}, Lcom/O000000o/O000000o/h;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p3, v0}, Ljh;->b(Z)V

    invoke-virtual {p3, v1}, Ljh;->c(Z)V

    invoke-virtual {p3, v2}, Ljh;->d(Z)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/O000000o/O000000o/e;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/O000000o/O000000o/e;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/O000000o/O000000o/e;->f:Lcom/O000000o/O000000o/O00000Oo/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
