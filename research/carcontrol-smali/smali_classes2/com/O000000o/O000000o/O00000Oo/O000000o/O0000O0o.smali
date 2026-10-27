.class public final Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;
.super Lcom/O000000o/O000000o/O00000o/O00000o;
.source "JsonTreeWriter.java"


# static fields
.field private static final O000000o:Ljava/io/Writer;

.field private static final O00000Oo:Lcom/O000000o/O000000o/O000OO0o;


# instance fields
.field private O00000o:Ljava/lang/String;

.field private final O00000o0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/O000000o/O000000o/O00oOooO;",
            ">;"
        }
    .end annotation
.end field

.field private O00000oO:Lcom/O000000o/O000000o/O00oOooO;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o$1;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o$1;-><init>()V

    sput-object v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O000000o:Ljava/io/Writer;

    new-instance v0, Lcom/O000000o/O000000o/O000OO0o;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/O000000o/O000000o/O000OO0o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000Oo:Lcom/O000000o/O000000o/O000OO0o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O000000o:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000o/O00000o;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o0:Ljava/util/List;

    sget-object v0, Lcom/O000000o/O000000o/O000O0OO;->O000000o:Lcom/O000000o/O000000o/O000O0OO;

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000oO:Lcom/O000000o/O000000o/O00oOooO;

    return-void
.end method

.method private O000000o(Lcom/O000000o/O000000o/O00oOooO;)V
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00oOooO;->O0000oO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O0000Oo0()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O0000Oo()Lcom/O000000o/O000000o/O00oOooO;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/O000O0o0;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/O000000o/O000000o/O000O0o0;->O000000o(Ljava/lang/String;Lcom/O000000o/O000000o/O00oOooO;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000oO:Lcom/O000000o/O000000o/O00oOooO;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O0000Oo()Lcom/O000000o/O000000o/O00oOooO;

    move-result-object v0

    instance-of v1, v0, Lcom/O000000o/O000000o/O0000o00;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/O000000o/O000000o/O0000o00;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O0000o00;->O000000o(Lcom/O000000o/O000000o/O00oOooO;)V

    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private O0000Oo()Lcom/O000000o/O000000o/O00oOooO;
    .locals 2

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/O00oOooO;

    return-object v0
.end method


# virtual methods
.method public O000000o(D)Lcom/O000000o/O000000o/O00000o/O00000o;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O0000O0o()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/O000000o/O000000o/O000OO0o;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000OO0o;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O000000o(Lcom/O000000o/O000000o/O00oOooO;)V

    return-object p0
.end method

.method public O000000o(J)Lcom/O000000o/O000000o/O00000o/O00000o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/O000000o/O000000o/O000OO0o;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000OO0o;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O000000o(Lcom/O000000o/O000000o/O00oOooO;)V

    return-object p0
.end method

.method public O000000o(Ljava/lang/Number;)Lcom/O000000o/O000000o/O00000o/O00000o;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O0000O0o()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance v0, Lcom/O000000o/O000000o/O000OO0o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000OO0o;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O000000o(Lcom/O000000o/O000000o/O00oOooO;)V

    return-object p0
.end method

.method public O000000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O00000o/O00000o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O0000Oo()Lcom/O000000o/O000000o/O00oOooO;

    move-result-object v0

    instance-of v0, v0, Lcom/O000000o/O000000o/O000O0o0;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public O000000o(Z)Lcom/O000000o/O000000o/O00000o/O00000o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/O000000o/O000000o/O000OO0o;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000OO0o;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O000000o(Lcom/O000000o/O000000o/O00oOooO;)V

    return-object p0
.end method

.method public O000000o()Lcom/O000000o/O000000o/O00oOooO;
    .locals 3

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000oO:Lcom/O000000o/O000000o/O00oOooO;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o0:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public O00000Oo()Lcom/O000000o/O000000o/O00000o/O00000o;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/O000000o/O000000o/O0000o00;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O0000o00;-><init>()V

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O000000o(Lcom/O000000o/O000000o/O00oOooO;)V

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public O00000Oo(Ljava/lang/String;)Lcom/O000000o/O000000o/O00000o/O00000o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/O000000o/O000000o/O000OO0o;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000OO0o;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O000000o(Lcom/O000000o/O000000o/O00oOooO;)V

    return-object p0
.end method

.method public O00000o()Lcom/O000000o/O000000o/O00000o/O00000o;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/O000000o/O000000o/O000O0o0;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O000O0o0;-><init>()V

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O000000o(Lcom/O000000o/O000000o/O00oOooO;)V

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o0:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public O00000o0()Lcom/O000000o/O000000o/O00000o/O00000o;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O0000Oo()Lcom/O000000o/O000000o/O00oOooO;

    move-result-object v0

    instance-of v0, v0, Lcom/O000000o/O000000o/O0000o00;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public O00000oO()Lcom/O000000o/O000000o/O00000o/O00000o;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O0000Oo()Lcom/O000000o/O000000o/O00oOooO;

    move-result-object v0

    instance-of v0, v0, Lcom/O000000o/O000000o/O000O0o0;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/O000000o/O000000o/O000O0OO;->O000000o:Lcom/O000000o/O000000o/O000O0OO;

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O000000o(Lcom/O000000o/O000000o/O00oOooO;)V

    return-object p0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000o0:Ljava/util/List;

    sget-object v1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000O0o;->O00000Oo:Lcom/O000000o/O000000o/O000OO0o;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
