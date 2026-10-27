.class public final Liv;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/O000000o/O000000o/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Liv$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/O000000o/O000000o/O00000Oo/d;


# direct methods
.method public constructor <init>(Lcom/O000000o/O000000o/O00000Oo/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liv;->a:Lcom/O000000o/O000000o/O00000Oo/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/O000000o/O000000o/e;Ljk;)Lcom/O000000o/O000000o/q;
    .locals 3
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

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1}, Lcom/O000000o/O000000o/O00000Oo/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Ljk;->a(Ljava/lang/reflect/Type;)Ljk;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/O000000o/O000000o/e;->a(Ljk;)Lcom/O000000o/O000000o/q;

    move-result-object v1

    iget-object v2, p0, Liv;->a:Lcom/O000000o/O000000o/O00000Oo/d;

    invoke-virtual {v2, p2}, Lcom/O000000o/O000000o/O00000Oo/d;->a(Ljk;)Lcom/O000000o/O000000o/O00000Oo/g;

    move-result-object p2

    new-instance v2, Liv$a;

    invoke-direct {v2, p1, v0, v1, p2}, Liv$a;-><init>(Lcom/O000000o/O000000o/e;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/q;Lcom/O000000o/O000000o/O00000Oo/g;)V

    return-object v2
.end method
