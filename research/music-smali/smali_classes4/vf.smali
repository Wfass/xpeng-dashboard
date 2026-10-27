.class final Lvf;
.super Lsu;
.source "FieldReaderInt64ValueFunc.java"


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
.field final w:Ljava/util/function/ObjLongConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ObjLongConsumer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Long;Laai;Ljava/lang/reflect/Method;Ljava/util/function/ObjLongConsumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Long;",
            "Laai;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/ObjLongConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

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
    iput-object v1, v0, Lvf;->w:Ljava/util/function/ObjLongConsumer;

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

    .line 41
    iget-object v0, p0, Lvf;->l:Laai;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lvf;->l:Laai;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Laai;->b(J)V

    .line 45
    :cond_0
    iget-object v0, p0, Lvf;->w:Ljava/util/function/ObjLongConsumer;

    int-to-long v1, p2

    invoke-interface {v0, p1, v1, v2}, Ljava/util/function/ObjLongConsumer;->accept(Ljava/lang/Object;J)V

    return-void
.end method

.method public a(Ljava/lang/Object;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lvf;->l:Laai;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lvf;->l:Laai;

    invoke-virtual {v0, p2, p3}, Laai;->b(J)V

    .line 25
    :cond_0
    iget-object v0, p0, Lvf;->w:Ljava/util/function/ObjLongConsumer;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/function/ObjLongConsumer;->accept(Ljava/lang/Object;J)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-static {p2}, Labo;->f(Ljava/lang/Object;)J

    move-result-wide v0

    .line 32
    iget-object p2, p0, Lvf;->l:Laai;

    if-eqz p2, :cond_0

    .line 33
    iget-object p2, p0, Lvf;->l:Laai;

    invoke-virtual {p2, v0, v1}, Laai;->b(J)V

    .line 36
    :cond_0
    iget-object p2, p0, Lvf;->w:Ljava/util/function/ObjLongConsumer;

    invoke-interface {p2, p1, v0, v1}, Ljava/util/function/ObjLongConsumer;->accept(Ljava/lang/Object;J)V

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 2

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aa()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aa()J

    move-result-wide v0

    .line 52
    iget-object p1, p0, Lvf;->l:Laai;

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lvf;->l:Laai;

    invoke-virtual {p1, v0, v1}, Laai;->b(J)V

    .line 56
    :cond_0
    iget-object p1, p0, Lvf;->w:Ljava/util/function/ObjLongConsumer;

    invoke-interface {p1, p2, v0, v1}, Ljava/util/function/ObjLongConsumer;->accept(Ljava/lang/Object;J)V

    return-void
.end method
