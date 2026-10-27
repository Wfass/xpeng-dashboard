.class public final Lcom/O000000o/O000000o/O0000Oo0;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

.field private O00000Oo:Lcom/O000000o/O000000o/O000Oo0;

.field private final O00000o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/O000000o/O000000o/O0000Oo<",
            "*>;>;"
        }
    .end annotation
.end field

.field private O00000o0:Lcom/O000000o/O000000o/O0000O0o;

.field private final O00000oO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/O000000o/O000000o/O000o00;",
            ">;"
        }
    .end annotation
.end field

.field private final O00000oo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/O000000o/O000000o/O000o00;",
            ">;"
        }
    .end annotation
.end field

.field private O0000O0o:Z

.field private O0000OOo:Ljava/lang/String;

.field private O0000Oo:I

.field private O0000Oo0:I

.field private O0000OoO:Z

.field private O0000Ooo:Z

.field private O0000o0:Z

.field private O0000o00:Z

.field private O0000o0O:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    iput-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    sget-object v0, Lcom/O000000o/O000000o/O000Oo0;->O000000o:Lcom/O000000o/O000000o/O000Oo0;

    iput-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000Oo:Lcom/O000000o/O000000o/O000Oo0;

    sget-object v0, Lcom/O000000o/O000000o/O00000o;->O000000o:Lcom/O000000o/O000000o/O00000o;

    iput-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000o0:Lcom/O000000o/O000000o/O0000O0o;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000o:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000oO:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000oo:Ljava/util/List;

    const/4 v0, 0x2

    iput v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000Oo0:I

    iput v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000Oo:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000o00:Z

    return-void
.end method

