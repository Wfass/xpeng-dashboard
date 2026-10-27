.class public final Liy;
.super Ljh;
.source "JsonTreeWriter.java"


# static fields
.field private static final a:Ljava/io/Writer;

.field private static final b:Lcom/O000000o/O000000o/m;


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/O000000o/O000000o/r;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Lcom/O000000o/O000000o/r;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Liy$1;

    invoke-direct {v0}, Liy$1;-><init>()V

    sput-object v0, Liy;->a:Ljava/io/Writer;

    new-instance v0, Lcom/O000000o/O000000o/m;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/O000000o/O000000o/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Liy;->b:Lcom/O000000o/O000000o/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Liy;->a:Ljava/io/Writer;

    invoke-direct {p0, v0}, Ljh;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liy;->c:Ljava/util/List;

    sget-object v0, Lcom/O000000o/O000000o/i;->a:Lcom/O000000o/O000000o/i;

    iput-object v0, p0, Liy;->e:Lcom/O000000o/O000000o/r;

    return-void
.end method

.method private a(Lcom/O000000o/O000000o/r;)V
    .locals 2

    iget-object v0, p0, Liy;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/O000000o/O000000o/r;->O0000oO()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Liy;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Liy;->j()Lcom/O000000o/O000000o/r;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/k;

    iget-object v1, p0, Liy;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/O000000o/O000000o/k;->a(Ljava/lang/String;Lcom/O000000o/O000000o/r;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Liy;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Liy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Liy;->e:Lcom/O000000o/O000000o/r;

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Liy;->j()Lcom/O000000o/O000000o/r;

    move-result-object v0

    instance-of v1, v0, Lcom/O000000o/O000000o/O0000o00;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/O000000o/O000000o/O0000o00;

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O0000o00;->O000000o(Lcom/O000000o/O000000o/r;)V

    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private j()Lcom/O000000o/O000000o/r;
    .locals 2

    iget-object v0, p0, Liy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/O000000o/O000000o/r;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/O000000o/O000000o/r;
    .locals 3

    iget-object v0, p0, Liy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liy;->e:Lcom/O000000o/O000000o/r;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected one JSON element but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Liy;->c:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(J)Ljh;
    .locals 1

    new-instance v0, Lcom/O000000o/O000000o/m;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/m;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Liy;->a(Lcom/O000000o/O000000o/r;)V

    return-object p0
.end method

.method public a(Ljava/lang/Number;)Ljh;
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Liy;->f()Ljh;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Liy;->g()Z

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

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance v0, Lcom/O000000o/O000000o/m;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/m;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Liy;->a(Lcom/O000000o/O000000o/r;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljh;
    .locals 1

    iget-object v0, p0, Liy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Liy;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Liy;->j()Lcom/O000000o/O000000o/r;

    move-result-object v0

    instance-of v0, v0, Lcom/O000000o/O000000o/k;

    if-eqz v0, :cond_0

    iput-object p1, p0, Liy;->d:Ljava/lang/String;

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

.method public a(Z)Ljh;
    .locals 1

    new-instance v0, Lcom/O000000o/O000000o/m;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/m;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Liy;->a(Lcom/O000000o/O000000o/r;)V

    return-object p0
.end method

.method public b()Ljh;
    .locals 2

    new-instance v0, Lcom/O000000o/O000000o/O0000o00;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O0000o00;-><init>()V

    invoke-direct {p0, v0}, Liy;->a(Lcom/O000000o/O000000o/r;)V

    iget-object v1, p0, Liy;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/lang/String;)Ljh;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Liy;->f()Ljh;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/O000000o/O000000o/m;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/m;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Liy;->a(Lcom/O000000o/O000000o/r;)V

    return-object p0
.end method

.method public c()Ljh;
    .locals 2

    iget-object v0, p0, Liy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Liy;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Liy;->j()Lcom/O000000o/O000000o/r;

    move-result-object v0

    instance-of v0, v0, Lcom/O000000o/O000000o/O0000o00;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liy;->c:Ljava/util/List;

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

.method public close()V
    .locals 2

    iget-object v0, p0, Liy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Liy;->c:Ljava/util/List;

    sget-object v1, Liy;->b:Lcom/O000000o/O000000o/m;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ljh;
    .locals 2

    new-instance v0, Lcom/O000000o/O000000o/k;

    invoke-direct {v0}, Lcom/O000000o/O000000o/k;-><init>()V

    invoke-direct {p0, v0}, Liy;->a(Lcom/O000000o/O000000o/r;)V

    iget-object v1, p0, Liy;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e()Ljh;
    .locals 2

    iget-object v0, p0, Liy;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Liy;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-direct {p0}, Liy;->j()Lcom/O000000o/O000000o/r;

    move-result-object v0

    instance-of v0, v0, Lcom/O000000o/O000000o/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liy;->c:Ljava/util/List;

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

.method public f()Ljh;
    .locals 1

    sget-object v0, Lcom/O000000o/O000000o/i;->a:Lcom/O000000o/O000000o/i;

    invoke-direct {p0, v0}, Liy;->a(Lcom/O000000o/O000000o/r;)V

    return-object p0
.end method

.method public flush()V
    .locals 0

    return-void
.end method
