.class Lacs;
.super Labq;
.source "FieldWriterFloatField.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Labq<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 11

    .line 20
    const-class v7, Ljava/lang/Float;

    const-class v8, Ljava/lang/Float;

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Labq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)V"
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p2}, Lacs;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    if-nez p2, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 77
    iget-object v0, p0, Lacs;->g:Ljava/text/DecimalFormat;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lacs;->g:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/ab;->a(FLjava/text/DecimalFormat;)V

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(F)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "field.get error, "

    if-eqz p1, :cond_1

    .line 31
    :try_start_0
    iget-wide v1, p0, Lacs;->k:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lacs;->c:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    sget-object v1, Labf;->a:Lsun/misc/Unsafe;

    iget-wide v2, p0, Lacs;->k:J

    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lacs;->i:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 38
    :goto_1
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lacs;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 26
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lacs;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)Z"
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p2}, Lacs;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 46
    iget-wide v1, p0, Lacs;->d:J

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson2/ab;->c(J)J

    move-result-wide v1

    .line 47
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_0

    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v1, v3

    cmp-long p2, v1, v5

    if-nez p2, :cond_0

    .line 50
    invoke-virtual {p0, p1}, Lacs;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 51
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 57
    :cond_1
    invoke-virtual {p0, p1}, Lacs;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 59
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 60
    iget-object v1, p0, Lacs;->g:Ljava/text/DecimalFormat;

    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lacs;->g:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, v1}, Lcom/alibaba/fastjson2/ab;->a(FLjava/text/DecimalFormat;)V

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(F)V

    :goto_0
    return v0
.end method
