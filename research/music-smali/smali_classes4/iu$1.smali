.class final Liu$1;
.super Ljava/lang/Object;
.source "ArrayTypeAdapter.java"

# interfaces
.implements Lcom/O000000o/O000000o/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/O000000o/O000000o/e;Ljk;)Lcom/O000000o/O000000o/q;
    .locals 2
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

    move-result-object p2

    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_1

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-static {p2}, Lcom/O000000o/O000000o/O00000Oo/b;->g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Ljk;->a(Ljava/lang/reflect/Type;)Ljk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/O000000o/O000000o/e;->a(Ljk;)Lcom/O000000o/O000000o/q;

    move-result-object v0

    new-instance v1, Liu;

    invoke-static {p2}, Lcom/O000000o/O000000o/O00000Oo/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Liu;-><init>(Lcom/O000000o/O000000o/e;Lcom/O000000o/O000000o/q;Ljava/lang/Class;)V

    return-object v1
.end method
