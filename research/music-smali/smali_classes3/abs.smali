.class final Labs;
.super Labq;
.source "FieldWriterBigDecimalFunc.java"


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


# instance fields
.field final A:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/math/BigDecimal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/math/BigDecimal;",
            ">;)V"
        }
    .end annotation

    .line 24
    const-class v7, Ljava/math/BigDecimal;

    const-class v8, Ljava/math/BigDecimal;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Labq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    move-object/from16 v1, p9

    .line 25
    iput-object v1, v0, Labs;->A:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)V"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Labs;->A:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigDecimal;

    .line 36
    iget-wide v0, p0, Labs;->d:J

    iget-object v2, p0, Labs;->g:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Labs;->A:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    :try_start_0
    iget-object v1, p0, Labs;->A:Ljava/util/function/Function;

    invoke-interface {v1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    .line 52
    iget-wide v1, p0, Labs;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v3

    or-long/2addr v1, v3

    .line 53
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return v0

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Labs;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 59
    iget-wide v0, p0, Labs;->d:J

    iget-object v2, p0, Labs;->g:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 45
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 48
    :cond_1
    throw p2
.end method

.method public h()Ljava/util/function/Function;
    .locals 1

    .line 65
    iget-object v0, p0, Labs;->A:Ljava/util/function/Function;

    return-object v0
.end method
