.class final Luh;
.super Lsu;
.source "FieldReaderFloatValueFunc.java"


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
.field final w:Lrc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrc<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Float;Laai;Ljava/lang/reflect/Method;Lrc;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Float;",
            "Laai;",
            "Ljava/lang/reflect/Method;",
            "Lrc<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

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
    iput-object v1, v0, Luh;->w:Lrc;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;F)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Luh;->l:Laai;

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Luh;->l:Laai;

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Laai;->b(D)V

    .line 25
    :cond_0
    iget-object v0, p0, Luh;->w:Lrc;

    invoke-interface {v0, p1, p2}, Lrc;->a(Ljava/lang/Object;F)V

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

    .line 30
    invoke-static {p2}, Labo;->o(Ljava/lang/Object;)F

    move-result p2

    .line 32
    iget-object v0, p0, Luh;->l:Laai;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Luh;->l:Laai;

    float-to-double v1, p2

    invoke-virtual {v0, v1, v2}, Laai;->b(D)V

    .line 36
    :cond_0
    iget-object v0, p0, Luh;->w:Lrc;

    invoke-interface {v0, p1, p2}, Lrc;->a(Ljava/lang/Object;F)V

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ac()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    .line 41
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ac()F

    move-result p1

    .line 43
    iget-object v0, p0, Luh;->l:Laai;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Luh;->l:Laai;

    float-to-double v1, p1

    invoke-virtual {v0, v1, v2}, Laai;->b(D)V

    .line 47
    :cond_0
    iget-object v0, p0, Luh;->w:Lrc;

    invoke-interface {v0, p2, p1}, Lrc;->a(Ljava/lang/Object;F)V

    return-void
.end method
