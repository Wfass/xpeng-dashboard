.class final Lty;
.super Lsu;
.source "FieldReaderDoubleFunc.java"


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
.field final w:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Double;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Double;",
            "Laai;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/BiConsumer<",
            "TT;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 27
    invoke-direct/range {v0 .. v12}, Lsu;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    move-object/from16 v1, p11

    .line 28
    iput-object v1, v0, Lty;->w:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-static {p2}, Labo;->r(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p2

    .line 35
    iget-object v0, p0, Lty;->l:Laai;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lty;->l:Laai;

    invoke-virtual {v0, p2}, Laai;->b(Ljava/lang/Double;)V

    .line 39
    :cond_0
    iget-object v0, p0, Lty;->w:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->af()Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 46
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->af()Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 48
    iget-wide v1, p0, Lty;->e:J

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson2/u;->a(J)J

    move-result-wide v1

    sget-object p1, Lcom/alibaba/fastjson2/u$d;->NullOnError:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_0

    .line 55
    iget-object v0, p0, Lty;->j:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lty;->l:Laai;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lty;->l:Laai;

    invoke-virtual {v0, p1}, Laai;->b(Ljava/lang/Double;)V

    .line 63
    :cond_1
    iget-object v0, p0, Lty;->w:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p2, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 51
    :cond_2
    throw v0
.end method

.method public e()Ljava/util/function/BiConsumer;
    .locals 1

    .line 73
    iget-object v0, p0, Lty;->w:Ljava/util/function/BiConsumer;

    return-object v0
.end method
