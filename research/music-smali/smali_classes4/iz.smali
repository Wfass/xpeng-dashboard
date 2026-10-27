.class public final Liz;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lcom/O000000o/O000000o/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liz$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/O000000o/O000000o/O00000Oo/d;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/O000000o/O000000o/O00000Oo/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liz;->a:Lcom/O000000o/O000000o/O00000Oo/d;

    iput-boolean p2, p0, Liz;->b:Z

    return-void
.end method

.method private a(Lcom/O000000o/O000000o/e;Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/e;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/O000000o/O000000o/q<",
            "*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljk;->a(Ljava/lang/reflect/Type;)Ljk;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/O000000o/O000000o/e;->a(Ljk;)Lcom/O000000o/O000000o/q;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object p1, Ljf;->f:Lcom/O000000o/O000000o/q;

    :goto_1
    return-object p1
.end method

.method static synthetic a(Liz;)Z
    .locals 0

    iget-boolean p0, p0, Liz;->b:Z

    return p0
.end method


# virtual methods
.method public a(Lcom/O000000o/O000000o/e;Ljk;)Lcom/O000000o/O000000o/q;
    .locals 11
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

    invoke-virtual {p2}, Ljk;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Ljk;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0}, Lcom/O000000o/O000000o/O00000Oo/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/O000000o/O000000o/O00000Oo/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Liz;->a(Lcom/O000000o/O000000o/e;Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/q;

    move-result-object v7

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Ljk;->a(Ljava/lang/reflect/Type;)Ljk;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/O000000o/O000000o/e;->a(Ljk;)Lcom/O000000o/O000000o/q;

    move-result-object v9

    iget-object v3, p0, Liz;->a:Lcom/O000000o/O000000o/O00000Oo/d;

    invoke-virtual {v3, p2}, Lcom/O000000o/O000000o/O00000Oo/d;->a(Ljk;)Lcom/O000000o/O000000o/O00000Oo/g;

    move-result-object v10

    new-instance p2, Liz$a;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Liz$a;-><init>(Liz;Lcom/O000000o/O000000o/e;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/q;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/q;Lcom/O000000o/O000000o/O00000Oo/g;)V

    return-object p2
.end method
