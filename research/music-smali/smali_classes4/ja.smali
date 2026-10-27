.class public final Lja;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/O000000o/O000000o/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja$a;,
        Lja$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/O000000o/O000000o/O00000Oo/d;

.field private final b:Lcom/O000000o/O000000o/d;

.field private final c:Lcom/O000000o/O000000o/O00000Oo/c;


# direct methods
.method public constructor <init>(Lcom/O000000o/O000000o/O00000Oo/d;Lcom/O000000o/O000000o/d;Lcom/O000000o/O000000o/O00000Oo/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lja;->a:Lcom/O000000o/O000000o/O00000Oo/d;

    iput-object p2, p0, Lja;->b:Lcom/O000000o/O000000o/d;

    iput-object p3, p0, Lja;->c:Lcom/O000000o/O000000o/O00000Oo/c;

    return-void
.end method

.method private a(Lcom/O000000o/O000000o/e;Ljava/lang/reflect/Field;Ljava/lang/String;Ljk;ZZ)Lja$b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/e;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Ljk<",
            "*>;ZZ)",
            "Lja$b;"
        }
    .end annotation

    invoke-virtual {p4}, Ljk;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/O000000o/O000000o/O00000Oo/j;->a(Ljava/lang/reflect/Type;)Z

    move-result v9

    new-instance v0, Lja$1;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move v4, p5

    move/from16 v5, p6

    move-object v6, p1

    move-object v7, p4

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Lja$1;-><init>(Lja;Ljava/lang/String;ZZLcom/O000000o/O000000o/e;Ljk;Ljava/lang/reflect/Field;Z)V

    return-object v0
.end method

.method private a(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    const-class v0, Lir;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lir;

    if-nez v0, :cond_0

    iget-object v0, p0, Lja;->b:Lcom/O000000o/O000000o/d;

    invoke-interface {v0, p1}, Lcom/O000000o/O000000o/d;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lir;->a()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Lcom/O000000o/O000000o/e;Ljk;Ljava/lang/Class;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/e;",
            "Ljk<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lja$b;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v8

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljk;->b()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object/from16 v11, p2

    move-object/from16 v10, p3

    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq v10, v0, :cond_4

    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    if-ge v15, v13, :cond_3

    aget-object v2, v12, v15

    const/4 v0, 0x1

    invoke-virtual {v7, v2, v0}, Lja;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    invoke-virtual {v7, v2, v14}, Lja;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v6

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v11}, Ljk;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v10, v1}, Lcom/O000000o/O000000o/O00000Oo/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-direct {v7, v2}, Lja;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljk;->a(Ljava/lang/reflect/Type;)Ljk;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lja;->a(Lcom/O000000o/O000000o/e;Ljava/lang/reflect/Field;Ljava/lang/String;Ljk;ZZ)Lja$b;

    move-result-object v0

    iget-object v1, v0, Lja$b;->g:Ljava/lang/String;

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lja$b;

    if-nez v0, :cond_2

    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lja$b;->g:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v11}, Ljk;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v10, v1}, Lcom/O000000o/O000000o/O00000Oo/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Ljk;->a(Ljava/lang/reflect/Type;)Ljk;

    move-result-object v11

    invoke-virtual {v11}, Ljk;->a()Ljava/lang/Class;

    move-result-object v10

    goto :goto_0

    :cond_4
    return-object v8
.end method


# virtual methods
.method public a(Lcom/O000000o/O000000o/e;Ljk;)Lcom/O000000o/O000000o/q;
    .locals 4
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

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lja;->a:Lcom/O000000o/O000000o/O00000Oo/d;

    invoke-virtual {v1, p2}, Lcom/O000000o/O000000o/O00000Oo/d;->a(Ljk;)Lcom/O000000o/O000000o/O00000Oo/g;

    move-result-object v1

    new-instance v3, Lja$a;

    invoke-direct {p0, p1, p2, v0}, Lja;->a(Lcom/O000000o/O000000o/e;Ljk;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v3, v1, p1, v2}, Lja$a;-><init>(Lcom/O000000o/O000000o/O00000Oo/g;Ljava/util/Map;Lja$1;)V

    return-object v3
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    iget-object v0, p0, Lja;->c:Lcom/O000000o/O000000o/O00000Oo/c;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/O000000o/O000000o/O00000Oo/c;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lja;->c:Lcom/O000000o/O000000o/O00000Oo/c;

    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/O00000Oo/c;->a(Ljava/lang/reflect/Field;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
