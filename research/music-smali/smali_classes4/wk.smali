.class public interface abstract Lwk;
.super Ljava/lang/Object;
.source "ObjectReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "@type"

    .line 13
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lwk;->f:J

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            ")TT;"
        }
    .end annotation

    .line 270
    invoke-interface {p0}, Lwk;->getFeatures()J

    move-result-wide v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;J)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "J)TT;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 274
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-interface/range {p0 .. p5}, Lwk;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 192
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    .line 195
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    .line 244
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide p1

    or-long/2addr p1, p4

    invoke-interface {p0, p1, p2}, Lwk;->a(J)Ljava/lang/Object;

    move-result-object v2

    :cond_1
    return-object v2

    .line 198
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v3

    .line 200
    invoke-interface {p0}, Lwk;->d()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-nez v5, :cond_6

    if-nez v0, :cond_6

    .line 201
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide v3

    .line 202
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v5

    .line 203
    invoke-interface {p0, v5, v3, v4}, Lwk;->a(Lcom/alibaba/fastjson2/u$c;J)Lwk;

    move-result-object v3

    if-nez v3, :cond_4

    .line 206
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-virtual {v5, v3, v1}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lwk;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object v3, v4

    goto :goto_1

    .line 210
    :cond_3
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No suitable ObjectReader found for"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_1
    if-ne v3, p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, v3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 218
    invoke-interface/range {v0 .. v5}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_7

    goto :goto_2

    .line 225
    :cond_7
    invoke-interface {p0, v3, v4}, Lwk;->b(J)Lsu;

    move-result-object v3

    if-nez v3, :cond_8

    .line 226
    invoke-interface {p0}, Lwk;->getFeatures()J

    move-result-wide v4

    or-long/2addr v4, p4

    invoke-virtual {p1, v4, v5}, Lcom/alibaba/fastjson2/u;->b(J)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 227
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->I()J

    move-result-wide v3

    .line 228
    invoke-interface {p0, v3, v4}, Lwk;->c(J)Lsu;

    move-result-object v3

    :cond_8
    if-nez v3, :cond_9

    .line 232
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    goto :goto_2

    :cond_9
    if-nez v2, :cond_a

    .line 237
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v4

    or-long/2addr v4, p4

    invoke-interface {p0, v4, v5}, Lwk;->a(J)Ljava/lang/Object;

    move-result-object v2

    .line 240
    :cond_a
    invoke-virtual {v3, p1, v2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public a(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "J)TT;"
        }
    .end annotation

    .line 59
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 60
    invoke-interface {p0}, Lwk;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    instance-of v2, v1, Ljava/lang/String;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    .line 63
    check-cast v1, Ljava/lang/String;

    .line 64
    invoke-static {v1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v2, 0x0

    .line 66
    sget-object v7, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v7, p2

    cmp-long v7, v7, v3

    if-nez v7, :cond_0

    instance-of v7, p0, Lzy;

    if-eqz v7, :cond_1

    .line 67
    :cond_0
    invoke-interface {p0, v0, v5, v6}, Lwk;->a(Lzx;J)Lwk;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    .line 72
    invoke-interface {p0}, Lwk;->d_()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {p0}, Lwk;->getFeatures()J

    move-result-wide v5

    or-long/2addr v5, p2

    .line 71
    invoke-virtual {v0, v1, v2, v5, v6}, Lzx;->a(Ljava/lang/String;Ljava/lang/Class;J)Lwk;

    move-result-object v2

    :cond_2
    if-eq v2, p0, :cond_3

    if-eqz v2, :cond_3

    .line 77
    invoke-interface {v2, p1, p2, p3}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 81
    :cond_3
    invoke-interface {p0, v3, v4}, Lwk;->a(J)Ljava/lang/Object;

    move-result-object v6

    .line 82
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 86
    invoke-interface {p0, v2}, Lwk;->a(Ljava/lang/String;)Lsu;

    move-result-object v3

    if-nez v3, :cond_4

    .line 88
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, p0

    move-object v1, v6

    move-wide v4, p2

    invoke-interface/range {v0 .. v5}, Lwk;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_0

    .line 92
    :cond_4
    invoke-virtual {v3, v6, v1, p2, p3}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_0

    .line 95
    :cond_5
    invoke-interface {p0}, Lwk;->e()Ljava/util/function/Function;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 97
    invoke-interface {p1, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v6
.end method

.method public varargs a(Ljava/util/Map;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "[",
            "Lcom/alibaba/fastjson2/u$d;",
            ")TT;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 48
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 49
    aget-object v3, p2, v2

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {p0, p1, v0, v1}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Lsu;
    .locals 5

    .line 156
    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 157
    invoke-interface {p0, v0, v1}, Lwk;->b(J)Lsu;

    move-result-object v2

    if-nez v2, :cond_0

    .line 160
    invoke-static {p1}, Labc;->a(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long p1, v3, v0

    if-eqz p1, :cond_0

    .line 162
    invoke-interface {p0, v3, v4}, Lwk;->c(J)Lsu;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public a(Lcom/alibaba/fastjson2/u$c;J)Lwk;
    .locals 0

    .line 174
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/u$c;->a(J)Lwk;

    move-result-object p1

    return-object p1
.end method

.method public a(Lzx;J)Lwk;
    .locals 0

    .line 178
    invoke-virtual {p1, p2, p3}, Lzx;->a(J)Lwk;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 20
    invoke-interface {p0, v0, v1}, Lwk;->a(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 255
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(J)Lsu;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 263
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "@type"

    return-object v0
.end method

.method public c(J)Lsu;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection;",
            ")TT;"
        }
    .end annotation

    .line 36
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()J
    .locals 2

    .line 122
    sget-wide v0, Lwk;->f:J

    return-wide v0
.end method

.method public d_()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/util/function/Function;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeatures()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation
.end method
