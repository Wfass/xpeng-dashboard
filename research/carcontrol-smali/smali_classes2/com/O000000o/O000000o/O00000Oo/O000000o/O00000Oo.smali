.class public final Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo;
.super Ljava/lang/Object;
.source "CollectionTypeAdapterFactory.java"

# interfaces
.implements Lcom/O000000o/O000000o/O000o00;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo$O000000o;
    }
.end annotation


# instance fields
.field private final O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o0;


# direct methods
.method public constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O00000o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o0;

    return-void
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;
    .locals 3
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

    move-result-object v0

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O000000o()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0, v1}, Lcom/O000000o/O000000o/O00000Oo/O00000Oo;->O000000o(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo(Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/O00000o0/O000000o;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;

    move-result-object v1

    iget-object v2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o0;

    invoke-virtual {v2, p2}, Lcom/O000000o/O000000o/O00000Oo/O00000o0;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O00000Oo/O0000Oo;

    move-result-object p2

    new-instance v2, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo$O000000o;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo$O000000o;-><init>(Lcom/O000000o/O000000o/O0000OOo;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/O000o000;Lcom/O000000o/O000000o/O00000Oo/O0000Oo;)V

    return-object v2
.end method
