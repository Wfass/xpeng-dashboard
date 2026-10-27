.class final Lcom/O000000o/O000000o/O00000Oo/O000000o/O000000o$1;
.super Ljava/lang/Object;
.source "ArrayTypeAdapter.java"

# interfaces
.implements Lcom/O000000o/O000000o/O000o00;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/O000000o/O000000o/O00000Oo/O000000o/O000000o;
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
.method public O000000o(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;
    .locals 2
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

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo()Ljava/lang/reflect/Type;

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
    invoke-static {p2}, Lcom/O000000o/O000000o/O00000Oo/O00000Oo;->O0000O0o(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p2

    invoke-static {p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo(Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/O00000o0/O000000o;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;

    move-result-object v0

    new-instance v1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O000000o;

    invoke-static {p2}, Lcom/O000000o/O000000o/O00000Oo/O00000Oo;->O00000oO(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v1, p1, v0, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O000000o;-><init>(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O000o000;Ljava/lang/Class;)V

    return-object v1
.end method
