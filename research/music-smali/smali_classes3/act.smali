.class final Lact;
.super Labq;
.source "FieldWriterFloatFunc.java"


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
            "Ljava/lang/Float;",
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
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 23
    const-class v7, Ljava/lang/Float;

    const-class v8, Ljava/lang/Float;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Labq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    move-object/from16 v1, p9

    .line 24
    iput-object v1, v0, Lact;->A:Ljava/util/function/Function;

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

    .line 34
    iget-object v0, p0, Lact;->A:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    if-nez p2, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 39
    iget-object v0, p0, Lact;->g:Ljava/text/DecimalFormat;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lact;->g:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/ab;->a(FLjava/text/DecimalFormat;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(F)V

    :goto_0
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

    .line 29
    iget-object v0, p0, Lact;->A:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    :try_start_0
    iget-object v1, p0, Lact;->A:Ljava/util/function/Function;

    invoke-interface {v1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 60
    iget-wide v2, p0, Lact;->d:J

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/ab;->c(J)J

    move-result-wide v2

    .line 61
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-eqz p2, :cond_0

    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v2, v4

    cmp-long p2, v2, v6

    if-nez p2, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lact;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return v1

    :cond_0
    return v0

    .line 71
    :cond_1
    invoke-virtual {p0, p1}, Lact;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 72
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 73
    iget-object v0, p0, Lact;->g:Ljava/text/DecimalFormat;

    if-eqz v0, :cond_2

    .line 74
    iget-object v0, p0, Lact;->g:Ljava/text/DecimalFormat;

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/ab;->a(FLjava/text/DecimalFormat;)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(F)V

    :goto_0
    return v1

    :catch_0
    move-exception p2

    .line 53
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    .line 56
    :cond_3
    throw p2
.end method

.method public h()Ljava/util/function/Function;
    .locals 1

    .line 83
    iget-object v0, p0, Lact;->A:Ljava/util/function/Function;

    return-object v0
.end method
