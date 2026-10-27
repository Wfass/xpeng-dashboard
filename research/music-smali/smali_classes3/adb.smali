.class final Ladb;
.super Lacx;
.source "FieldWriterInt16ValFunc.java"


# instance fields
.field final A:Lrh;


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lrh;)V
    .locals 10

    .line 23
    sget-object v7, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lacx;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    move-object/from16 v1, p9

    .line 24
    iput-object v1, v0, Ladb;->A:Lrh;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 1

    .line 29
    iget-object v0, p0, Ladb;->A:Lrh;

    invoke-interface {v0, p2}, Lrh;->a(Ljava/lang/Object;)S

    move-result p2

    .line 30
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(I)V

    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 35
    iget-object v0, p0, Ladb;->A:Lrh;

    invoke-interface {v0, p1}, Lrh;->a(Ljava/lang/Object;)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 1

    .line 42
    :try_start_0
    iget-object v0, p0, Ladb;->A:Lrh;

    invoke-interface {v0, p2}, Lrh;->a(Ljava/lang/Object;)S

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    invoke-virtual {p0, p1, p2}, Ladb;->a(Lcom/alibaba/fastjson2/ab;S)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 47
    :cond_0
    throw p2
.end method
