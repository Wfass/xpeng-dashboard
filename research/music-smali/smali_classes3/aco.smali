.class final Laco;
.super Labq;
.source "FieldWriterDoubleValueFunc.java"


# instance fields
.field final A:Ljava/util/function/ToDoubleFunction;


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToDoubleFunction;)V
    .locals 11

    .line 23
    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

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
    iput-object v1, v0, Laco;->A:Ljava/util/function/ToDoubleFunction;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 2

    .line 34
    iget-object v0, p0, Laco;->A:Ljava/util/function/ToDoubleFunction;

    invoke-interface {v0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 35
    iget-object p2, p0, Laco;->g:Ljava/text/DecimalFormat;

    if-eqz p2, :cond_0

    .line 36
    iget-object p2, p0, Laco;->g:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v0, v1, p2}, Lcom/alibaba/fastjson2/ab;->a(DLjava/text/DecimalFormat;)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/ab;->a(D)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 29
    iget-object v0, p0, Laco;->A:Ljava/util/function/ToDoubleFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 2

    .line 46
    :try_start_0
    iget-object v0, p0, Laco;->A:Ljava/util/function/ToDoubleFunction;

    invoke-interface {v0, p2}, Ljava/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    invoke-virtual {p0, p1}, Laco;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 55
    iget-object p2, p0, Laco;->g:Ljava/text/DecimalFormat;

    if-eqz p2, :cond_0

    .line 56
    iget-object p2, p0, Laco;->g:Ljava/text/DecimalFormat;

    invoke-virtual {p1, v0, v1, p2}, Lcom/alibaba/fastjson2/ab;->a(DLjava/text/DecimalFormat;)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/ab;->a(D)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 48
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 51
    :cond_1
    throw p2
.end method
