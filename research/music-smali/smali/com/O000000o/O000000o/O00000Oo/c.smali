.class public final Lcom/O000000o/O000000o/O00000Oo/c;
.super Ljava/lang/Object;
.source "Excluder.java"

# interfaces
.implements Lcom/O000000o/O000000o/p;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final a:Lcom/O000000o/O000000o/O00000Oo/c;


# instance fields
.field private b:D

.field private c:I

.field private d:Z

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/O000000o/O000000o/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/O000000o/O000000o/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/c;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O00000Oo/c;-><init>()V

    sput-object v0, Lcom/O000000o/O000000o/O00000Oo/c;->a:Lcom/O000000o/O000000o/O00000Oo/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/O000000o/O000000o/O00000Oo/c;->b:D

    const/16 v0, 0x88

    iput v0, p0, Lcom/O000000o/O000000o/O00000Oo/c;->c:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/O000000o/O000000o/O00000Oo/c;->d:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/c;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/c;->g:Ljava/util/List;

    return-void
.end method

.method private a(Lis;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lis;->a()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/O000000o/O000000o/O00000Oo/c;->b:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(Lit;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lit;->a()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/O000000o/O000000o/O00000Oo/c;->b:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private a(Lit;Lis;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/c;->a(Lit;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/O000000o/O000000o/O00000Oo/c;->a(Lis;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/c;->c(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected a()Lcom/O000000o/O000000o/O00000Oo/c;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/O00000Oo/c;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public a(Lcom/O000000o/O000000o/e;Ljk;)Lcom/O000000o/O000000o/q;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/O000000o/O000000o/e;",
            "Ljk<",
            "TT;>;)",
            "Lcom/O000000o/O000000o/q<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Ljk;->a()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/O000000o/O000000o/O00000Oo/c;->a(Ljava/lang/Class;Z)Z

    move-result v5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/O000000o/O000000o/O00000Oo/c;->a(Ljava/lang/Class;Z)Z

    move-result v4

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/c$1;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/O000000o/O000000o/O00000Oo/c$1;-><init>(Lcom/O000000o/O000000o/O00000Oo/c;ZZLcom/O000000o/O000000o/e;Ljk;)V

    return-object v0
.end method

.method public a(Ljava/lang/Class;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    iget-wide v0, p0, Lcom/O000000o/O000000o/O00000Oo/c;->b:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-class v0, Lit;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lit;

    const-class v2, Lis;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lis;

    invoke-direct {p0, v0, v2}, Lcom/O000000o/O000000o/O00000Oo/c;->a(Lit;Lis;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00000Oo/c;->d:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/c;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/c;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/c;->f:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/c;->g:Ljava/util/List;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/a;

    invoke-interface {v0, p1}, Lcom/O000000o/O000000o/a;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 6

    iget v0, p0, Lcom/O000000o/O000000o/O00000Oo/c;->c:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/O000000o/O000000o/O00000Oo/c;->b:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    const-class v0, Lit;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lit;

    const-class v2, Lis;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lis;

    invoke-direct {p0, v0, v2}, Lcom/O000000o/O000000o/O00000Oo/c;->a(Lit;Lis;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00000Oo/c;->e:Z

    if-eqz v0, :cond_5

    const-class v0, Liq;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Liq;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    invoke-interface {v0}, Liq;->a()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Liq;->b()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :goto_0
    return v1

    :cond_5
    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00000Oo/c;->d:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/c;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/c;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/c;->f:Ljava/util/List;

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/c;->g:Ljava/util/List;

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/O000000o/O000000o/c;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/c;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/O000000o/O000000o/a;

    invoke-interface {p2, v0}, Lcom/O000000o/O000000o/a;->a(Lcom/O000000o/O000000o/c;)Z

    move-result p2

    if-eqz p2, :cond_9

    return v1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000Oo/c;->a()Lcom/O000000o/O000000o/O00000Oo/c;

    move-result-object v0

    return-object v0
.end method
