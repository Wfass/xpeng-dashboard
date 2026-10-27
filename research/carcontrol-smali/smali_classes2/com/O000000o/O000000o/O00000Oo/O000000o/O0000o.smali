.class final Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;
.super Lcom/O000000o/O000000o/O000o000;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/O000000o/O000000o/O000o000<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final O000000o:Lcom/O000000o/O000000o/O0000OOo;

.field private final O00000Oo:Lcom/O000000o/O000000o/O000o000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final O00000o0:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O000o000;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O0000OOo;",
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/O000000o/O000000o/O000o000;-><init>()V

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;->O000000o:Lcom/O000000o/O000000o/O0000OOo;

    iput-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;->O00000Oo:Lcom/O000000o/O000000o/O000o000;

    iput-object p3, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;->O00000o0:Ljava/lang/reflect/Type;

    return-void
.end method

.method private O000000o(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000o/O00000o;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;->O00000Oo:Lcom/O000000o/O000000o/O000o000;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;->O00000o0:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;->O000000o(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;->O00000o0:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;->O000000o:Lcom/O000000o/O000000o/O0000OOo;

    invoke-static {v1}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo(Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/O00000o0/O000000o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;

    move-result-object v0

    instance-of v1, v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O000000o;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;->O00000Oo:Lcom/O000000o/O000000o/O000o000;

    instance-of v2, v1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O000000o;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V

    return-void
.end method

.method public O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000o/O000000o;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;->O00000Oo:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
