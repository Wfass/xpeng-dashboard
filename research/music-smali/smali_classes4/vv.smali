.class public Lvv;
.super Lsu;
.source "FieldReaderObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lsu<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected y:Lwk;

.field protected final z:Ljava/util/function/BiConsumer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 40
    invoke-direct/range {p0 .. p12}, Lsu;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 41
    iput-object p13, p0, Lvv;->z:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u$c;)Lwk;
    .locals 4

    .line 74
    iget-object v0, p0, Lvv;->p:Lwk;

    if-eqz v0, :cond_0

    .line 75
    iget-object p1, p0, Lvv;->p:Lwk;

    return-object p1

    .line 78
    :cond_0
    iget-object v0, p0, Lvv;->d:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lvv;->c:Ljava/lang/Class;

    iget-object v2, p0, Lvv;->f:Ljava/lang/String;

    iget-object v3, p0, Lvv;->k:Ljava/util/Locale;

    invoke-static {v0, v1, v2, v3}, Lvv;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    iput-object v0, p0, Lvv;->p:Lwk;

    return-object v0

    .line 83
    :cond_1
    const-class v0, Ljava/util/Map;

    iget-object v1, p0, Lvv;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    iget-object p1, p0, Lvv;->d:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lvv;->c:Ljava/lang/Class;

    iget-wide v1, p0, Lvv;->e:J

    invoke-static {p1, v0, v1, v2}, Lyw;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object p1

    iput-object p1, p0, Lvv;->p:Lwk;

    return-object p1

    .line 85
    :cond_2
    const-class v0, Ljava/util/Collection;

    iget-object v1, p0, Lvv;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iget-object p1, p0, Lvv;->d:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lvv;->c:Ljava/lang/Class;

    iget-wide v1, p0, Lvv;->e:J

    invoke-static {p1, v0, v1, v2}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object p1

    iput-object p1, p0, Lvv;->p:Lwk;

    return-object p1

    .line 89
    :cond_3
    iget-object v0, p0, Lvv;->d:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    iput-object p1, p0, Lvv;->p:Lwk;

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;)Lwk;
    .locals 4

    .line 51
    iget-object v0, p0, Lvv;->y:Lwk;

    if-eqz v0, :cond_0

    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lvv;->p:Lwk;

    if-eqz v0, :cond_1

    .line 56
    iget-object p1, p0, Lvv;->p:Lwk;

    return-object p1

    .line 59
    :cond_1
    iget-object v0, p0, Lvv;->d:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lvv;->c:Ljava/lang/Class;

    iget-object v2, p0, Lvv;->f:Ljava/lang/String;

    iget-object v3, p0, Lvv;->k:Ljava/util/Locale;

    invoke-static {v0, v1, v2, v3}, Lvv;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 61
    iput-object v0, p0, Lvv;->p:Lwk;

    return-object v0

    .line 64
    :cond_2
    iget-object v0, p0, Lvv;->c:Ljava/lang/Class;

    if-eqz v0, :cond_3

    const-class v0, Ljava/util/Map;

    iget-object v1, p0, Lvv;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object p1, p0, Lvv;->d:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lvv;->c:Ljava/lang/Class;

    iget-wide v1, p0, Lvv;->e:J

    invoke-static {p1, v0, v1, v2}, Lyw;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object p1

    iput-object p1, p0, Lvv;->p:Lwk;

    return-object p1

    .line 66
    :cond_3
    iget-object v0, p0, Lvv;->c:Ljava/lang/Class;

    if-eqz v0, :cond_4

    const-class v0, Ljava/util/Collection;

    iget-object v1, p0, Lvv;->c:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    iget-object p1, p0, Lvv;->d:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lvv;->c:Ljava/lang/Class;

    iget-wide v1, p0, Lvv;->e:J

    invoke-static {p1, v0, v1, v2}, Lyp;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lwk;

    move-result-object p1

    iput-object p1, p0, Lvv;->p:Lwk;

    return-object p1

    .line 70
    :cond_4
    iget-object v0, p0, Lvv;->d:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    iput-object p1, p0, Lvv;->p:Lwk;

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 179
    iget-boolean v0, p0, Lvv;->m:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v0

    const/16 v1, -0x6e

    if-eq v0, v1, :cond_2

    .line 180
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v0

    .line 181
    sget-object v2, Lcom/alibaba/fastjson2/u$d;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    return-void

    .line 184
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/u$d;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    goto :goto_0

    .line 185
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "not support none-Serializable"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_2
    :goto_0
    iget-object v0, p0, Lvv;->y:Lwk;

    if-nez v0, :cond_3

    .line 190
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    iget-object v1, p0, Lvv;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    iput-object v0, p0, Lvv;->y:Lwk;

    .line 193
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".."

    .line 195
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 196
    invoke-virtual {p0, p2, p2}, Lvv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 198
    :cond_4
    invoke-virtual {p0, p1, p2, v0}, Lvv;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void

    .line 203
    :cond_5
    iget-object v2, p0, Lvv;->y:Lwk;

    iget-object v4, p0, Lvv;->d:Ljava/lang/reflect/Type;

    iget-object v5, p0, Lvv;->b:Ljava/lang/String;

    iget-wide v6, p0, Lvv;->e:J

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 204
    invoke-virtual {p0, p2, p1}, Lvv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;B)V"
        }
    .end annotation

    .line 214
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;C)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;C)V"
        }
    .end annotation

    .line 244
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)V"
        }
    .end annotation

    .line 239
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 234
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 224
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 229
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lvv;->l:Laai;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lvv;->l:Laai;

    invoke-virtual {v0, p2}, Laai;->b(Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    .line 253
    iget-wide v0, p0, Lvv;->e:J

    sget-object v2, Lcom/alibaba/fastjson2/u$d;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lvv;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 258
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 259
    check-cast p2, Ljava/lang/String;

    .line 260
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 261
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    goto :goto_0

    .line 263
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 268
    iget-object v0, p0, Lvv;->c:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 269
    iget-object v0, p0, Lvv;->d:Ljava/lang/reflect/Type;

    invoke-static {p2, v0}, Labo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 273
    :cond_4
    :try_start_0
    iget-object v0, p0, Lvv;->z:Ljava/util/function/BiConsumer;

    if-eqz v0, :cond_5

    .line 274
    iget-object v0, p0, Lvv;->z:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 275
    :cond_5
    iget-object v0, p0, Lvv;->g:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    .line 276
    iget-object v0, p0, Lvv;->g:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 278
    :cond_6
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lvv;->i:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 281
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvv;->z:Ljava/util/function/BiConsumer;

    if-eqz v1, :cond_7

    invoke-super {p0}, Lsu;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lvv;->b:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;S)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;S)V"
        }
    .end annotation

    .line 219
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 209
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lvv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 7

    .line 287
    iget-object v0, p0, Lvv;->y:Lwk;

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lvv;->a(Lcom/alibaba/fastjson2/u;)Lwk;

    move-result-object v0

    iput-object v0, p0, Lvv;->y:Lwk;

    .line 291
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_1

    .line 292
    iget-object v1, p0, Lvv;->y:Lwk;

    iget-object v3, p0, Lvv;->d:Ljava/lang/reflect/Type;

    iget-object v4, p0, Lvv;->b:Ljava/lang/String;

    iget-wide v5, p0, Lvv;->e:J

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 293
    :cond_1
    iget-object v0, p0, Lvv;->y:Lwk;

    iget-object v2, p0, Lvv;->d:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lvv;->b:Ljava/lang/String;

    iget-wide v4, p0, Lvv;->e:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 295
    :goto_0
    iget-object v0, p0, Lvv;->y:Lwk;

    invoke-interface {v0}, Lwk;->e()Ljava/util/function/Function;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 297
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 94
    iget-boolean v0, p0, Lvv;->m:Z

    const-wide/16 v7, 0x0

    if-nez v0, :cond_2

    .line 95
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v1

    .line 96
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v3, v1

    cmp-long v0, v3, v7

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v1, v3

    cmp-long v0, v1, v7

    if-nez v0, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "not support none-Serializable"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_2
    :goto_0
    iget-object v0, p0, Lvv;->y:Lwk;

    if-eqz v0, :cond_3

    :goto_1
    move-object v1, v0

    goto :goto_2

    .line 108
    :cond_3
    iget-object v0, p0, Lvv;->d:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lvv;->c:Ljava/lang/Class;

    iget-object v2, p0, Lvv;->f:Ljava/lang/String;

    iget-object v3, p0, Lvv;->k:Ljava/util/Locale;

    invoke-static {v0, v1, v2, v3}, Lvv;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lwk;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 110
    iput-object v0, p0, Lvv;->y:Lwk;

    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    iget-object v1, p0, Lvv;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    iput-object v0, p0, Lvv;->y:Lwk;

    goto :goto_1

    .line 116
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".."

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 119
    invoke-virtual {p0, p2, p2}, Lvv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 121
    :cond_5
    invoke-virtual {p0, p1, p2, v0}, Lvv;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_6
    const/4 v9, 0x0

    .line 128
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 129
    iget-object v0, p0, Lvv;->c:Ljava/lang/Class;

    const-class v1, Ljava/util/OptionalInt;

    if-ne v0, v1, :cond_7

    .line 130
    invoke-static {}, Ljava/util/OptionalInt;->empty()Ljava/util/OptionalInt;

    move-result-object v0

    :goto_4
    move-object v9, v0

    goto/16 :goto_8

    .line 131
    :cond_7
    iget-object v0, p0, Lvv;->c:Ljava/lang/Class;

    const-class v1, Ljava/util/OptionalLong;

    if-ne v0, v1, :cond_8

    .line 132
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object v0

    goto :goto_4

    .line 133
    :cond_8
    iget-object v0, p0, Lvv;->c:Ljava/lang/Class;

    const-class v1, Ljava/util/OptionalDouble;

    if-ne v0, v1, :cond_9

    .line 134
    invoke-static {}, Ljava/util/OptionalDouble;->empty()Ljava/util/OptionalDouble;

    move-result-object v0

    goto :goto_4

    .line 135
    :cond_9
    iget-object v0, p0, Lvv;->c:Ljava/lang/Class;

    const-class v1, Ljava/util/Optional;

    if-ne v0, v1, :cond_10

    .line 136
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto :goto_4

    .line 140
    :cond_a
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_d

    .line 141
    iget-object v0, p0, Lvv;->c:Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_c

    .line 142
    const-class v2, Ljava/lang/Object;

    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lvv;->e:J

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 144
    iget-object v3, p0, Lvv;->d:Ljava/lang/reflect/Type;

    iget-object v4, p0, Lvv;->b:Ljava/lang/String;

    iget-wide v5, p0, Lvv;->e:J

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    .line 146
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    .line 149
    :cond_c
    iget-object v3, p0, Lvv;->d:Ljava/lang/reflect/Type;

    iget-object v4, p0, Lvv;->b:Ljava/lang/String;

    iget-wide v5, p0, Lvv;->e:J

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    .line 152
    :cond_d
    iget-object v3, p0, Lvv;->d:Ljava/lang/reflect/Type;

    iget-object v4, p0, Lvv;->b:Ljava/lang/String;

    iget-wide v5, p0, Lvv;->e:J

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/alibaba/fastjson2/z; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 157
    :goto_5
    iget-wide v1, p0, Lvv;->e:J

    sget-object v3, Lcom/alibaba/fastjson2/u$d;->NullOnError:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-nez v1, :cond_10

    .line 158
    iget-object v1, p0, Lvv;->h:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lvv;->h:Ljava/lang/reflect/Field;

    goto :goto_6

    :cond_e
    iget-object v1, p0, Lvv;->g:Ljava/lang/reflect/Method;

    :goto_6
    if-eqz v1, :cond_f

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read field \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 163
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lvv;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    :goto_7
    new-instance v2, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 170
    :cond_10
    :goto_8
    invoke-virtual {p0, p2, v9}, Lvv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    iget-boolean v0, p0, Lvv;->r:Z

    if-eqz v0, :cond_11

    if-eqz v9, :cond_11

    .line 173
    invoke-static {v9, p2}, Laax;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_11
    return-void

    :catch_2
    move-exception v0

    .line 155
    throw v0
