.class public final Lcom/O000000o/O000000o/O00000Oo/d;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/O000000o/O000000o/f<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/O000000o/O000000o/f<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/d;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/O000000o/O000000o/O00000Oo/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/O000000o/O000000o/O00000Oo/g<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_0
    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/d$9;

    invoke-direct {v0, p0, p1}, Lcom/O000000o/O000000o/O00000Oo/d$9;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/O000000o/O000000o/O00000Oo/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/O000000o/O000000o/O00000Oo/g<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/O000000o/O000000o/O00000Oo/d$10;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/O00000Oo/d$10;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;)V

    return-object p1

    :cond_0
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p2, Lcom/O000000o/O000000o/O00000Oo/d$11;

    invoke-direct {p2, p0, p1}, Lcom/O000000o/O000000o/O00000Oo/d$11;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;Ljava/lang/reflect/Type;)V

    return-object p2

    :cond_1
    const-class p1, Ljava/util/Set;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/O000000o/O000000o/O00000Oo/d$12;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/O00000Oo/d$12;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;)V

    return-object p1

    :cond_2
    const-class p1, Ljava/util/Queue;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/O000000o/O000000o/O00000Oo/d$2;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/O00000Oo/d$2;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;)V

    return-object p1

    :cond_3
    new-instance p1, Lcom/O000000o/O000000o/O00000Oo/d$3;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/O00000Oo/d$3;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;)V

    return-object p1

    :cond_4
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p1, Lcom/O000000o/O000000o/O00000Oo/d$4;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/O00000Oo/d$4;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;)V

    return-object p1

    :cond_5
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz p2, :cond_6

    const-class p2, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p1}, Ljk;->a(Ljava/lang/reflect/Type;)Ljk;

    move-result-object p1

    invoke-virtual {p1}, Ljk;->a()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Lcom/O000000o/O000000o/O00000Oo/d$5;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/O00000Oo/d$5;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;)V

    return-object p1

    :cond_6
    new-instance p1, Lcom/O000000o/O000000o/O00000Oo/d$6;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/O00000Oo/d$6;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;)V

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/O000000o/O000000o/O00000Oo/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lcom/O000000o/O000000o/O00000Oo/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/d$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/O000000o/O000000o/O00000Oo/d$7;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljk;)Lcom/O000000o/O000000o/O00000Oo/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljk<",
            "TT;>;)",
            "Lcom/O000000o/O000000o/O00000Oo/g<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljk;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1}, Ljk;->a()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/O000000o/O000000o/f;

    if-eqz v1, :cond_0

    new-instance p1, Lcom/O000000o/O000000o/O00000Oo/d$1;

    invoke-direct {p1, p0, v1, v0}, Lcom/O000000o/O000000o/O00000Oo/d$1;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;Lcom/O000000o/O000000o/f;Ljava/lang/reflect/Type;)V

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/d;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/O000000o/O000000o/f;

    if-eqz v1, :cond_1

    new-instance p1, Lcom/O000000o/O000000o/O00000Oo/d$8;

    invoke-direct {p1, p0, v1, v0}, Lcom/O000000o/O000000o/O00000Oo/d$8;-><init>(Lcom/O000000o/O000000o/O00000Oo/d;Lcom/O000000o/O000000o/f;Ljava/lang/reflect/Type;)V

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/d;->a(Ljava/lang/Class;)Lcom/O000000o/O000000o/O00000Oo/g;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/O000000o/O000000o/O00000Oo/d;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/O000000o/O000000o/O00000Oo/g;

    move-result-object v1

    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/O000000o/O000000o/O00000Oo/d;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/O000000o/O000000o/O00000Oo/g;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/d;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
