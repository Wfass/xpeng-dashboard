.class public final Lcom/O000000o/O000000o/O00000Oo/O00000o;
.super Ljava/lang/Object;
.source "Excluder.java"

# interfaces
.implements Lcom/O000000o/O000000o/O000o00;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

.field private static final O00000Oo:D = -1.0


# instance fields
.field private O00000o:I

.field private O00000o0:D

.field private O00000oO:Z

.field private O00000oo:Z

.field private O0000O0o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/O000000o/O000000o/O00000Oo;",
            ">;"
        }
    .end annotation
.end field

.field private O0000OOo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/O000000o/O000000o/O00000Oo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O00000o;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O00000Oo/O00000o;-><init>()V

    sput-object v0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000o0:D

    const/16 v0, 0x88

    iput v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000oO:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O0000O0o:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O0000OOo:Ljava/util/List;

    return-void
.end method

.method private O000000o(Lcom/O000000o/O000000o/O000000o/O00000o0;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/O000000o/O000000o/O000000o/O00000o0;->O000000o()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000o0:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private O000000o(Lcom/O000000o/O000000o/O000000o/O00000o0;Lcom/O000000o/O000000o/O000000o/O00000o;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o(Lcom/O000000o/O000000o/O000000o/O00000o0;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o(Lcom/O000000o/O000000o/O000000o/O00000o;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private O000000o(Lcom/O000000o/O000000o/O000000o/O00000o;)Z
    .locals 4

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/O000000o/O000000o/O000000o/O00000o;->O000000o()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000o0:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private O000000o(Ljava/lang/Class;)Z
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

.method private O00000Oo(Ljava/lang/Class;)Z
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

    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000o0(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private O00000o0(Ljava/lang/Class;)Z
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
.method protected O000000o()Lcom/O000000o/O000000o/O00000Oo/O00000o;
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/O00000Oo/O00000o;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public O000000o(D)Lcom/O000000o/O000000o/O00000Oo/O00000o;
    .locals 1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o()Lcom/O000000o/O000000o/O00000Oo/O00000o;

    move-result-object v0

    iput-wide p1, v0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000o0:D

    return-object v0
.end method

.method public O000000o(Lcom/O000000o/O000000o/O00000Oo;ZZ)Lcom/O000000o/O000000o/O00000Oo/O00000o;
    .locals 2

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o()Lcom/O000000o/O000000o/O00000Oo/O00000o;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O0000O0o:Ljava/util/List;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O0000O0o:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O0000OOo:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, v0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O0000OOo:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public varargs O000000o([I)Lcom/O000000o/O000000o/O00000Oo/O00000o;
    .locals 5

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o()Lcom/O000000o/O000000o/O00000Oo/O00000o;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000o:I

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    iget v4, v0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000o:I

    or-int/2addr v3, v4

    iput v3, v0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000o:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public O000000o(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/O000000o/O000000o/O0000OOo;",
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "TT;>;)",
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O000000o()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o(Ljava/lang/Class;Z)Z

    move-result v5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o(Ljava/lang/Class;Z)Z

    move-result v4

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;

    move-object v2, v0

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/O000000o/O000000o/O00000Oo/O00000o$1;-><init>(Lcom/O000000o/O000000o/O00000Oo/O00000o;ZZLcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;)V

    return-object v0
.end method

.method public O000000o(Ljava/lang/Class;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    iget-wide v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000o0:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-class v0, Lcom/O000000o/O000000o/O000000o/O00000o0;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/O000000o/O00000o0;

    const-class v2, Lcom/O000000o/O000000o/O000000o/O00000o;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/O000000o/O000000o/O000000o/O00000o;

    invoke-direct {p0, v0, v2}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o(Lcom/O000000o/O000000o/O000000o/O00000o0;Lcom/O000000o/O000000o/O000000o/O00000o;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000oO:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000Oo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O0000O0o:Ljava/util/List;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O0000OOo:Ljava/util/List;

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/O00000Oo;

    invoke-interface {v0, p1}, Lcom/O000000o/O000000o/O00000Oo;->O000000o(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public O000000o(Ljava/lang/reflect/Field;Z)Z
    .locals 6

    iget v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000o:I

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000o0:D

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_1

    const-class v0, Lcom/O000000o/O000000o/O000000o/O00000o0;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/O000000o/O00000o0;

    const-class v2, Lcom/O000000o/O000000o/O000000o/O00000o;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/O000000o/O000000o/O000000o/O00000o;

    invoke-direct {p0, v0, v2}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o(Lcom/O000000o/O000000o/O000000o/O00000o0;Lcom/O000000o/O000000o/O000000o/O00000o;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000oo:Z

    if-eqz v0, :cond_5

    const-class v0, Lcom/O000000o/O000000o/O000000o/O000000o;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/O000000o/O000000o;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    invoke-interface {v0}, Lcom/O000000o/O000000o/O000000o/O000000o;->O000000o()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/O000000o/O000000o/O000000o/O000000o;->O00000Oo()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    :goto_0
    return v1

    :cond_5
    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000oO:Z

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000Oo(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O0000O0o:Ljava/util/List;

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O0000OOo:Ljava/util/List;

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/O000000o/O000000o/O00000o0;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O00000o0;-><init>(Ljava/lang/reflect/Field;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/O000000o/O000000o/O00000Oo;

    invoke-interface {p2, v0}, Lcom/O000000o/O000000o/O00000Oo;->O000000o(Lcom/O000000o/O000000o/O00000o0;)Z

    move-result p2

    if-eqz p2, :cond_9

    return v1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public O00000Oo()Lcom/O000000o/O000000o/O00000Oo/O00000o;
    .locals 2

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o()Lcom/O000000o/O000000o/O00000Oo/O00000o;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000oO:Z

    return-object v0
.end method

.method public O00000o0()Lcom/O000000o/O000000o/O00000Oo/O00000o;
    .locals 2

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o()Lcom/O000000o/O000000o/O00000Oo/O00000o;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000oo:Z

    return-object v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o()Lcom/O000000o/O000000o/O00000Oo/O00000o;

    move-result-object v0

    return-object v0
.end method
