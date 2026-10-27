.class Lvw;
.super Lvv;
.source "FieldReaderObjectField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lvv<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Object;Laai;Ljava/lang/reflect/Field;)V
    .locals 15

    if-nez p2, :cond_0

    .line 33
    invoke-virtual/range {p10 .. p10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v13, p10

    .line 32
    invoke-direct/range {v1 .. v14}, Lvv;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;B)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lvw;->l:Laai;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lvw;->l:Laai;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Laai;->b(J)V

    .line 71
    :cond_0
    iget-wide v0, p0, Lvw;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 72
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lvw;->i:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void

    .line 77
    :cond_1
    :try_start_0
    iget-object v0, p0, Lvw;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 79
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;C)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;C)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lvw;->l:Laai;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lvw;->l:Laai;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Laai;->b(J)V

    .line 179
    :cond_0
    iget-wide v0, p0, Lvw;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 180
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lvw;->i:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putChar(Ljava/lang/Object;JC)V

    return-void

    .line 185
    :cond_1
    :try_start_0
    iget-object v0, p0, Lvw;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 187
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;D)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;D)V"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lvw;->l:Laai;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lvw;->l:Laai;

    invoke-virtual {v0, p2, p3}, Laai;->b(D)V

    .line 161
    :cond_0
    iget-wide v0, p0, Lvw;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 162
    sget-object v2, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lvw;->i:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    return-void

    .line 167
    :cond_1
    :try_start_0
    iget-object v0, p0, Lvw;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 169
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lvw;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;F)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lvw;->l:Laai;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lvw;->l:Laai;

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Laai;->b(D)V

    .line 143
    :cond_0
    iget-wide v0, p0, Lvw;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 144
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lvw;->i:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    return-void

    .line 149
    :cond_1
    :try_start_0
    iget-object v0, p0, Lvw;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 151
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lvw;->l:Laai;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lvw;->l:Laai;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Laai;->b(J)V

    .line 107
    :cond_0
    iget-wide v0, p0, Lvw;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 108
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lvw;->i:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void

    .line 113
    :cond_1
    :try_start_0
    iget-object v0, p0, Lvw;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 115
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lvw;->l:Laai;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lvw;->l:Laai;

    invoke-virtual {v0, p2, p3}, Laai;->b(J)V

    .line 125
    :cond_0
    iget-wide v0, p0, Lvw;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 126
    sget-object v2, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v4, p0, Lvw;->i:J

    move-object v3, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void

    .line 131
    :cond_1
    :try_start_0
    iget-object v0, p0, Lvw;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 133
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lvw;->b:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " error"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
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

    .line 193
    iget-object v0, p0, Lvw;->l:Laai;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lvw;->l:Laai;

    invoke-virtual {v0, p2}, Laai;->b(Ljava/lang/Object;)V

    :cond_0
    if-nez p2, :cond_1

    .line 198
    iget-wide v0, p0, Lvw;->e:J

    sget-object v2, Lcom/alibaba/fastjson2/u$d;->IgnoreSetNullValue:Lcom/alibaba/fastjson2/u$d;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {p0, p1, p2}, Lvw;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 207
    :cond_2
    iget-object v0, p0, Lvw;->d:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lvw;->c:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    const-class v0, Ljava/util/Map;

    iget-object v1, p0, Lvw;->c:Ljava/lang/Class;

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    const-class v1, Ljava/util/Map;

    if-eq v0, v1, :cond_3

    .line 212
    invoke-static {}, Lcom/alibaba/fastjson2/d;->c()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvw;->a(Lcom/alibaba/fastjson2/u$c;)Lwk;

    move-result-object v0

    .line 213
    check-cast p2, Ljava/util/Map;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson2/u$d;

    invoke-interface {v0, p2, v1}, Lwk;->a(Ljava/util/Map;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    .line 214
    :cond_3
    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 215
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 216
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 217
    iget-object v1, p0, Lvw;->c:Ljava/lang/Class;

    const-class v2, Ljava/time/LocalDate;

    if-ne v1, v2, :cond_5

    .line 218
    iget-object p2, p0, Lvw;->f:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 219
    iget-object p2, p0, Lvw;->f:Ljava/lang/String;

    invoke-static {p2}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object p2

    goto :goto_0

    .line 221
    :cond_4
    invoke-static {v0}, Laay;->c(Ljava/lang/String;)Ljava/time/LocalDate;

    move-result-object p2

    goto :goto_0

    .line 223
    :cond_5
    iget-object v1, p0, Lvw;->c:Ljava/lang/Class;

    const-class v2, Ljava/util/Date;

    if-ne v1, v2, :cond_7

    .line 224
    iget-object p2, p0, Lvw;->f:Ljava/lang/String;

    if-eqz p2, :cond_6

    .line 225
    iget-object p2, p0, Lvw;->f:Ljava/lang/String;

    sget-object v1, Laay;->a:Ljava/time/ZoneId;

    invoke-static {v0, p2, v1}, Laay;->a(Ljava/lang/String;Ljava/lang/String;Ljava/time/ZoneId;)Ljava/util/Date;

    move-result-object p2

    goto :goto_0

    .line 227
    :cond_6
    invoke-static {v0}, Laay;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 232
    :cond_7
    :goto_0
    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 233
    iget-object v0, p0, Lvw;->d:Ljava/lang/reflect/Type;

    invoke-static {p2, v0}, Labo;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    .line 238
    :cond_8
    :goto_1
    iget-wide v0, p0, Lvw;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 239
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lvw;->i:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 244
    :cond_9
    :try_start_0
    iget-object v0, p0, Lvw;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 246
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;S)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;S)V"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lvw;->l:Laai;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lvw;->l:Laai;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Laai;->b(J)V

    .line 89
    :cond_0
    iget-wide v0, p0, Lvw;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 90
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lvw;->i:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putShort(Ljava/lang/Object;JS)V

    return-void

    .line 95
    :cond_1
    :try_start_0
    iget-object v0, p0, Lvw;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 97
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lvw;->l:Laai;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lvw;->l:Laai;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Laai;->b(Ljava/lang/Object;)V

    .line 53
    :cond_0
    iget-wide v0, p0, Lvw;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 54
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v1, p0, Lvw;->i:J

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    return-void

    .line 59
    :cond_1
    :try_start_0
    iget-object v0, p0, Lvw;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 61
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 252
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 253
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 254
    invoke-virtual {p0, p1, p2}, Lvw;->a(Ljava/lang/Object;I)V

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 258
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 259
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 260
    invoke-virtual {p0, p1, v0, v1}, Lvw;->a(Ljava/lang/Object;J)V

    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 264
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 265
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 266
    invoke-virtual {p0, p1, p2}, Lvw;->a(Ljava/lang/Object;F)V

    return-void

    .line 269
    :cond_2
    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 270
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 271
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 272
    invoke-virtual {p0, p1, v0, v1}, Lvw;->a(Ljava/lang/Object;D)V

    return-void

    .line 275
    :cond_3
    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 276
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 277
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->shortValue()S

    move-result p2

    .line 278
    invoke-virtual {p0, p1, p2}, Lvw;->a(Ljava/lang/Object;S)V

    return-void

    .line 281
    :cond_4
    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 282
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_7

    .line 283
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->byteValue()B

    move-result p2

    .line 284
    invoke-virtual {p0, p1, p2}, Lvw;->a(Ljava/lang/Object;B)V

    return-void

    .line 287
    :cond_5
    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 288
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_7

    .line 289
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    .line 290
    invoke-virtual {p0, p1, p2}, Lvw;->a(Ljava/lang/Object;C)V

    return-void

    .line 293
    :cond_6
    iget-object v0, p0, Lvw;->c:Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 294
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    .line 295
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 296
    invoke-virtual {p0, p1, p2}, Lvw;->a(Ljava/lang/Object;Z)V

    return-void

    .line 300
    :cond_7
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvw;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error, type not support "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method
