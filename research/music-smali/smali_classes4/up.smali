.class final Lup;
.super Lsu;
.source "FieldReaderInt16ValueFunc.java"


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
.field final w:Lrd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrd<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Short;Laai;Ljava/lang/reflect/Method;Lrd;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Short;",
            "Laai;",
            "Ljava/lang/reflect/Method;",
            "Lrd<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v12}, Lsu;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    move-object/from16 v1, p10

    .line 27
    iput-object v1, v0, Lup;->w:Lrd;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-static {p2}, Labo;->k(Ljava/lang/Object;)S

    move-result p2

    .line 43
    iget-object v0, p0, Lup;->l:Laai;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lup;->l:Laai;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Laai;->b(J)V

    .line 47
    :cond_0
    iget-object v0, p0, Lup;->w:Lrd;

    invoke-interface {v0, p1, p2}, Lrd;->a(Ljava/lang/Object;S)V

    return-void
.end method

.method public a(Ljava/lang/Object;S)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;S)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lup;->l:Laai;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lup;->l:Laai;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Laai;->b(J)V

    .line 36
    :cond_0
    iget-object v0, p0, Lup;->w:Lrd;

    invoke-interface {v0, p1, p2}, Lrd;->a(Ljava/lang/Object;S)V

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 0

    .line 63
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result p1

    int-to-short p1, p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result p1

    int-to-short p1, p1

    .line 54
    iget-object v0, p0, Lup;->l:Laai;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lup;->l:Laai;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Laai;->b(J)V

    .line 58
    :cond_0
    iget-object v0, p0, Lup;->w:Lrd;

    invoke-interface {v0, p2, p1}, Lrd;->a(Ljava/lang/Object;S)V

    return-void
.end method
