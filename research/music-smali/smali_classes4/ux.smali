.class final Lux;
.super Lsu;
.source "FieldReaderInt32ValueFunc.java"


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
.field final w:Ljava/util/function/ObjIntConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ObjIntConsumer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Integer;Laai;Ljava/lang/reflect/Method;Ljava/util/function/ObjIntConsumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Integer;",
            "Laai;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/ObjIntConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v12}, Lsu;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    move-object/from16 v1, p6

    .line 16
    iput-object v1, v0, Lux;->w:Ljava/util/function/ObjIntConsumer;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lux;->l:Laai;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lux;->l:Laai;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Laai;->b(J)V

    .line 25
    :cond_0
    iget-object v0, p0, Lux;->w:Ljava/util/function/ObjIntConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lux;->l:Laai;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lux;->l:Laai;

    invoke-virtual {v0, p2, p3}, Laai;->b(J)V

    .line 34
    :cond_0
    iget-object v0, p0, Lux;->w:Ljava/util/function/ObjIntConsumer;

    long-to-int p2, p2

    invoke-interface {v0, p1, p2}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-static {p2}, Labo;->l(Ljava/lang/Object;)I

    move-result p2

    .line 41
    iget-object v0, p0, Lux;->l:Laai;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lux;->l:Laai;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Laai;->b(J)V

    .line 45
    :cond_0
    iget-object v0, p0, Lux;->w:Ljava/util/function/ObjIntConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 0

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->T()I

    move-result p1

    .line 52
    iget-object v0, p0, Lux;->l:Laai;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lux;->l:Laai;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Laai;->b(J)V

    .line 56
    :cond_0
    iget-object v0, p0, Lux;->w:Ljava/util/function/ObjIntConsumer;

    invoke-interface {v0, p2, p1}, Ljava/util/function/ObjIntConsumer;->accept(Ljava/lang/Object;I)V

    return-void
.end method
