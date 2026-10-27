.class public final Lcom/O000000o/O000000o/O0000OOo;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/O000000o/O000000o/O0000OOo$O000000o;
    }
.end annotation


# static fields
.field static final O000000o:Z = false

.field private static final O00000o:Ljava/lang/String; = ")]}\'\n"


# instance fields
.field final O00000Oo:Lcom/O000000o/O000000o/O0000o0;

.field final O00000o0:Lcom/O000000o/O000000o/O000OO;

.field private final O00000oO:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "*>;",
            "Lcom/O000000o/O000000o/O0000OOo$O000000o<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final O00000oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "*>;",
            "Lcom/O000000o/O000000o/O000o000<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final O0000O0o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/O000000o/O000000o/O000o00;",
            ">;"
        }
    .end annotation
.end field

.field private final O0000OOo:Lcom/O000000o/O000000o/O00000Oo/O00000o0;

.field private final O0000Oo:Z

.field private final O0000Oo0:Z

.field private final O0000OoO:Z

.field private final O0000Ooo:Z


# direct methods
.method public constructor <init>()V
    .locals 12

    sget-object v1, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    sget-object v2, Lcom/O000000o/O000000o/O00000o;->O000000o:Lcom/O000000o/O000000o/O00000o;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v10, Lcom/O000000o/O000000o/O000Oo0;->O000000o:Lcom/O000000o/O000000o/O000Oo0;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/O000000o/O000000o/O0000OOo;-><init>(Lcom/O000000o/O000000o/O00000Oo/O00000o;Lcom/O000000o/O000000o/O0000O0o;Ljava/util/Map;ZZZZZZLcom/O000000o/O000000o/O000Oo0;Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O00000o;Lcom/O000000o/O000000o/O0000O0o;Ljava/util/Map;ZZZZZZLcom/O000000o/O000000o/O000Oo0;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000Oo/O00000o;",
            "Lcom/O000000o/O000000o/O0000O0o;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/O000000o/O000000o/O0000Oo<",
            "*>;>;ZZZZZZ",
            "Lcom/O000000o/O000000o/O000Oo0;",
            "Ljava/util/List<",
            "Lcom/O000000o/O000000o/O000o00;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/O000000o/O000000o/O0000OOo;->O00000oO:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/O000000o/O000000o/O0000OOo;->O00000oo:Ljava/util/Map;

    new-instance v0, Lcom/O000000o/O000000o/O0000OOo$1;

    invoke-direct {v0, p0}, Lcom/O000000o/O000000o/O0000OOo$1;-><init>(Lcom/O000000o/O000000o/O0000OOo;)V

    iput-object v0, p0, Lcom/O000000o/O000000o/O0000OOo;->O00000Oo:Lcom/O000000o/O000000o/O0000o0;

    new-instance v0, Lcom/O000000o/O000000o/O0000OOo$2;

    invoke-direct {v0, p0}, Lcom/O000000o/O000000o/O0000OOo$2;-><init>(Lcom/O000000o/O000000o/O0000OOo;)V

    iput-object v0, p0, Lcom/O000000o/O000000o/O0000OOo;->O00000o0:Lcom/O000000o/O000000o/O000OO;

    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O00000o0;

    invoke-direct {v0, p3}, Lcom/O000000o/O000000o/O00000Oo/O00000o0;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000OOo:Lcom/O000000o/O000000o/O00000Oo/O00000o0;

    iput-boolean p4, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000Oo0:Z

    iput-boolean p6, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000OoO:Z

    iput-boolean p7, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000Oo:Z

    iput-boolean p8, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000Ooo:Z

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000OOoo:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O0000ooO:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O0000o00:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O0000O0o:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O0000Oo0:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O0000OoO:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O000Oo0;)Lcom/O000000o/O000000o/O000o000;

    move-result-object p7

    invoke-static {p4, p6, p7}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000000o(Ljava/lang/Class;Ljava/lang/Class;Lcom/O000000o/O000000o/O000o000;)Lcom/O000000o/O000000o/O000o00;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Z)Lcom/O000000o/O000000o/O000o000;

    move-result-object p7

    invoke-static {p4, p6, p7}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000000o(Ljava/lang/Class;Ljava/lang/Class;Lcom/O000000o/O000000o/O000o000;)Lcom/O000000o/O000000o/O000o00;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p6, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/O000000o/O000000o/O0000OOo;->O00000Oo(Z)Lcom/O000000o/O000000o/O000o000;

    move-result-object p7

    invoke-static {p4, p6, p7}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000000o(Ljava/lang/Class;Ljava/lang/Class;Lcom/O000000o/O000000o/O000o000;)Lcom/O000000o/O000000o/O000o00;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O0000oO0:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O0000oOO:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O00oOooO:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000O00o:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigDecimal;

    sget-object p6, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O0000oo0:Lcom/O000000o/O000000o/O000o000;

    invoke-static {p4, p6}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000000o(Ljava/lang/Class;Lcom/O000000o/O000000o/O000o000;)Lcom/O000000o/O000000o/O000o00;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p4, Ljava/math/BigInteger;

    sget-object p6, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O0000oo:Lcom/O000000o/O000000o/O000o000;

    invoke-static {p4, p6}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000000o(Ljava/lang/Class;Lcom/O000000o/O000000o/O000o000;)Lcom/O000000o/O000000o/O000o00;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000O0Oo:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000O0o0:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000OO00:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000OOo:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000O0oO:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O00000o:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000o0;->O000000o:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000OOOo:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o0;->O000000o:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o00;->O000000o:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000OO0o:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O000000o;->O000000o:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000Oo00:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O00000Oo:Lcom/O000000o/O000000o/O000o00;

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo;

    invoke-direct {p4, v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000Oo;-><init>(Lcom/O000000o/O000000o/O00000Oo/O00000o0;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;

    invoke-direct {p4, v0, p5}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;-><init>(Lcom/O000000o/O000000o/O00000Oo/O00000o0;Z)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p4, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo;

    invoke-direct {p4, v0, p2, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo;-><init>(Lcom/O000000o/O000000o/O00000Oo/O00000o0;Lcom/O000000o/O000000o/O0000O0o;Lcom/O000000o/O000000o/O00000Oo/O00000o;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000O0o:Ljava/util/List;

    return-void
.end method

.method private O000000o(Ljava/io/Writer;)Lcom/O000000o/O000000o/O00000o/O00000o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000OoO:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/O000000o/O000000o/O00000o/O00000o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O00000o/O00000o;-><init>(Ljava/io/Writer;)V

    iget-boolean p1, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000Ooo:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o0(Ljava/lang/String;)V

    :cond_1
    iget-boolean p1, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000Oo0:Z

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o(Z)V

    return-object v0
.end method

.method private O000000o(Lcom/O000000o/O000000o/O000Oo0;)Lcom/O000000o/O000000o/O000o000;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O000Oo0;",
            ")",
            "Lcom/O000000o/O000000o/O000o000<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/O000000o/O000000o/O000Oo0;->O000000o:Lcom/O000000o/O000000o/O000Oo0;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O0000o0:Lcom/O000000o/O000000o/O000o000;

    return-object p1

    :cond_0
    new-instance p1, Lcom/O000000o/O000000o/O0000OOo$5;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/O0000OOo$5;-><init>(Lcom/O000000o/O000000o/O0000OOo;)V

    return-object p1
.end method

.method private O000000o(Z)Lcom/O000000o/O000000o/O000o000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/O000000o/O000000o/O000o000<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O0000o0o:Lcom/O000000o/O000000o/O000o000;

    return-object p1

    :cond_0
    new-instance p1, Lcom/O000000o/O000000o/O0000OOo$3;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/O0000OOo$3;-><init>(Lcom/O000000o/O000000o/O0000OOo;)V

    return-object p1
.end method

.method private O000000o(D)V
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " is not a valid double value as per JSON specification. To override this"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic O000000o(Lcom/O000000o/O000000o/O0000OOo;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(D)V

    return-void
.end method

.method private static O000000o(Ljava/lang/Object;Lcom/O000000o/O000000o/O00000o/O000000o;)V
    .locals 0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object p0

    sget-object p1, Lcom/O000000o/O000000o/O00000o/O00000o0;->O0000Oo:Lcom/O000000o/O000000o/O00000o/O00000o0;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/O000000o/O000000o/O000O00o;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O000O00o;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/O000000o/O000000o/O00000o/O0000O0o; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/O000000o/O000000o/O000O00o;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/O000O00o;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lcom/O000000o/O000000o/O000OOo;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method private O00000Oo(Z)Lcom/O000000o/O000000o/O000o000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/O000000o/O000000o/O000o000<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object p1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O0000o0O:Lcom/O000000o/O000000o/O000o000;

    return-object p1

    :cond_0
    new-instance p1, Lcom/O000000o/O000000o/O0000OOo$4;

    invoke-direct {p1, p0}, Lcom/O000000o/O000000o/O0000OOo$4;-><init>(Lcom/O000000o/O000000o/O0000OOo;)V

    return-object p1
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "TT;>;)",
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000OOo;->O00000oo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/O000o000;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O0000OOo;->O00000oO:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/O000000o/O000000o/O0000OOo;->O00000oO:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/O000000o/O000000o/O0000OOo$O000000o;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    :try_start_0
    new-instance v2, Lcom/O000000o/O000000o/O0000OOo$O000000o;

    invoke-direct {v2}, Lcom/O000000o/O000000o/O0000OOo$O000000o;-><init>()V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000O0o:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/O000000o/O000000o/O000o00;

    invoke-interface {v4, p0, p1}, Lcom/O000000o/O000000o/O000o00;->O000000o(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v4}, Lcom/O000000o/O000000o/O0000OOo$O000000o;->O000000o(Lcom/O000000o/O000000o/O000o000;)V

    iget-object v2, p0, Lcom/O000000o/O000000o/O0000OOo;->O00000oo:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/O000000o/O000000o/O0000OOo;->O00000oO:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    return-object v4

    :cond_5
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/O000000o/O000000o/O0000OOo;->O00000oO:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_6
    throw v2
.end method

.method public O000000o(Lcom/O000000o/O000000o/O000o00;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/O000000o/O000000o/O000o00;",
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "TT;>;)",
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000O0o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/O000000o/O000000o/O000o00;

    if-nez v1, :cond_1

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2, p0, p2}, Lcom/O000000o/O000000o/O000o00;->O000000o(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public O000000o(Ljava/lang/Class;)Lcom/O000000o/O000000o/O000o000;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000o0(Ljava/lang/Class;)Lcom/O000000o/O000000o/O00000o0/O000000o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;

    move-result-object p1

    return-object p1
.end method

.method public O000000o(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00oOooO;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/O000000o/O000000o/O000O0OO;->O000000o:Lcom/O000000o/O000000o/O000O0OO;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object p1

    return-object p1
.end method

.method public O000000o(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/O00oOooO;
    .locals 1

    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/O00000o/O00000o;)V

    invoke-virtual {v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O000000o()Lcom/O000000o/O000000o/O00oOooO;

    move-result-object p1

    return-object p1
.end method

.method public O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/O000000o/O000000o/O00000o/O000000o;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000O00o;,
            Lcom/O000000o/O000000o/O000OOo;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0o()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(Z)V

    :try_start_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo(Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/O00000o0/O000000o;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    new-instance v1, Lcom/O000000o/O000000o/O000OOo;

    invoke-direct {v1, p2}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p2

    new-instance v1, Lcom/O000000o/O000000o/O000OOo;

    invoke-direct {v1, p2}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_2
    move-exception p2

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(Z)V

    return-object p2

    :cond_0
    :try_start_2
    new-instance v1, Lcom/O000000o/O000000o/O000OOo;

    invoke-direct {v1, p2}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o(Z)V

    throw p2
.end method

.method public O000000o(Lcom/O000000o/O000000o/O00oOooO;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/O000000o/O000000o/O00oOooO;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000OOo;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00oOooO;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/O000000o/O000000o/O00000Oo/O0000o00;->O000000o(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public O000000o(Lcom/O000000o/O000000o/O00oOooO;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/O000000o/O000000o/O00oOooO;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000OOo;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00000o;-><init>(Lcom/O000000o/O000000o/O00oOooO;)V

    invoke-virtual {p0, v0, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public O000000o(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000OOo;,
            Lcom/O000000o/O000000o/O000O00o;
        }
    .end annotation

    new-instance v0, Lcom/O000000o/O000000o/O00000o/O000000o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O00000o/O000000o;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Ljava/lang/Object;Lcom/O000000o/O000000o/O00000o/O000000o;)V

    invoke-static {p2}, Lcom/O000000o/O000000o/O00000Oo/O0000o00;->O000000o(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public O000000o(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000O00o;,
            Lcom/O000000o/O000000o/O000OOo;
        }
    .end annotation

    new-instance v0, Lcom/O000000o/O000000o/O00000o/O000000o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O00000o/O000000o;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Ljava/lang/Object;Lcom/O000000o/O000000o/O00000o/O000000o;)V

    return-object p1
.end method

.method public O000000o(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000OOo;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/O000000o/O000000o/O00000Oo/O0000o00;->O000000o(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public O000000o(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000OOo;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public O000000o(Lcom/O000000o/O000000o/O00oOooO;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00oOooO;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public O000000o(Lcom/O000000o/O000000o/O00oOooO;Lcom/O000000o/O000000o/O00000o/O00000o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000O00o;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O0000O0o()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000Oo(Z)V

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O0000OOo()Z

    move-result v1

    iget-boolean v2, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000Oo:Z

    invoke-virtual {p2, v2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o0(Z)V

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O0000Oo0()Z

    move-result v2

    iget-boolean v3, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000Oo0:Z

    invoke-virtual {p2, v3}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o(Z)V

    :try_start_0
    invoke-static {p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O0000o0;->O000000o(Lcom/O000000o/O000000o/O00oOooO;Lcom/O000000o/O000000o/O00000o/O00000o;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v0}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000Oo(Z)V

    invoke-virtual {p2, v1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o0(Z)V

    invoke-virtual {p2, v2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v3, Lcom/O000000o/O000000o/O000O00o;

    invoke-direct {v3, p1}, Lcom/O000000o/O000000o/O000O00o;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000Oo(Z)V

    invoke-virtual {p2, v1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o0(Z)V

    invoke-virtual {p2, v2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o(Z)V

    throw p1
.end method

.method public O000000o(Lcom/O000000o/O000000o/O00oOooO;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000O00o;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/O000000o/O000000o/O00000Oo/O0000o0;->O000000o(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Ljava/io/Writer;)Lcom/O000000o/O000000o/O00000o/O00000o;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00oOooO;Lcom/O000000o/O000000o/O00000o/O00000o;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public O000000o(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000O00o;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/O000000o/O000000o/O000O0OO;->O000000o:Lcom/O000000o/O000000o/O000O0OO;

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00oOooO;Ljava/lang/Appendable;)V

    :goto_0
    return-void
.end method

.method public O000000o(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/O00000o/O00000o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000O00o;
        }
    .end annotation

    invoke-static {p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo(Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/O00000o0/O000000o;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;

    move-result-object p2

    invoke-virtual {p3}, Lcom/O000000o/O000000o/O00000o/O00000o;->O0000O0o()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000Oo(Z)V

    invoke-virtual {p3}, Lcom/O000000o/O000000o/O00000o/O00000o;->O0000OOo()Z

    move-result v1

    iget-boolean v2, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000Oo:Z

    invoke-virtual {p3, v2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o0(Z)V

    invoke-virtual {p3}, Lcom/O000000o/O000000o/O00000o/O00000o;->O0000Oo0()Z

    move-result v2

    iget-boolean v3, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000Oo0:Z

    invoke-virtual {p3, v3}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o(Z)V

    :try_start_0
    invoke-virtual {p2, p3, p1}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, v0}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000Oo(Z)V

    invoke-virtual {p3, v1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o0(Z)V

    invoke-virtual {p3, v2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/O000000o/O000000o/O000O00o;

    invoke-direct {p2, p1}, Lcom/O000000o/O000000o/O000O00o;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p3, v0}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000Oo(Z)V

    invoke-virtual {p3, v1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o0(Z)V

    invoke-virtual {p3, v2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o(Z)V

    throw p1
.end method

.method public O000000o(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/O000000o/O000000o/O000O00o;
        }
    .end annotation

    :try_start_0
    invoke-static {p3}, Lcom/O000000o/O000000o/O00000Oo/O0000o0;->O000000o(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Ljava/io/Writer;)Lcom/O000000o/O000000o/O00000o/O00000o;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/O00000o/O00000o;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/O000000o/O000000o/O000O00o;

    invoke-direct {p2, p1}, Lcom/O000000o/O000000o/O000O00o;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public O00000Oo(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/O000000o/O000000o/O000O0OO;->O000000o:Lcom/O000000o/O000000o/O000O0OO;

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00oOooO;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/O000000o/O000000o/O0000OOo;->O00000Oo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public O00000Oo(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000Oo0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000O0o:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/O000000o/O000000o/O0000OOo;->O0000OOo:Lcom/O000000o/O000000o/O00000Oo/O00000o0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