.method private O000000o(Ljava/lang/String;IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/O000000o/O000000o/O000o00;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lcom/O000000o/O000000o/O000000o;

    invoke-direct {p2, p1}, Lcom/O000000o/O000000o/O000000o;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    if-eq p3, p1, :cond_1

    new-instance p1, Lcom/O000000o/O000000o/O000000o;

    invoke-direct {p1, p2, p3}, Lcom/O000000o/O000000o/O000000o;-><init>(II)V

    :goto_0
    const-class p2, Ljava/util/Date;

    invoke-static {p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000o0(Ljava/lang/Class;)Lcom/O000000o/O000000o/O00000o0/O000000o;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/O000000o/O000000o/O00O0Oo;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;Ljava/lang/Object;)Lcom/O000000o/O000000o/O000o00;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p2, Ljava/sql/Timestamp;

    invoke-static {p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000o0(Ljava/lang/Class;)Lcom/O000000o/O000000o/O00000o0/O000000o;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/O000000o/O000000o/O00O0Oo;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;Ljava/lang/Object;)Lcom/O000000o/O000000o/O000o00;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p2, Ljava/sql/Date;

    invoke-static {p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000o0(Ljava/lang/Class;)Lcom/O000000o/O000000o/O00000o0/O000000o;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/O000000o/O000000o/O00O0Oo;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;Ljava/lang/Object;)Lcom/O000000o/O000000o/O000o00;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public O000000o()Lcom/O000000o/O000000o/O0000Oo0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000o0O:Z

    return-object p0
.end method

.method public O000000o(D)Lcom/O000000o/O000000o/O0000Oo0;
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o(D)Lcom/O000000o/O000000o/O00000Oo/O00000o;

    move-result-object p1

    iput-object p1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    return-object p0
.end method

.method public O000000o(I)Lcom/O000000o/O000000o/O0000Oo0;
    .locals 0

    iput p1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000Oo0:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000OOo:Ljava/lang/String;

    return-object p0
.end method

.method public O000000o(II)Lcom/O000000o/O000000o/O0000Oo0;
    .locals 0

    iput p1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000Oo0:I

    iput p2, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000Oo:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000OOo:Ljava/lang/String;

    return-object p0
.end method

.method public O000000o(Lcom/O000000o/O000000o/O00000Oo;)Lcom/O000000o/O000000o/O0000Oo0;
    .locals 3

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o(Lcom/O000000o/O000000o/O00000Oo;ZZ)Lcom/O000000o/O000000o/O00000Oo/O00000o;

    move-result-object p1

    iput-object p1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    return-object p0
.end method

.method public O000000o(Lcom/O000000o/O000000o/O00000o;)Lcom/O000000o/O000000o/O0000Oo0;
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000o0:Lcom/O000000o/O000000o/O0000O0o;

    return-object p0
.end method

.method public O000000o(Lcom/O000000o/O000000o/O0000O0o;)Lcom/O000000o/O000000o/O0000Oo0;
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000o0:Lcom/O000000o/O000000o/O0000O0o;

    return-object p0
.end method

.method public O000000o(Lcom/O000000o/O000000o/O000Oo0;)Lcom/O000000o/O000000o/O0000Oo0;
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000Oo:Lcom/O000000o/O000000o/O000Oo0;

    return-object p0
.end method

.method public O000000o(Lcom/O000000o/O000000o/O000o00;)Lcom/O000000o/O000000o/O0000Oo0;
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000oO:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public O000000o(Ljava/lang/Class;Ljava/lang/Object;)Lcom/O000000o/O000000o/O0000Oo0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/O000000o/O000000o/O0000Oo0;"
        }
    .end annotation

    instance-of v0, p2, Lcom/O000000o/O000000o/O000OOOo;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v2, p2, Lcom/O000000o/O000000o/O0000o;

    if-nez v2, :cond_1

    instance-of v2, p2, Lcom/O000000o/O000000o/O000o000;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/O000000o/O000000o/O00000Oo/O000000o;->O000000o(Z)V

    instance-of v2, p2, Lcom/O000000o/O000000o/O0000o;

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000oo:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/O000000o/O000000o/O00O0Oo;->O000000o(Ljava/lang/Class;Ljava/lang/Object;)Lcom/O000000o/O000000o/O000o00;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    instance-of v0, p2, Lcom/O000000o/O000000o/O000o000;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000oO:Ljava/util/List;

    check-cast p2, Lcom/O000000o/O000000o/O000o000;

    invoke-static {p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O00000Oo(Ljava/lang/Class;Lcom/O000000o/O000000o/O000o000;)Lcom/O000000o/O000000o/O000o00;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method

.method public O000000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O0000Oo0;
    .locals 0

    iput-object p1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000OOo:Ljava/lang/String;

    return-object p0
.end method

.method public O000000o(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/O000000o/O000000o/O0000Oo0;
    .locals 3

    instance-of v0, p2, Lcom/O000000o/O000000o/O000OOOo;

    if-nez v0, :cond_1

    instance-of v1, p2, Lcom/O000000o/O000000o/O0000o;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/O000000o/O000000o/O0000Oo;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/O000000o/O000000o/O000o000;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/O000000o/O000000o/O00000Oo/O000000o;->O000000o(Z)V

    instance-of v1, p2, Lcom/O000000o/O000000o/O0000Oo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000o:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, Lcom/O000000o/O000000o/O0000Oo;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/O000000o/O000000o/O0000o;

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p1}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo(Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/O00000o0/O000000o;

    move-result-object v0

    iget-object v1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000oO:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/O000000o/O000000o/O00O0Oo;->O00000Oo(Lcom/O000000o/O000000o/O00000o0/O000000o;Ljava/lang/Object;)Lcom/O000000o/O000000o/O000o00;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v0, p2, Lcom/O000000o/O000000o/O000o000;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000oO:Ljava/util/List;

    invoke-static {p1}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo(Ljava/lang/reflect/Type;)Lcom/O000000o/O000000o/O00000o0/O000000o;

    move-result-object p1

    check-cast p2, Lcom/O000000o/O000000o/O000o000;

    invoke-static {p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O00oOooO;->O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;Lcom/O000000o/O000000o/O000o000;)Lcom/O000000o/O000000o/O000o00;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p0
.end method

.method public varargs O000000o([I)Lcom/O000000o/O000000o/O0000Oo0;
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o([I)Lcom/O000000o/O000000o/O00000Oo/O00000o;

    move-result-object p1

    iput-object p1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    return-object p0
.end method

.method public varargs O000000o([Lcom/O000000o/O000000o/O00000Oo;)Lcom/O000000o/O000000o/O0000Oo0;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v4}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o(Lcom/O000000o/O000000o/O00000Oo;ZZ)Lcom/O000000o/O000000o/O00000Oo/O00000o;

    move-result-object v2

    iput-object v2, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public O00000Oo()Lcom/O000000o/O000000o/O0000Oo0;
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000o0()Lcom/O000000o/O000000o/O00000Oo/O00000o;

    move-result-object v0

    iput-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    return-object p0
.end method

.method public O00000Oo(Lcom/O000000o/O000000o/O00000Oo;)Lcom/O000000o/O000000o/O0000Oo0;
    .locals 3

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O000000o(Lcom/O000000o/O000000o/O00000Oo;ZZ)Lcom/O000000o/O000000o/O00000Oo/O00000o;

    move-result-object p1

    iput-object p1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    return-object p0
.end method

.method public O00000o()Lcom/O000000o/O000000o/O0000Oo0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000OoO:Z

    return-object p0
.end method

.method public O00000o0()Lcom/O000000o/O000000o/O0000Oo0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000O0o:Z

    return-object p0
.end method

.method public O00000oO()Lcom/O000000o/O000000o/O0000Oo0;
    .locals 1

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/O00000Oo/O00000o;->O00000Oo()Lcom/O000000o/O000000o/O00000Oo/O00000o;

    move-result-object v0

    iput-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    return-object p0
.end method

.method public O00000oo()Lcom/O000000o/O000000o/O0000Oo0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000o0:Z

    return-object p0
.end method

.method public O0000O0o()Lcom/O000000o/O000000o/O0000Oo0;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000o00:Z

    return-object p0
.end method

.method public O0000OOo()Lcom/O000000o/O000000o/O0000Oo0;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000Ooo:Z

    return-object p0
.end method

.method public O0000Oo0()Lcom/O000000o/O000000o/O0000OOo;
    .locals 13

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000oO:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000oo:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000OOo:Ljava/lang/String;

    iget v1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000Oo0:I

    iget v2, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000Oo:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/O000000o/O000000o/O0000Oo0;->O000000o(Ljava/lang/String;IILjava/util/List;)V

    new-instance v12, Lcom/O000000o/O000000o/O0000OOo;

    iget-object v1, p0, Lcom/O000000o/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O00000o;

    iget-object v2, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000o0:Lcom/O000000o/O000000o/O0000O0o;

    iget-object v3, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000o:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000O0o:Z

    iget-boolean v5, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000OoO:Z

    iget-boolean v6, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000o0O:Z

    iget-boolean v7, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000o00:Z

    iget-boolean v8, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000o0:Z

    iget-boolean v9, p0, Lcom/O000000o/O000000o/O0000Oo0;->O0000Ooo:Z

    iget-object v10, p0, Lcom/O000000o/O000000o/O0000Oo0;->O00000Oo:Lcom/O000000o/O000000o/O000Oo0;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/O000000o/O000000o/O0000OOo;-><init>(Lcom/O000000o/O000000o/O00000Oo/O00000o;Lcom/O000000o/O000000o/O0000O0o;Ljava/util/Map;ZZZZZZLcom/O000000o/O000000o/O000Oo0;Ljava/util/List;)V

    return-object v12
.end method
