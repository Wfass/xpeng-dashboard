.class public Lwg;
.super Ltw;
.source "FieldReaderZonedDateTime.java"


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
            "Ljava/time/ZonedDateTime;",
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
            "Ljava/time/ZonedDateTime;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-static/range {p7 .. p8}, Lzs;->a(Ljava/lang/String;Ljava/util/Locale;)Lzs;

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

    .line 38
    invoke-direct/range {v0 .. v13}, Ltw;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Lwk;)V

    move-object/from16 v1, p13

    .line 52
    iput-object v1, v0, Lwg;->w:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->an()Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 64
    invoke-virtual {p0, p2, p1}, Lwg;->a(Ljava/lang/Object;Ljava/time/ZonedDateTime;)V

    return-void
.end method

.method public a(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 120
    invoke-static {p2, p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p2

    .line 121
    sget-object p3, Laay;->a:Ljava/time/ZoneId;

    invoke-static {p2, p3}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    .line 122
    invoke-virtual {p0, p1, p2}, Lwg;->a(Ljava/lang/Object;Ljava/time/ZonedDateTime;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2}, Ltw;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/time/Instant;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/time/Instant;",
            ")V"
        }
    .end annotation

    .line 76
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    invoke-static {p2, v0}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    .line 77
    invoke-virtual {p0, p1, p2}, Lwg;->a(Ljava/lang/Object;Ljava/time/ZonedDateTime;)V

    return-void
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

    .line 82
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    invoke-static {p2, v0}, Ljava/time/ZonedDateTime;->of(Ljava/time/LocalDateTime;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    .line 83
    invoke-virtual {p0, p1, p2}, Lwg;->a(Ljava/lang/Object;Ljava/time/ZonedDateTime;)V

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/time/ZonedDateTime;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/time/ZonedDateTime;",
            ")V"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lwg;->l:Laai;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lwg;->l:Laai;

    invoke-virtual {v0, p2}, Laai;->b(Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    .line 131
    iget-wide v0, p0, Lwg;->e:J

    sget-object v2, Lcom/alibaba/fastjson2/u$d;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "set "

    if-eqz p1, :cond_5

    .line 139
    iget-object v1, p0, Lwg;->w:Ljava/util/function/BiConsumer;

    if-eqz v1, :cond_2

    .line 140
    invoke-interface {v1, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 144
    :cond_2
    iget-object v1, p0, Lwg;->g:Ljava/lang/reflect/Method;

    const-string v2, " error"

    if-eqz v1, :cond_3

    .line 146
    :try_start_0
    iget-object v1, p0, Lwg;->g:Ljava/lang/reflect/Method;

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

    .line 148
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lwg;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 153
    :cond_3
    iget-wide v3, p0, Lwg;->i:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    .line 154
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lwg;->i:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 159
    :cond_4
    :try_start_1
    iget-object v1, p0, Lwg;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 161
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lwg;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 136
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lwg;->b:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error, object is null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Ljava/lang/Object;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-virtual {p2}, Ljava/util/Date;->toInstant()Ljava/time/Instant;

    move-result-object p2

    .line 70
    sget-object v0, Laay;->a:Ljava/time/ZoneId;

    invoke-static {p2, v0}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p2

    .line 71
    invoke-virtual {p0, p1, p2}, Lwg;->a(Ljava/lang/Object;Ljava/time/ZonedDateTime;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Class;)Z
    .locals 0

    .line 20
    invoke-super {p0, p1}, Ltw;->a(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lwg;->x:Lwk;

    iget-object v2, p0, Lwg;->d:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lwg;->b:Ljava/lang/String;

    iget-wide v4, p0, Lwg;->e:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/ZonedDateTime;

    .line 58
    invoke-virtual {p0, p2, p1}, Lwg;->a(Ljava/lang/Object;Ljava/time/ZonedDateTime;)V

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

    .line 115
    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {p0, p1, v0}, Lwg;->a(Ljava/lang/Object;Ljava/time/ZonedDateTime;)V

    return-void
.end method
