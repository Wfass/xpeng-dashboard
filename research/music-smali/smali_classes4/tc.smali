.class public abstract Ltc;
.super Lsu;
.source "FieldReaderAtomicReference.java"


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
.field final w:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V
    .locals 14

    move-object/from16 v13, p2

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    .line 23
    invoke-direct/range {v0 .. v12}, Lsu;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;)V

    .line 26
    instance-of v0, v13, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 27
    move-object v0, v13

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 28
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 29
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 30
    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    move-object v0, p0

    .line 33
    iput-object v1, v0, Ltc;->w:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 1

    .line 48
    iget-object v0, p0, Ltc;->w:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Ltc;->w:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p2, p1}, Ltc;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
