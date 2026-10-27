.class public final Luj;
.super Ltw;
.source "FieldReaderInstant.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltw<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final w:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Laai;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/time/Instant;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-static/range {p7 .. p8}, Lyd;->a(Ljava/lang/String;Ljava/util/Locale;)Lyd;

    move-result-object v13

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p12

    move-object/from16 v12, p11

    .line 39
    invoke-direct/range {v0 .. v13}, Ltw;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lwk;)V

    move-object/from16 v1, p13

    .line 53
    iput-object v1, v0, Luj;->w:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ar()Ljava/time/Instant;

    move-result-object p1

    .line 65
    invoke-virtual {p0, p2, p1}, Luj;->a(Ljava/lang/Object;Ljava/time/Instant;)V

    return-void
.end method

.method public a(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 118
    invoke-static {p2, p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Luj;->a(Ljava/lang/Object;Ljava/time/Instant;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 21
    invoke-super {p0, p1, p2}, Ltw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/time/Instant;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/time/Instant;",
            ")V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Luj;->l:Laai;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Luj;->l:Laai;

    invoke-virtual {v0, p2}, Laai;->b(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "set "

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    .line 131
    iget-wide v1, p0, Luj;->e:J

    sget-object v3, Lcom/alibaba/fastjson2/u$d;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    return-void

    .line 135
    :cond_1
    iget-object v1, p0, Luj;->w:Ljava/util/function/BiConsumer;

    if-eqz v1, :cond_2

    .line 136
    invoke-interface {v1, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 140
    :cond_2
    iget-object v1, p0, Luj;->g:Ljava/lang/reflect/Method;

    const-string v2, " error"

    if-eqz v1, :cond_3

    .line 142
    :try_start_0
    iget-object v1, p0, Luj;->g:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 144
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Luj;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 149
    :cond_3
    iget-wide v3, p0, Luj;->i:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    .line 150
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Luj;->i:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 155
    :cond_4
    :try_start_1
    iget-object v1, p0, Luj;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 157
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Luj;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 128
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Luj;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error, object is null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Ljava/lang/Object;Ljava/time/LocalDateTime;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/time/LocalDateTime;",
            ")V"
        }
    .end annotation

    .line 70
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    invoke-virtual {v0}, Ljava/time/ZoneId;->getRules()Ljava/time/zone/ZoneRules;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 71
    invoke-virtual {p2, v0}, Ljava/time/LocalDateTime;->toInstant(Ljava/time/ZoneOffset;)Ljava/time/Instant;

    move-result-object p2

    .line 72
    invoke-virtual {p0, p1, p2}, Luj;->a(Ljava/lang/Object;Ljava/time/Instant;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/time/ZonedDateTime;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/time/ZonedDateTime;",
            ")V"
        }
    .end annotation

    .line 82
    invoke-virtual {p2}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Luj;->a(Ljava/lang/Object;Ljava/time/Instant;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/util/Date;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 77
    invoke-virtual {p2}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Luj;->a(Ljava/lang/Object;Ljava/time/Instant;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Class;)Z
    .locals 0

    .line 21
    invoke-super {p0, p1}, Ltw;->a(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Luj;->x:Lwk;

    iget-object v2, p0, Luj;->d:Ljava/lang/reflect/Type;

    iget-object v3, p0, Luj;->b:Ljava/lang/String;

    iget-wide v4, p0, Luj;->e:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/Instant;

    .line 59
    invoke-virtual {p0, p2, p1}, Luj;->a(Ljava/lang/Object;Ljava/time/Instant;)V

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    check-cast v0, Ljava/time/Instant;

    invoke-virtual {p0, p1, v0}, Luj;->a(Ljava/lang/Object;Ljava/time/Instant;)V

    return-void
.end method
