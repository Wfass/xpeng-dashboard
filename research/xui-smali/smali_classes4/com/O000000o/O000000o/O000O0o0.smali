.class public final Lcom/O000000o/O000000o/O000O0o0;
.super Lcom/O000000o/O000000o/O00oOooO;
.source "JsonObject.java"


# instance fields
.field private final O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0<",
            "Ljava/lang/String;",
            "Lcom/O000000o/O000000o/O00oOooO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00oOooO;-><init>()V

    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;-><init>()V

    iput-object v0, p0, Lcom/O000000o/O000000o/O000O0o0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    return-void
.end method

.method private O000000o(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00oOooO;
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/O000000o/O000000o/O000O0OO;->O000000o:Lcom/O000000o/O000000o/O000O0OO;

    return-object p1

    :cond_0
    new-instance v0, Lcom/O000000o/O000000o/O000OO0o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000OO0o;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    return-object p1
.end method


# virtual methods
.method O000000o()Lcom/O000000o/O000000o/O000O0o0;
    .locals 4

    new-instance v0, Lcom/O000000o/O000000o/O000O0o0;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O000O0o0;-><init>()V

    iget-object v1, p0, Lcom/O000000o/O000000o/O000O0o0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-virtual {v1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/O000000o/O000000o/O00oOooO;

    invoke-virtual {v2}, Lcom/O000000o/O000000o/O00oOooO;->O0000o0O()Lcom/O000000o/O000000o/O00oOooO;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/O000000o/O000000o/O000O0o0;->O000000o(Ljava/lang/String;Lcom/O000000o/O000000o/O00oOooO;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public O000000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O00oOooO;
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O000O0o0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/O000000o/O000000o/O00oOooO;

    return-object p1
.end method

.method public O000000o(Ljava/lang/String;Lcom/O000000o/O000000o/O00oOooO;)V
    .locals 1

    if-nez p2, :cond_0

    sget-object p2, Lcom/O000000o/O000000o/O000O0OO;->O000000o:Lcom/O000000o/O000000o/O000O0OO;

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O000O0o0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public O000000o(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/O000000o/O000000o/O000O0o0;->O000000o(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O000O0o0;->O000000o(Ljava/lang/String;Lcom/O000000o/O000000o/O00oOooO;)V

    return-void
.end method

.method public O000000o(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/O000000o/O000000o/O000O0o0;->O000000o(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O000O0o0;->O000000o(Ljava/lang/String;Lcom/O000000o/O000000o/O00oOooO;)V

    return-void
.end method

.method public O000000o(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/O000000o/O000000o/O000O0o0;->O000000o(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O000O0o0;->O000000o(Ljava/lang/String;Lcom/O000000o/O000000o/O00oOooO;)V

    return-void
.end method

.method public O000000o(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/O000000o/O000000o/O000O0o0;->O000000o(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/O000000o/O000000o/O000O0o0;->O000000o(Ljava/lang/String;Lcom/O000000o/O000000o/O00oOooO;)V

    return-void
.end method

.method public O00000Oo()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/O000000o/O000000o/O00oOooO;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O000O0o0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public O00000Oo(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O000O0o0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public O00000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O000OO0o;
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O000O0o0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/O000000o/O000000o/O000OO0o;

    return-object p1
.end method

.method public O00000o0(Ljava/lang/String;)Lcom/O000000o/O000000o/O00oOooO;
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O000O0o0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/O000000o/O000000o/O00oOooO;

    return-object p1
.end method

.method public O00000oO(Ljava/lang/String;)Lcom/O000000o/O000000o/O0000o00;
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O000O0o0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/O000000o/O000000o/O0000o00;

    return-object p1
.end method

.method public O00000oo(Ljava/lang/String;)Lcom/O000000o/O000000o/O000O0o0;
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O000O0o0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/O000000o/O000000o/O000O0o0;

    return-object p1
.end method

.method synthetic O0000o0O()Lcom/O000000o/O000000o/O00oOooO;
    .locals 1

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O000O0o0;->O000000o()Lcom/O000000o/O000000o/O000O0o0;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Lcom/O000000o/O000000o/O000O0o0;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/O000000o/O000000o/O000O0o0;

    iget-object p1, p1, Lcom/O000000o/O000000o/O000O0o0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    iget-object v0, p0, Lcom/O000000o/O000000o/O000O0o0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-virtual {p1, v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O000O0o0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->hashCode()I

    move-result v0

    return v0
.end method
