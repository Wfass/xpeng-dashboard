.class final Lvx;
.super Lvv;
.source "FieldReaderObjectFunc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lvv<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/util/function/BiConsumer;Lwk;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;IJ",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "Ljava/lang/Object;",
            "Laai;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/BiConsumer<",
            "TT;TV;>;",
            "Lwk;",
            ")V"
        }
    .end annotation

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v13, p12

    .line 27
    invoke-direct/range {v0 .. v13}, Lvv;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    move-object/from16 v1, p13

    .line 28
    iput-object v1, v0, Lvx;->y:Lwk;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lvx;->d:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_0

    .line 34
    invoke-static {p2}, Labo;->p(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lvx;->d:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_1

    .line 36
    invoke-static {p2}, Labo;->r(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p2

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 40
    iget-object v0, p0, Lvx;->c:Ljava/lang/Class;

    const-class v1, [Ljava/lang/StackTraceElement;

    if-ne v0, v1, :cond_2

    return-void

    .line 45
    :cond_2
    iget-object v0, p0, Lvx;->l:Laai;

    if-eqz v0, :cond_3

    .line 46
    iget-object v0, p0, Lvx;->l:Laai;

    invoke-virtual {v0, p2}, Laai;->b(Ljava/lang/Object;)V

    .line 49
    :cond_3
    iget-object v0, p0, Lvx;->z:Ljava/util/function/BiConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
