.class final Lacf;
.super Labq;
.source "FieldWriterCharValFunc.java"


# instance fields
.field final A:Lrf;


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lrf;)V
    .locals 11

    .line 23
    sget-object v7, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

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
    iput-object v1, v0, Lacf;->A:Lrf;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lacf;->A:Lrf;

    invoke-interface {v0, p2}, Lrf;->a(Ljava/lang/Object;)C

    move-result p2

    .line 35
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(C)V

    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 29
    iget-object v0, p0, Lacf;->A:Lrf;

    invoke-interface {v0, p1}, Lrf;->a(Ljava/lang/Object;)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lacf;->A:Lrf;

    invoke-interface {v0, p2}, Lrf;->a(Ljava/lang/Object;)C

    move-result p2

    .line 41
    invoke-virtual {p0, p1}, Lacf;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 42
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(C)V

    const/4 p1, 0x1

    return p1
.end method
