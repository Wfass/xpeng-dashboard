.class Lacm;
.super Labq;
.source "FieldWriterDoubleMethod.java"


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
.method protected constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 24
    invoke-direct/range {p0 .. p10}, Labq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)V"
        }
    .end annotation

    .line 66
    invoke-virtual {p0, p2}, Lacm;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;

    if-nez p2, :cond_0

    .line 69
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 72
    iget-object p2, p0, Lacm;->g:Ljava/text/DecimalFormat;

    if-eqz p2, :cond_1

    .line 73
    iget-object p2, p0, Lacm;->g:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v0, v1, p2}, Lcom/alibaba/fastjson2/ab;->a(DLjava/text/DecimalFormat;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/ab;->a(D)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 30
    :try_start_0
    iget-object v0, p0, Lacm;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 32
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoke getter method error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lacm;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)Z"
        }
    .end annotation

    .line 40
    :try_start_0
    invoke-virtual {p0, p2}, Lacm;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    invoke-virtual {p0, p1}, Lacm;->a(Lcom/alibaba/fastjson2/ab;)V

    if-nez p2, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 54
    iget-object p2, p0, Lacm;->g:Ljava/text/DecimalFormat;

    if-eqz p2, :cond_1

    .line 55
    iget-object p2, p0, Lacm;->g:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v0, v1, p2}, Lcom/alibaba/fastjson2/ab;->a(DLjava/text/DecimalFormat;)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/ab;->a(D)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 42
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return p1

    .line 45
    :cond_2
    throw p2
.end method
