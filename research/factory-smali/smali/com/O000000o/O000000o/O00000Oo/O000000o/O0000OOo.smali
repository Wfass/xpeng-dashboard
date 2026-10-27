.class public final Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;
.super Ljava/lang/Object;
.source "MapTypeAdapterFactory.java"

# interfaces
.implements Lcom/O000000o/O000000o/O000o00;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;
    }
.end annotation


# instance fields
.field private final O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o0;

.field private final O00000Oo:Z


# direct methods
.method public constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O00000o0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o0;

    iput-boolean p2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;->O00000Oo:Z

    return-void
.end method

.method private O000000o(Lcom/O000000o/O000000o/O0000OOo;Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/O000o000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O0000OOo;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/O000000o/O000000o/O000o000<",
            "*>;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo(Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/O00000o0/O000000o;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O00000oo:Lcom/O000000o/O000000o/O000o000;

    return-object p1
.end method

.method static synthetic O000000o(Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;->O00000Oo:Z

    return p0
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;
    .locals 11
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

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {v0}, Lcom/O000000o/O000000o/O00000Oo/O00000Oo;->O00000oO(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/O000000o/O000000o/O00000Oo/O00000Oo;->O00000Oo(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-direct {p0, p1, v2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O0000OOo;Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/O000o000;

    move-result-object v7

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo(Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/O00000o0/O000000o;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;

    move-result-object v9

    iget-object v3, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o0;

    invoke-virtual {v3, p2}, Lcom/O000000o/O000000o/O00000Oo/O00000o0;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O00000Oo/O0000Oo;

    move-result-object v10

    new-instance p2, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;

    aget-object v6, v0, v1

    aget-object v8, v0, v2

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;-><init>(Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;Lcom/O000000o/O000000o/O0000OOo;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/O000o000;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/O000o000;Lcom/O000000o/O000000o/O00000Oo/O0000Oo;)V

    return-object p2
.end method
