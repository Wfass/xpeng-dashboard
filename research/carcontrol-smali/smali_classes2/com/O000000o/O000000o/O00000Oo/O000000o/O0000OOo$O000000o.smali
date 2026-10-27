.class final Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;
.super Lcom/O000000o/O000000o/O000o000;
.source "MapTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "O000000o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/O000000o/O000000o/O000o000<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic O000000o:Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;

.field private final O00000Oo:Lcom/O000000o/O000000o/O000o000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O000o000<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final O00000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final O00000o0:Lcom/O000000o/O000000o/O000o000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O000o000<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;Lcom/O000000o/O000000o/O0000OOo;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/O000o000;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/O000o000;Lcom/O000000o/O000000o/O00000Oo/O0000Oo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O0000OOo;",
            "Ljava/lang/reflect/Type;",
            "Lcom/O000000o/O000000o/O000o000<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/O000000o/O000000o/O000o000<",
            "TV;>;",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;

    invoke-direct {p0}, Lcom/O000000o/O000000o/O000o000;-><init>()V

    new-instance p1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;

    invoke-direct {p1, p2, p4, p3}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;-><init>(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O000o000;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O00000Oo:Lcom/O000000o/O000000o/O000o000;

    new-instance p1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;

    invoke-direct {p1, p2, p6, p5}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000o;-><init>(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O000o000;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O00000o0:Lcom/O000000o/O000000o/O000o000;

    iput-object p7, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O00000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo;

    return-void
.end method

.method private O00000Oo(Lcom/O000000o/O000000o/O00oOooO;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00oOooO;->O0000oO0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00oOooO;->O0000oo0()Lcom/O000000o/O000000o/O000OO0o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O000OO0o;->O0000ooo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O000OO0o;->O00000o0()Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O000OO0o;->O00000Oo()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O000OO0o;->O0000o0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O000OO0o;->O00oOooO()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O000OO0o;->O00000o()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00oOooO;->O0000oO()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "null"

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000o/O000000o;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v0

    sget-object v1, Lcom/O000000o/O000000o/O00000o/O00000o0;->O0000Oo0:Lcom/O000000o/O000000o/O00000o/O00000o0;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000Oo()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O00000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo;

    invoke-interface {v1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo;->O000000o()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    sget-object v2, Lcom/O000000o/O000000o/O00000o/O00000o0;->O000000o:Lcom/O000000o/O000000o/O00000o/O00000o0;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o()V

    :goto_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oO()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o()V

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O00000Oo:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O00000o0:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v2, p1}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo()V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/O000000o/O000000o/O000OOo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000o0()V

    :goto_1
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oO()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/O000000o/O000000o/O00000Oo/O0000O0o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000O0o;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000O0o;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)V

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O00000Oo:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O00000o0:Lcom/O000000o/O000000o/O000o000;

    invoke-virtual {v2, p1}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/O000000o/O000000o/O000OOo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000o()V

    :goto_2
    return-object v1
.end method

.method public bridge synthetic O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/util/Map;)V

    return-void
.end method

.method public O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000o/O00000o;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;

    invoke-static {v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o()Lcom/O000000o/O000000o/O00000o/O00000o;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O00000o/O00000o;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O00000o0:Lcom/O000000o/O000000o/O000o000;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oO()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O00000Oo:Lcom/O000000o/O000000o/O000o000;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/O000000o/O000000o/O00oOooO;->O0000o0o()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Lcom/O000000o/O000000o/O00oOooO;->O0000o()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000Oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_6

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000Oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/O000000o/O000000o/O00oOooO;

    invoke-static {p2, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000o0;->O000000o(Lcom/O000000o/O000000o/O00oOooO;Lcom/O000000o/O000000o/O00000o/O00000o;)V

    iget-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O00000o0:Lcom/O000000o/O000000o/O000o000;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o0()Lcom/O000000o/O000000o/O00000o/O00000o;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o0()Lcom/O000000o/O000000o/O00000o/O00000o;

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o()Lcom/O000000o/O000000o/O00000o/O00000o;

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_8

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/O000000o/O000000o/O00oOooO;

    invoke-direct {p0, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O00000Oo(Lcom/O000000o/O000000o/O00oOooO;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O00000o/O00000o;

    iget-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O00000o0:Lcom/O000000o/O000000o/O000o000;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oO()Lcom/O000000o/O000000o/O00000o/O00000o;

    :goto_6
    return-void
.end method

.method public synthetic O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000OOo$O000000o;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