.end method

.method public c(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 4

    .line 304
    iget-object v0, p0, Lvv;->y:Lwk;

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0, p1}, Lvv;->a(Lcom/alibaba/fastjson2/u;)Lwk;

    move-result-object v0

    iput-object v0, p0, Lvv;->y:Lwk;

    .line 308
    :cond_0
    iget-object v0, p0, Lvv;->y:Lwk;

    instance-of v0, v0, Lwz;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvv;->h:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lvv;->y:Lwk;

    invoke-interface {v1, v0}, Lwk;->a(Ljava/lang/String;)Lsu;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 313
    :try_start_0
    iget-object v1, p0, Lvv;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 315
    iget-object v1, p0, Lvv;->y:Lwk;

    iget-wide v2, p0, Lvv;->e:J

    invoke-interface {v1, v2, v3}, Lwk;->a(J)Ljava/lang/Object;

    move-result-object v1

    .line 316
    invoke-virtual {p0, p2, v1}, Lvv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    :cond_1
    invoke-virtual {v0, p1, v1}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 321
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string v0, "read unwrapped field error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 326
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    return-void
.end method

.method public d()Lwk;
    .locals 1

    .line 46
    iget-object v0, p0, Lvv;->y:Lwk;

    return-object v0
.end method

.method public e()Ljava/util/function/BiConsumer;
    .locals 1

    .line 331
    iget-object v0, p0, Lvv;->z:Ljava/util/function/BiConsumer;

    return-object v0
.end method
