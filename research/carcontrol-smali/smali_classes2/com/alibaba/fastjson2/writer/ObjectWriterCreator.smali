.class public Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;
.super Ljava/lang/Object;
.source "ObjectWriterCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

.field static final lambdaMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final jitErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected volatile jitErrorLast:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 31
    new-instance v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->lambdaMapping:Ljava/util/Map;

    .line 36
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/util/function/Predicate;

    const-string/jumbo v5, "test"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v4, Lcom/alibaba/fastjson2/function/ToCharFunction;

    const-string v5, "applyAsChar"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v4, Lcom/alibaba/fastjson2/function/ToByteFunction;

    const-string v5, "applyAsByte"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v4, Lcom/alibaba/fastjson2/function/ToShortFunction;

    const-string v5, "applyAsShort"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/util/function/ToIntFunction;

    const-string v5, "applyAsInt"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/util/function/ToLongFunction;

    const-string v5, "applyAsLong"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Lcom/alibaba/fastjson2/function/ToFloatFunction;

    const-string v5, "applyAsFloat"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v2, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/util/function/ToDoubleFunction;

    const-string v5, "applyAsDouble"

    invoke-direct {v2, v3, v4, v5}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->jitErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected static configSerializeFilters(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;)V
    .locals 4

    .line 625
    iget-object p0, p0, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializeFilters:[Ljava/lang/Class;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 626
    const-class v3, Lcom/alibaba/fastjson2/filter/Filter;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 631
    :cond_0
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/filter/Filter;

    .line 632
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;->setFilter(Lcom/alibaba/fastjson2/filter/Filter;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static getFieldName(Ljava/lang/Class;Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;ZLcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4

    .line 583
    iget-object v0, p4, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p4, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 619
    :cond_0
    iget-object p0, p4, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    goto/16 :goto_3

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 585
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 587
    :cond_2
    iget-object p2, p2, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    invoke-static {p5, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 590
    iget-wide p3, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v0, 0x40

    and-long/2addr p3, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p3, v0

    if-eqz p1, :cond_3

    .line 591
    invoke-static {p0, p5}, Lcom/alibaba/fastjson2/util/BeanUtils;->getField(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Field;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 592
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 595
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p3, 0x0

    if-lez p1, :cond_4

    .line 597
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result p4

    goto :goto_1

    :cond_4
    move p4, p3

    :goto_1
    const/16 p5, 0x61

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    if-lt p4, p5, :cond_5

    const/16 v1, 0x7a

    if-le p4, v1, :cond_6

    :cond_5
    const/4 v1, 0x2

    if-le p1, v1, :cond_9

    const/16 v1, 0x41

    if-lt p4, v1, :cond_9

    const/16 v2, 0x5a

    if-gt p4, v2, :cond_9

    .line 601
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v1, :cond_9

    if-gt v3, v2, :cond_9

    .line 603
    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    if-lt p4, p5, :cond_7

    .line 605
    aget-char p4, v1, p3

    add-int/lit8 p4, p4, -0x20

    int-to-char p4, p4

    aput-char p4, v1, p3

    goto :goto_2

    .line 607
    :cond_7
    aget-char p4, v1, p3

    add-int/lit8 p4, p4, 0x20

    int-to-char p4, p4

    aput-char p4, v1, p3

    .line 609
    :goto_2
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, v1}, Ljava/lang/String;-><init>([C)V

    .line 610
    invoke-static {p0, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_9

    if-eq p1, v0, :cond_8

    .line 612
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 613
    :cond_8
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_9
    move-object p0, p2

    :goto_3
    return-object p0
.end method

.method static synthetic lambda$createObjectWriter$3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v6, p7

    move-object/from16 v11, p9

    const/4 v1, 0x1

    .line 856
    invoke-virtual {v11, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 857
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    .line 858
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v10

    if-nez p10, :cond_0

    if-eqz v0, :cond_0

    move-object/from16 v13, p0

    .line 861
    invoke-virtual {v13, v0, v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->getInitWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v1

    move-object v14, v1

    goto :goto_0

    :cond_0
    move-object/from16 v13, p0

    move-object/from16 v14, p10

    :goto_0
    if-eqz v14, :cond_2

    .line 865
    new-instance v15, Lcom/alibaba/fastjson2/writer/FieldWriterObjectMethod;

    const/4 v9, 0x0

    move-object v0, v15

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v10

    move-object v8, v12

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 866
    iput-object v12, v15, Lcom/alibaba/fastjson2/writer/FieldWriterObjectMethod;->initValueClass:Ljava/lang/Class;

    .line 867
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$VoidObjectWriter;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$VoidObjectWriter;

    if-eq v14, v0, :cond_1

    .line 868
    iput-object v14, v15, Lcom/alibaba/fastjson2/writer/FieldWriterObjectMethod;->initObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :cond_1
    return-object v15

    :cond_2
    const/4 v1, 0x0

    if-nez p3, :cond_3

    .line 874
    invoke-static {v11, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p2

    goto :goto_1

    :cond_3
    move-object/from16 v3, p2

    move-object/from16 v2, p3

    .line 877
    :goto_1
    invoke-static {v3, v11}, Lcom/alibaba/fastjson2/util/BeanUtils;->getField(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 879
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v12, v3, :cond_20

    const-class v3, Ljava/lang/Boolean;

    if-ne v12, v3, :cond_4

    goto/16 :goto_e

    .line 883
    :cond_4
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v12, v3, :cond_1f

    const-class v3, Ljava/lang/Integer;

    if-ne v12, v3, :cond_5

    goto/16 :goto_d

    .line 887
    :cond_5
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v12, v3, :cond_1e

    const-class v3, Ljava/lang/Float;

    if-ne v12, v3, :cond_6

    goto/16 :goto_c

    .line 891
    :cond_6
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v12, v3, :cond_1d

    const-class v3, Ljava/lang/Double;

    if-ne v12, v3, :cond_7

    goto/16 :goto_b

    .line 895
    :cond_7
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v12, v3, :cond_1a

    const-class v3, Ljava/lang/Long;

    if-ne v12, v3, :cond_8

    goto/16 :goto_9

    .line 903
    :cond_8
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v12, v3, :cond_19

    const-class v3, Ljava/lang/Short;

    if-ne v12, v3, :cond_9

    goto/16 :goto_8

    .line 907
    :cond_9
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v12, v3, :cond_18

    const-class v3, Ljava/lang/Byte;

    if-ne v12, v3, :cond_a

    goto/16 :goto_7

    .line 911
    :cond_a
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v12, v3, :cond_17

    const-class v3, Ljava/lang/Character;

    if-ne v12, v3, :cond_b

    goto/16 :goto_6

    .line 915
    :cond_b
    const-class v3, Ljava/math/BigDecimal;

    if-ne v12, v3, :cond_c

    .line 916
    new-instance v9, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalMethod;

    move-object v0, v9

    move-object v1, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v14

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v9

    .line 919
    :cond_c
    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 920
    invoke-static {v12, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumValueField(Ljava/lang/Class;Lcom/alibaba/fastjson2/modules/ObjectCodecProvider;)Ljava/lang/reflect/Member;

    move-result-object v0

    if-nez v0, :cond_d

    .line 921
    invoke-static {v12}, Lcom/alibaba/fastjson2/util/BeanUtils;->isWriteEnumAsJavaBean(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 923
    invoke-static {v12}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumAnnotationNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    .line 925
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterEnumMethod;

    move-object v0, v10

    move-object v1, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v12

    move-object v8, v14

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterEnumMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v10

    .line 929
    :cond_d
    const-class v0, Ljava/util/Date;

    if-ne v12, v0, :cond_10

    if-eqz v6, :cond_f

    .line 931
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    move-object v5, v1

    goto :goto_2

    :cond_e
    move-object v5, v0

    goto :goto_2

    :cond_f
    move-object v5, v6

    .line 938
    :goto_2
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterDateMethod;

    move-object v0, v10

    move-object v1, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v6, p8

    move-object v7, v12

    move-object v8, v14

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterDateMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v10

    .line 941
    :cond_10
    const-class v0, Ljava/lang/String;

    if-ne v12, v0, :cond_11

    .line 942
    new-instance v9, Lcom/alibaba/fastjson2/writer/FieldWriterStringMethod;

    move-object v0, v9

    move-object v1, v2

    move/from16 v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-wide/from16 v5, p5

    move-object v7, v14

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterStringMethod;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v9

    .line 945
    :cond_11
    const-class v0, Ljava/util/List;

    if-eq v12, v0, :cond_15

    const-class v0, Ljava/lang/Iterable;

    if-ne v12, v0, :cond_12

    goto :goto_4

    .line 955
    :cond_12
    const-class v0, [Ljava/lang/Float;

    if-eq v12, v0, :cond_14

    const-class v0, [Ljava/lang/Double;

    if-eq v12, v0, :cond_14

    const-class v0, [Ljava/math/BigDecimal;

    if-ne v12, v0, :cond_13

    goto :goto_3

    .line 959
    :cond_13
    new-instance v14, Lcom/alibaba/fastjson2/writer/FieldWriterObjectMethod;

    const/4 v9, 0x0

    move-object v0, v14

    move-object v1, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v10

    move-object v8, v12

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v14

    .line 956
    :cond_14
    :goto_3
    new-instance v15, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;

    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    move-object v0, v15

    move-object v1, v2

    move-object v2, v3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v8, v10

    move-object v9, v12

    move-object v10, v14

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v15

    .line 947
    :cond_15
    :goto_4
    instance-of v0, v10, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_16

    .line 948
    move-object v0, v10

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_5

    .line 950
    :cond_16
    const-class v0, Ljava/lang/Object;

    :goto_5
    move-object v3, v0

    .line 952
    new-instance v14, Lcom/alibaba/fastjson2/writer/FieldWriterListMethod;

    const/4 v8, 0x0

    move-object v0, v14

    move-object v1, v2

    move-object v2, v3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v9, p9

    move-object v11, v12

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterListMethod;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    return-object v14

    .line 912
    :cond_17
    :goto_6
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterCharMethod;

    move-object v0, v10

    move-object v1, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v14

    move-object/from16 v8, p9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterCharMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v10

    .line 908
    :cond_18
    :goto_7
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterInt8Method;

    move-object v0, v10

    move-object v1, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v14

    move-object/from16 v8, p9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8Method;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v10

    .line 904
    :cond_19
    :goto_8
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterInt16Method;

    move-object v0, v10

    move-object v1, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v14

    move-object/from16 v8, p9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt16Method;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v10

    :cond_1a
    :goto_9
    if-eqz v6, :cond_1c

    .line 896
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "string"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_a

    .line 900
    :cond_1b
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterMillisMethod;

    move-object v0, v10

    move-object v1, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v12

    move-object v8, v14

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterMillisMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v10

    .line 897
    :cond_1c
    :goto_a
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterInt64Method;

    move-object v0, v10

    move-object v1, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v14

    move-object/from16 v8, p9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt64Method;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v10

    .line 892
    :cond_1d
    :goto_b
    new-instance v15, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleMethod;

    move-object v0, v15

    move-object v1, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v12

    move-object v8, v12

    move-object v9, v14

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v15

    .line 888
    :cond_1e
    :goto_c
    new-instance v15, Lcom/alibaba/fastjson2/writer/FieldWriterFloatMethod;

    move-object v0, v15

    move-object v1, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v12

    move-object v8, v12

    move-object v9, v14

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterFloatMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v15

    .line 884
    :cond_1f
    :goto_d
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterInt32Method;

    move-object v0, v10

    move-object v1, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v14

    move-object/from16 v8, p9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32Method;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v10

    .line 880
    :cond_20
    :goto_e
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterBoolMethod;

    move-object v0, v10

    move-object v1, v2

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v14

    move-object/from16 v8, p9

    move-object v9, v12

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolMethod;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    return-object v10
.end method

.method public createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/Function<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    .line 1061
    const-class v0, Ljava/lang/Byte;

    if-ne v12, v0, :cond_0

    .line 1062
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt8Func;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8Func;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1065
    :cond_0
    const-class v0, Ljava/lang/Short;

    if-ne v12, v0, :cond_1

    .line 1066
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt16Func;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterInt16Func;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1069
    :cond_1
    const-class v0, Ljava/lang/Integer;

    if-ne v12, v0, :cond_2

    .line 1070
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt32Func;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32Func;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1073
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-ne v12, v0, :cond_3

    .line 1074
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterInt64Func;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterInt64Func;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1077
    :cond_3
    const-class v0, Ljava/math/BigInteger;

    if-ne v12, v0, :cond_4

    .line 1078
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterBigIntFunc;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterBigIntFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1081
    :cond_4
    const-class v0, Ljava/math/BigDecimal;

    if-ne v12, v0, :cond_5

    .line 1082
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalFunc;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1085
    :cond_5
    const-class v0, Ljava/lang/String;

    if-ne v12, v0, :cond_6

    .line 1086
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterStringFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1089
    :cond_6
    const-class v0, Ljava/util/Date;

    if-ne v12, v0, :cond_7

    .line 1090
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterDateFunc;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterDateFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1093
    :cond_7
    const-class v0, Ljava/time/LocalDate;

    if-ne v12, v0, :cond_8

    .line 1094
    new-instance v13, Lcom/alibaba/fastjson2/writer/FieldWriterLocalDateFunc;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterLocalDateFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v13

    .line 1097
    :cond_8
    const-class v0, Ljava/time/OffsetDateTime;

    if-ne v12, v0, :cond_9

    .line 1098
    new-instance v13, Lcom/alibaba/fastjson2/writer/FieldWriterOffsetDateTimeFunc;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterOffsetDateTimeFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v13

    .line 1101
    :cond_9
    const-class v0, Ljava/util/UUID;

    if-ne v12, v0, :cond_a

    .line 1102
    new-instance v13, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterUUIDFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v13

    .line 1105
    :cond_a
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1106
    new-instance v0, Lcom/alibaba/fastjson2/writer/FieldWriterCalendarFunc;

    move-object v1, v0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterCalendarFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v0

    .line 1109
    :cond_b
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1110
    new-instance v0, Lcom/alibaba/fastjson2/codec/BeanInfo;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    if-nez p1, :cond_c

    .line 1112
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v2

    goto :goto_0

    :cond_c
    move-object v2, p1

    .line 1114
    :goto_0
    invoke-virtual {v2, v0, v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 1116
    iget-boolean v0, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    if-nez v0, :cond_d

    .line 1118
    iget-object v3, v2, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v12}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v3, :cond_d

    .line 1119
    instance-of v3, v3, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;

    if-nez v3, :cond_d

    move v0, v1

    :cond_d
    if-nez v0, :cond_e

    .line 1124
    invoke-static {v12, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumValueField(Ljava/lang/Class;Lcom/alibaba/fastjson2/modules/ObjectCodecProvider;)Ljava/lang/reflect/Member;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1125
    invoke-static/range {p10 .. p10}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumAnnotationNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1127
    new-instance v13, Lcom/alibaba/fastjson2/writer/FieldWriterEnumFunc;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterEnumFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v13

    .line 1132
    :cond_e
    instance-of v0, v11, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_11

    .line 1133
    move-object v0, v11

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 1134
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 1135
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1137
    const-class v3, Ljava/util/List;

    if-eq v2, v3, :cond_f

    const-class v3, Ljava/util/ArrayList;

    if-ne v2, v3, :cond_11

    .line 1138
    :cond_f
    array-length v2, v0

    if-ne v2, v1, :cond_11

    const/4 v1, 0x0

    .line 1139
    aget-object v7, v0, v1

    .line 1140
    const-class v0, Ljava/lang/String;

    if-ne v7, v0, :cond_10

    .line 1141
    new-instance v13, Lcom/alibaba/fastjson2/writer/FieldWriterListStrFunc;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterListStrFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    return-object v13

    .line 1143
    :cond_10
    new-instance v13, Lcom/alibaba/fastjson2/writer/FieldWriterListFunc;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p13

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/alibaba/fastjson2/writer/FieldWriterListFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;Ljava/lang/reflect/Type;Ljava/lang/Class;)V

    return-object v13

    .line 1148
    :cond_11
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1149
    new-instance v13, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFuncFinal;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFuncFinal;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v13

    .line 1152
    :cond_12
    new-instance v13, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFunc;

    move-object v0, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    invoke-direct/range {v0 .. v11}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v13
.end method

.method public createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/Function<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    const/4 v11, 0x0

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

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 1044
    invoke-virtual/range {v0 .. v13}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    return-object v0
.end method

.method public createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    move-object v1, p1

    move-object/from16 v7, p6

    move-object/from16 v11, p9

    .line 691
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 694
    const-class v2, Ljava/lang/Throwable;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 695
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "stackTrace"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    const-class v0, Ljava/lang/Throwable;

    const-string v2, "getStackTrace"

    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v3

    :goto_0
    if-eqz v9, :cond_1

    .line 701
    const-class v2, Ljava/lang/Throwable;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    return-object v0

    .line 704
    :cond_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    .line 705
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    if-eqz v11, :cond_3

    .line 724
    new-instance v13, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    const/4 v10, 0x0

    move-object v0, v13

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, v8

    move-object v8, v12

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 725
    iput-object v12, v13, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->initValueClass:Ljava/lang/Class;

    .line 726
    sget-object v0, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$VoidObjectWriter;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$VoidObjectWriter;

    if-eq v11, v0, :cond_2

    .line 727
    iput-object v11, v13, Lcom/alibaba/fastjson2/writer/FieldWriterObject;->initObjectWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :cond_2
    return-object v13

    .line 732
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_4

    .line 733
    new-instance v9, Lcom/alibaba/fastjson2/writer/FieldWriterBoolValField;

    move-object v0, v9

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolValField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;)V

    return-object v9

    .line 736
    :cond_4
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_5

    .line 737
    new-instance v8, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValField;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 740
    :cond_5
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_6

    .line 741
    new-instance v8, Lcom/alibaba/fastjson2/writer/FieldWriterInt16ValField;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterInt16ValField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 744
    :cond_6
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_7

    .line 745
    new-instance v8, Lcom/alibaba/fastjson2/writer/FieldWriterInt32Val;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32Val;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 748
    :cond_7
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_a

    if-eqz v7, :cond_9

    .line 749
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "string"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 752
    :cond_8
    new-instance v8, Lcom/alibaba/fastjson2/writer/FieldWriterMillisField;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterMillisField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 750
    :cond_9
    :goto_1
    new-instance v8, Lcom/alibaba/fastjson2/writer/FieldWriterInt64ValField;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterInt64ValField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 755
    :cond_a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_b

    .line 756
    new-instance v8, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValField;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 759
    :cond_b
    const-class v0, Ljava/lang/Float;

    if-ne v12, v0, :cond_c

    .line 760
    new-instance v8, Lcom/alibaba/fastjson2/writer/FieldWriterFloatField;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterFloatField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 763
    :cond_c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_d

    .line 764
    new-instance v6, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;

    move-object v0, v6

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValField;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v6

    .line 767
    :cond_d
    const-class v0, Ljava/lang/Double;

    if-ne v12, v0, :cond_e

    .line 768
    new-instance v8, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 771
    :cond_e
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v12, v0, :cond_f

    .line 772
    new-instance v8, Lcom/alibaba/fastjson2/writer/FieldWriterCharValField;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterCharValField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 775
    :cond_f
    const-class v0, Ljava/math/BigInteger;

    if-ne v12, v0, :cond_10

    .line 776
    new-instance v8, Lcom/alibaba/fastjson2/writer/FieldWriterBigIntField;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterBigIntField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 779
    :cond_10
    const-class v0, Ljava/math/BigDecimal;

    if-ne v12, v0, :cond_11

    .line 780
    new-instance v8, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalField;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterBigDecimalField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 783
    :cond_11
    const-class v0, Ljava/util/Date;

    if-ne v12, v0, :cond_12

    .line 784
    new-instance v8, Lcom/alibaba/fastjson2/writer/FieldWriterDateField;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterDateField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 787
    :cond_12
    const-class v0, Ljava/lang/String;

    if-ne v12, v0, :cond_13

    .line 788
    new-instance v8, Lcom/alibaba/fastjson2/writer/FieldWriterStringField;

    move-object v0, v8

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/FieldWriterStringField;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V

    return-object v8

    .line 791
    :cond_13
    invoke-virtual {v12}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 792
    new-instance v0, Lcom/alibaba/fastjson2/codec/BeanInfo;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    .line 793
    invoke-virtual {p1, v0, v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 795
    iget-boolean v0, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    if-nez v0, :cond_14

    .line 797
    iget-object v2, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v12}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    if-eqz v2, :cond_14

    .line 798
    instance-of v2, v2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;

    if-nez v2, :cond_14

    const/4 v0, 0x1

    .line 803
    :cond_14
    invoke-static {v12, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumValueField(Ljava/lang/Class;Lcom/alibaba/fastjson2/modules/ObjectCodecProvider;)Ljava/lang/reflect/Member;

    move-result-object v1

    if-nez v1, :cond_15

    if-nez v0, :cond_15

    .line 805
    invoke-static {v12}, Lcom/alibaba/fastjson2/util/BeanUtils;->getEnumAnnotationNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_15

    .line 807
    new-instance v11, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;

    const/4 v10, 0x0

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, v8

    move-object v8, v12

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterEnum;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v11

    .line 812
    :cond_15
    const-class v0, Ljava/util/List;

    if-eq v12, v0, :cond_18

    const-class v0, Ljava/util/ArrayList;

    if-ne v12, v0, :cond_16

    goto :goto_2

    .line 820
    :cond_16
    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_17

    .line 821
    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8

    .line 822
    new-instance v11, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;

    move-object v0, v11

    move-object/from16 v1, p2

    move-object v2, v8

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v12

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterObjectArrayField;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    return-object v11

    .line 825
    :cond_17
    new-instance v11, Lcom/alibaba/fastjson2/writer/FieldWriterObject;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v8

    const/4 v10, 0x0

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object v7, v8

    move-object v8, v12

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterObject;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-object v11

    .line 814
    :cond_18
    :goto_2
    instance-of v0, v8, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_19

    .line 815
    move-object v0, v8

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    move-object v2, v0

    goto :goto_3

    :cond_19
    move-object v2, v3

    .line 817
    :goto_3
    new-instance v11, Lcom/alibaba/fastjson2/writer/FieldWriterListField;

    move-object v0, v11

    move-object/from16 v1, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v9, v12

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/FieldWriterListField;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    return-object v11
.end method

.method public createFieldWriter(Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    .line 842
    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    .line 832
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public createFieldWriter(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    .line 678
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    .line 666
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Ljava/util/function/Function<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v3, p1

    move-wide v5, p2

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    .line 1028
    invoke-virtual/range {v0 .. v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToByteFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToByteFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 979
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValFunc;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToByteFunction;)V

    return-object v10
.end method

.method public createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToFloatFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToFloatFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 983
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToFloatFunction;)V

    return-object v10
.end method

.method public createFieldWriter(Ljava/lang/String;Lcom/alibaba/fastjson2/function/ToShortFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson2/function/ToShortFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 975
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterInt16ValFunc;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt16ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToShortFunction;)V

    return-object v10
.end method

.method public createFieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/Function<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    .line 1009
    invoke-virtual/range {v0 .. v13}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/String;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "Ljava/util/function/Function<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v9, p2

    move-object v10, p2

    move-object/from16 v12, p3

    .line 999
    invoke-virtual/range {v0 .. v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    .line 656
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v6, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object p1

    return-object p1
.end method

.method public createFieldWriter(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/ToIntFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 971
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToIntFunction;)V

    return-object v10
.end method

.method public createFieldWriter(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            "Ljava/util/function/Function<",
            "TT;TV;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v12, p4

    .line 1018
    invoke-virtual/range {v0 .. v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    return-object v0
.end method

.method public createFieldWriter(Ljava/lang/String;Ljava/util/function/Predicate;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 991
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterBoolValFunc;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Predicate;)V

    return-object v10
.end method

.method public createFieldWriter(Ljava/lang/String;Ljava/util/function/ToDoubleFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/ToDoubleFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 987
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValueFunc;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValueFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToDoubleFunction;)V

    return-object v10
.end method

.method public createFieldWriter(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/ToIntFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 967
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToIntFunction;)V

    return-object v10
.end method

.method public createFieldWriter(Ljava/lang/String;Ljava/util/function/ToLongFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/ToLongFunction<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;"
        }
    .end annotation

    .line 963
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterInt64ValFunc;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt64ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToLongFunction;)V

    return-object v10
.end method

.method createFieldWriterLambda(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;",
            ")",
            "Lcom/alibaba/fastjson2/writer/FieldWriter<",
            "TT;>;"
        }
    .end annotation

    move-object v14, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v7, p7

    move-object/from16 v12, p9

    .line 1257
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    .line 1258
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v9

    if-nez p10, :cond_0

    if-eqz v1, :cond_0

    .line 1261
    invoke-virtual {p0, v1, v10}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->getInitWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p10

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_1

    return-object v3

    .line 1268
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x24

    .line 1269
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const-string v4, "$$"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v3

    .line 1273
    :cond_2
    invoke-virtual {p0, v2, v10, v12}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->lambdaGetter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    .line 1275
    invoke-static {v2, v12}, Lcom/alibaba/fastjson2/util/BeanUtils;->getField(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 1277
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_3

    .line 1278
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;

    const/4 v8, 0x0

    move-object v9, v0

    check-cast v9, Ljava/util/function/ToIntFunction;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt32ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToIntFunction;)V

    return-object v10

    .line 1281
    :cond_3
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_6

    if-eqz v7, :cond_5

    .line 1282
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "string"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    .line 1286
    :cond_4
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterMillisFunc;

    move-object v9, v0

    check-cast v9, Ljava/util/function/ToLongFunction;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterMillisFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToLongFunction;)V

    return-object v10

    .line 1283
    :cond_5
    :goto_1
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterInt64ValFunc;

    move-object v9, v0

    check-cast v9, Ljava/util/function/ToLongFunction;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt64ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToLongFunction;)V

    return-object v10

    .line 1289
    :cond_6
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_7

    .line 1290
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterBoolValFunc;

    move-object v9, v0

    check-cast v9, Ljava/util/function/Predicate;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterBoolValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Predicate;)V

    return-object v10

    .line 1293
    :cond_7
    const-class v3, Ljava/lang/Boolean;

    if-ne v10, v3, :cond_8

    .line 1294
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterBooleanFunc;

    move-object v9, v0

    check-cast v9, Ljava/util/function/Function;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterBooleanFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v10

    .line 1297
    :cond_8
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_9

    .line 1298
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterInt16ValFunc;

    move-object v9, v0

    check-cast v9, Lcom/alibaba/fastjson2/function/ToShortFunction;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt16ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToShortFunction;)V

    return-object v10

    .line 1301
    :cond_9
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_a

    .line 1302
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValFunc;

    move-object v9, v0

    check-cast v9, Lcom/alibaba/fastjson2/function/ToByteFunction;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterInt8ValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToByteFunction;)V

    return-object v10

    .line 1305
    :cond_a
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_b

    .line 1306
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;

    move-object v9, v0

    check-cast v9, Lcom/alibaba/fastjson2/function/ToFloatFunction;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterFloatValueFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToFloatFunction;)V

    return-object v10

    .line 1309
    :cond_b
    const-class v3, Ljava/lang/Float;

    if-ne v10, v3, :cond_c

    .line 1310
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterFloatFunc;

    move-object v9, v0

    check-cast v9, Ljava/util/function/Function;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterFloatFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v10

    .line 1313
    :cond_c
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_d

    .line 1314
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValueFunc;

    move-object v9, v0

    check-cast v9, Ljava/util/function/ToDoubleFunction;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleValueFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/ToDoubleFunction;)V

    return-object v10

    .line 1317
    :cond_d
    const-class v3, Ljava/lang/Double;

    if-ne v10, v3, :cond_e

    .line 1318
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleFunc;

    move-object v9, v0

    check-cast v9, Ljava/util/function/Function;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterDoubleFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V

    return-object v10

    .line 1321
    :cond_e
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v10, v3, :cond_f

    .line 1322
    new-instance v10, Lcom/alibaba/fastjson2/writer/FieldWriterCharValFunc;

    move-object v9, v0

    check-cast v9, Lcom/alibaba/fastjson2/function/ToCharFunction;

    move-object v0, v10

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, v11

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/alibaba/fastjson2/writer/FieldWriterCharValFunc;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/function/ToCharFunction;)V

    return-object v10

    .line 1325
    :cond_f
    move-object v13, v0

    check-cast v13, Ljava/util/function/Function;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v12, p9

    .line 1326
    invoke-virtual/range {v0 .. v13}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    return-object v0
.end method

.method public createObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 3

    .line 75
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 72
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public createObjectWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 22

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p4

    .line 307
    new-instance v12, Lcom/alibaba/fastjson2/codec/BeanInfo;

    invoke-direct {v12}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    .line 308
    iget-wide v1, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    const-wide/high16 v3, 0x40000000000000L

    or-long/2addr v1, v3

    iput-wide v1, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    .line 310
    invoke-virtual {v10, v12, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    .line 312
    iget-object v1, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializer:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-class v1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    iget-object v2, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializer:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    :try_start_0
    iget-object v0, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializer:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/ObjectWriter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 316
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "create serializer error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 320
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->isRecord(Ljava/lang/Class;)Z

    move-result v13

    .line 322
    iget-wide v1, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    .line 323
    iget-object v3, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 324
    sget-object v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    not-long v3, v3

    and-long/2addr v1, v3

    :cond_1
    or-long v14, p2, v1

    .line 328
    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->FieldBased:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v1, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v1, v14

    const-wide/16 v16, 0x0

    cmp-long v1, v1, v16

    const/16 v18, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    move/from16 v1, v18

    goto :goto_1

    :cond_2
    move v1, v9

    :goto_1
    if-eqz v1, :cond_4

    if-nez v13, :cond_3

    .line 330
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move/from16 v19, v9

    goto :goto_2

    :cond_4
    move/from16 v19, v1

    .line 335
    :goto_2
    new-instance v20, Lcom/alibaba/fastjson2/codec/FieldInfo;

    invoke-direct/range {v20 .. v20}, Lcom/alibaba/fastjson2/codec/FieldInfo;-><init>()V

    if-eqz v19, :cond_6

    .line 338
    new-instance v13, Ljava/util/TreeMap;

    invoke-direct {v13}, Ljava/util/TreeMap;-><init>()V

    .line 339
    new-instance v8, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreator$jj90bl38ykcBFvlPhqLOEMqNOYU;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    move-object/from16 v4, p1

    move-wide v5, v14

    move-object/from16 v7, p4

    move-object v10, v8

    move-object v8, v12

    move v14, v9

    move-object v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreator$jj90bl38ykcBFvlPhqLOEMqNOYU;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/Map;)V

    invoke-static {v0, v10}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFields(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_5
    :goto_3
    move-object v8, v1

    goto/16 :goto_5

    .line 349
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 350
    iget-object v2, v10, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->modules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson2/modules/ObjectWriterModule;

    .line 351
    invoke-interface {v3, v11, v0, v1}, Lcom/alibaba/fastjson2/modules/ObjectWriterModule;->createFieldWriters(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Ljava/lang/Class;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_7

    move/from16 v2, v18

    goto :goto_4

    :cond_8
    move v2, v9

    :goto_4
    if-nez v2, :cond_5

    .line 358
    new-instance v21, Ljava/util/TreeMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/TreeMap;-><init>()V

    if-nez v13, :cond_9

    .line 361
    new-instance v8, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreator$ukptYf4IYGsv5Ku0LwMTuy5Gk1Y;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    move-object/from16 v4, p1

    move-wide v5, v14

    move-object/from16 v7, p4

    move-object v11, v8

    move-object v8, v12

    move-object/from16 v9, v21

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreator$ukptYf4IYGsv5Ku0LwMTuy5Gk1Y;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/Map;)V

    invoke-static {v0, v11}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFields(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 375
    :cond_9
    invoke-virtual {v10, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getMixIn(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v11

    .line 377
    new-instance v9, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreator$ls3b87k7_sy5Oj_cohFlCXbKnC8;

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    move-wide v4, v14

    move-object v6, v12

    move-object/from16 v7, p4

    move-object/from16 v8, p1

    move-object v14, v9

    move v9, v13

    move-object/from16 v10, v21

    invoke-direct/range {v1 .. v10}, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreator$ls3b87k7_sy5Oj_cohFlCXbKnC8;-><init>(Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;Lcom/alibaba/fastjson2/codec/FieldInfo;JLcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;ZLjava/util/Map;)V

    invoke-static {v0, v11, v14}, Lcom/alibaba/fastjson2/util/BeanUtils;->getters(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 484
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    .line 488
    :goto_5
    iget-wide v1, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    or-long v9, p2, v1

    if-nez v19, :cond_a

    .line 489
    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 490
    new-instance v1, Lcom/alibaba/fastjson2/writer/ObjectWriterException;

    invoke-direct {v1, v0, v9, v10, v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterException;-><init>(Ljava/lang/Class;JLjava/util/List;)V

    return-object v1

    :cond_a
    move-object/from16 v11, p0

    .line 493
    invoke-virtual {v11, v12, v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->handleIgnores(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/List;)V

    .line 495
    iget-boolean v1, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->alphabetic:Z

    if-eqz v1, :cond_b

    .line 496
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 499
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->isExtendedMap(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 500
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 504
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreator$TYix4sK29SelnCz71-_1Bm3emO8;->INSTANCE:Lcom/alibaba/fastjson2/writer/-$$Lambda$ObjectWriterCreator$TYix4sK29SelnCz71-_1Bm3emO8;

    const-string v4, "$super$"

    .line 501
    invoke-static {v4, v1, v2, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v1

    .line 507
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_c
    invoke-virtual {v11, v8, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->setDefaultValue(Ljava/util/List;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 515
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    .line 517
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "com.google.common.collect.AbstractMapBasedMultimap$WrappedSet"

    .line 518
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_6

    :cond_d
    const/16 v18, 0x0

    :cond_e
    :goto_6
    if-nez v18, :cond_f

    .line 520
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    .line 557
    :pswitch_0
    new-instance v13, Lcom/alibaba/fastjson2/writer/ObjectWriter12;

    iget-object v3, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v4, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter12;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_7

    .line 554
    :pswitch_1
    new-instance v13, Lcom/alibaba/fastjson2/writer/ObjectWriter11;

    iget-object v3, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v4, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter11;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_7

    .line 551
    :pswitch_2
    new-instance v13, Lcom/alibaba/fastjson2/writer/ObjectWriter10;

    iget-object v3, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v4, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter10;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_7

    .line 548
    :pswitch_3
    new-instance v13, Lcom/alibaba/fastjson2/writer/ObjectWriter9;

    iget-object v3, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v4, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter9;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_7

    .line 545
    :pswitch_4
    new-instance v13, Lcom/alibaba/fastjson2/writer/ObjectWriter8;

    iget-object v3, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v4, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter8;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_7

    .line 542
    :pswitch_5
    new-instance v13, Lcom/alibaba/fastjson2/writer/ObjectWriter7;

    iget-object v3, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v4, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter7;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_7

    .line 539
    :pswitch_6
    new-instance v13, Lcom/alibaba/fastjson2/writer/ObjectWriter6;

    iget-object v3, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v4, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto/16 :goto_7

    .line 536
    :pswitch_7
    new-instance v13, Lcom/alibaba/fastjson2/writer/ObjectWriter5;

    iget-object v3, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v4, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_7

    .line 533
    :pswitch_8
    new-instance v13, Lcom/alibaba/fastjson2/writer/ObjectWriter4;

    iget-object v3, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v4, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter4;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_7

    .line 530
    :pswitch_9
    new-instance v13, Lcom/alibaba/fastjson2/writer/ObjectWriter3;

    iget-object v3, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v4, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter3;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_7

    .line 527
    :pswitch_a
    new-instance v13, Lcom/alibaba/fastjson2/writer/ObjectWriter2;

    iget-object v3, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v4, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    goto :goto_7

    :pswitch_b
    const/4 v2, 0x0

    .line 522
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v4, 0x1000000000000L

    and-long/2addr v2, v4

    cmp-long v2, v2, v16

    if-nez v2, :cond_f

    .line 523
    new-instance v13, Lcom/alibaba/fastjson2/writer/ObjectWriter1;

    iget-object v3, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v4, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriter1;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    :cond_f
    :goto_7
    if-nez v1, :cond_10

    .line 564
    new-instance v13, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    iget-object v3, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    iget-object v4, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    move-object v1, v13

    move-object/from16 v2, p1

    move-wide v5, v9

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    .line 567
    :cond_10
    iget-object v0, v12, Lcom/alibaba/fastjson2/codec/BeanInfo;->serializeFilters:[Ljava/lang/Class;

    if-eqz v0, :cond_11

    .line 568
    invoke-static {v12, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->configSerializeFilters(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;)V

    :cond_11
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createObjectWriter(Ljava/lang/Class;JLjava/util/List;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "J",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/modules/ObjectWriterModule;",
            ">;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 267
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/modules/ObjectWriterModule;

    if-nez v0, :cond_0

    .line 269
    invoke-interface {v1}, Lcom/alibaba/fastjson2/modules/ObjectWriterModule;->getProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public varargs createObjectWriter(Ljava/lang/Class;J[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 9

    .line 89
    array-length v2, p4

    if-nez v2, :cond_0

    .line 90
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    .line 97
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.google.common.collect.AbstractMapBasedMultimap$WrappedSet"

    .line 98
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-nez v3, :cond_4

    .line 102
    array-length v3, p4

    packed-switch v3, :pswitch_data_0

    .line 131
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 129
    :pswitch_0
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriter12;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter12;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 127
    :pswitch_1
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriter11;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter11;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 125
    :pswitch_2
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriter10;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter10;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 123
    :pswitch_3
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriter9;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter9;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 121
    :pswitch_4
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriter8;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter8;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 119
    :pswitch_5
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriter7;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter7;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 117
    :pswitch_6
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriter6;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 115
    :pswitch_7
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriter5;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter5;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 113
    :pswitch_8
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriter4;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter4;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 111
    :pswitch_9
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriter3;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter3;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 109
    :pswitch_a
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriter2;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter2;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 104
    :pswitch_b
    aget-object v2, p4, v2

    iget-wide v2, v2, Lcom/alibaba/fastjson2/writer/FieldWriter;->features:J

    const-wide/high16 v7, 0x1000000000000L

    and-long/2addr v2, v7

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-nez v2, :cond_3

    .line 105
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriter1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriter1;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 107
    :cond_3
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    .line 135
    :cond_4
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    move-object v1, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public varargs createObjectWriter(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 2

    const-wide/16 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/lang/Class;J[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public createObjectWriter(Ljava/util/List;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter;"
        }
    .end annotation

    .line 53
    new-instance v7, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, v7

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterAdapter;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-object v7
.end method

.method public varargs createObjectWriter([Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 0

    .line 57
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter(Ljava/util/List;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method public createObjectWriter([Ljava/lang/String;[Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/function/FieldSupplier;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson2/function/FieldSupplier<",
            "TT;>;)",
            "Lcom/alibaba/fastjson2/writer/ObjectWriter<",
            "TT;>;"
        }
    .end annotation

    .line 61
    array-length v0, p1

    new-array v0, v0, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    const/4 v1, 0x0

    .line 62
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 63
    aget-object v2, p1, v1

    .line 64
    aget-object v3, p2, v1

    .line 65
    new-instance v4, Lcom/alibaba/fastjson2/function/FieldSupplierFunction;

    invoke-direct {v4, p3, v1}, Lcom/alibaba/fastjson2/function/FieldSupplierFunction;-><init>(Lcom/alibaba/fastjson2/function/FieldSupplier;I)V

    .line 66
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v5, v4}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createObjectWriter([Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1
.end method

.method protected creteFieldWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/writer/FieldWriter;
    .locals 13

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-wide v3, p2

    move-object/from16 v9, p7

    .line 146
    iput-wide v3, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    move-object v3, p1

    .line 147
    invoke-virtual {v0, v1, v2, p1, v9}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    .line 149
    iget-boolean v3, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    const/4 v4, 0x0

    if-nez v3, :cond_13

    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->isFunction(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_a

    .line 154
    :cond_0
    iget-object v3, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    iget-object v3, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    goto :goto_1

    .line 155
    :cond_2
    :goto_0
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 157
    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 158
    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    :cond_3
    :goto_1
    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    move v5, v7

    move v8, v5

    .line 166
    :goto_2
    iget-object v10, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    array-length v10, v10

    if-ge v5, v10, :cond_5

    .line 167
    iget-object v10, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 168
    iput v5, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    move v8, v6

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    if-nez v8, :cond_6

    .line 173
    iget v5, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    if-nez v5, :cond_6

    .line 174
    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    array-length v5, v5

    iput v5, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 179
    :cond_6
    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->includes:[Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->includes:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_9

    .line 181
    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->includes:[Ljava/lang/String;

    array-length v8, v5

    move v10, v7

    :goto_3
    if-ge v10, v8, :cond_8

    aget-object v11, v5, v10

    .line 182
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v5, v6

    goto :goto_4

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_8
    move v5, v7

    :goto_4
    if-nez v5, :cond_9

    return-object v4

    .line 193
    :cond_9
    iget-object v5, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    if-eqz v5, :cond_a

    .line 195
    :try_start_0
    iget-object v5, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    new-array v8, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 196
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v8, v7, [Ljava/lang/Object;

    .line 197
    invoke-virtual {v5, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson2/writer/ObjectWriter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    .line 200
    :goto_5
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "create writeUsing Writer error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_a
    move-object v5, v4

    .line 205
    :goto_6
    :try_start_1
    invoke-virtual {v9, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    if-nez v5, :cond_b

    .line 210
    iget-boolean v8, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldClassMixIn:Z

    if-eqz v8, :cond_b

    .line 211
    sget-object v5, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$VoidObjectWriter;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$VoidObjectWriter;

    :cond_b
    if-nez v5, :cond_11

    .line 215
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 216
    const-class v10, Ljava/util/Date;

    if-ne v8, v10, :cond_c

    .line 217
    iget-object v4, v0, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v8}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 218
    sget-object v6, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    if-eq v4, v6, :cond_11

    move-object v5, v4

    goto :goto_8

    .line 221
    :cond_c
    const-class v10, Ljava/util/Map;

    invoke-virtual {v10, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->keyUsing:Ljava/lang/Class;

    if-nez v10, :cond_d

    iget-object v10, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->valueUsing:Ljava/lang/Class;

    if-eqz v10, :cond_11

    .line 225
    :cond_d
    iget-object v10, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->keyUsing:Ljava/lang/Class;

    if-eqz v10, :cond_e

    .line 227
    :try_start_2
    iget-object v10, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->keyUsing:Ljava/lang/Class;

    new-array v11, v7, [Ljava/lang/Class;

    invoke-virtual {v10, v11}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v10

    .line 228
    invoke-virtual {v10, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v11, v7, [Ljava/lang/Object;

    .line 229
    invoke-virtual {v10, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson2/writer/ObjectWriter;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_7

    :catch_4
    :cond_e
    move-object v10, v4

    .line 234
    :goto_7
    iget-object v11, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->valueUsing:Ljava/lang/Class;

    if-eqz v11, :cond_f

    .line 236
    :try_start_3
    iget-object v11, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->valueUsing:Ljava/lang/Class;

    new-array v12, v7, [Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v11

    .line 237
    invoke-virtual {v11, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v6, v7, [Ljava/lang/Object;

    .line 238
    invoke-virtual {v11, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/fastjson2/writer/ObjectWriter;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-object v4, v6

    :catch_5
    :cond_f
    if-nez v10, :cond_10

    if-eqz v4, :cond_11

    .line 245
    :cond_10
    invoke-virtual/range {p7 .. p7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v8}, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;

    move-result-object v5

    .line 246
    iput-object v10, v5, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->keyWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 247
    iput-object v4, v5, Lcom/alibaba/fastjson2/writer/ObjectWriterImplMap;->valueWriter:Lcom/alibaba/fastjson2/writer/ObjectWriter;

    :cond_11
    :goto_8
    move-object v10, v5

    .line 253
    iget-object v4, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    if-nez v4, :cond_12

    .line 254
    iget-object v5, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    if-eqz v5, :cond_12

    .line 255
    iget-object v1, v1, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    move-object v7, v1

    goto :goto_9

    :cond_12
    move-object v7, v4

    .line 258
    :goto_9
    iget v4, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    iget-wide v5, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    iget-object v8, v2, Lcom/alibaba/fastjson2/codec/FieldInfo;->label:Ljava/lang/String;

    move-object v1, p0

    move-object/from16 v2, p4

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v10}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    return-object v0

    :cond_13
    :goto_a
    return-object v4
.end method

.method protected getInitWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 7

    .line 1216
    const-class v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 1217
    iget-wide v3, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v5, 0x10

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    .line 1218
    iget-object p1, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 1219
    sget-object p2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplDate;

    if-eq p1, p2, :cond_4

    return-object p1

    .line 1223
    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p2, v0, :cond_3

    const-class v0, Ljava/lang/Long;

    if-ne p2, v0, :cond_1

    goto :goto_0

    .line 1230
    :cond_1
    const-class v0, Ljava/math/BigDecimal;

    if-ne p2, v0, :cond_2

    .line 1231
    iget-wide v3, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v5, 0x8

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    .line 1232
    iget-object p1, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 1233
    sget-object p2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplBigDecimal;

    if-eq p1, p2, :cond_4

    return-object p1

    .line 1237
    :cond_2
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1238
    iget-object p1, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 1239
    instance-of p2, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterImplEnum;

    if-nez p2, :cond_4

    return-object p1

    .line 1224
    :cond_3
    :goto_0
    iget-wide v3, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->userDefineMask:J

    const-wide/16 v5, 0x4

    and-long/2addr v3, v5

    cmp-long p2, v3, v1

    if-eqz p2, :cond_4

    .line 1225
    iget-object p1, p1, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->cache:Ljava/util/concurrent/ConcurrentMap;

    const-class p2, Ljava/lang/Long;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/writer/ObjectWriter;

    .line 1226
    sget-object p2, Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterImplInt64;

    if-eq p1, p2, :cond_4

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method protected handleIgnores(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;)V"
        }
    .end annotation

    .line 640
    iget-object v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 644
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 645
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 646
    iget-object v2, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 647
    iget-object v6, v1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 648
    invoke-interface {p2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method public synthetic lambda$createObjectWriter$0$ObjectWriterCreator(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/Map;Ljava/lang/reflect/Field;)V
    .locals 8

    .line 340
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    move-object/from16 v7, p8

    .line 341
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->creteFieldWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    move-object v2, p7

    invoke-interface {p7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public synthetic lambda$createObjectWriter$1$ObjectWriterCreator(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/util/Map;Ljava/lang/reflect/Field;)V
    .locals 11

    move-object/from16 v0, p7

    .line 362
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    .line 363
    invoke-virtual/range {p8 .. p8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v1, p1

    iput-boolean v2, v1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    move-object v3, p0

    move-object v4, p2

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object v9, p1

    move-object/from16 v10, p8

    .line 364
    invoke-virtual/range {v3 .. v10}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->creteFieldWriter(Ljava/lang/Class;JLcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Field;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 366
    iget-object v2, v1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson2/writer/FieldWriter;

    if-eqz v2, :cond_1

    .line 368
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_1

    .line 369
    iget-object v2, v1, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public synthetic lambda$createObjectWriter$2$ObjectWriterCreator(Lcom/alibaba/fastjson2/codec/FieldInfo;JLcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;ZLjava/util/Map;Ljava/lang/reflect/Method;)V
    .locals 18

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p4

    move-object/from16 v14, p8

    .line 378
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    move-wide/from16 v1, p2

    .line 379
    iput-wide v1, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    .line 380
    iget-object v1, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;

    iput-object v1, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    move-object/from16 v15, p5

    move-object/from16 v11, p6

    move-object/from16 v10, p9

    .line 381
    invoke-virtual {v15, v0, v13, v11, v10}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    .line 382
    iget-boolean v1, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p6

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move/from16 v4, p7

    move-object/from16 v5, p1

    move-object/from16 v6, p9

    .line 386
    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->getFieldName(Ljava/lang/Class;Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Lcom/alibaba/fastjson2/codec/BeanInfo;ZLcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v9

    .line 388
    iget-object v1, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->includes:[Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->includes:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 390
    iget-object v1, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->includes:[Ljava/lang/String;

    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 391
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_1
    if-nez v1, :cond_3

    return-void

    .line 402
    :cond_3
    iget-wide v4, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v6, v1, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    .line 403
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    .line 407
    :cond_4
    iget-object v1, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    if-eqz v1, :cond_7

    move v1, v3

    move v4, v1

    .line 409
    :goto_2
    iget-object v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_6

    .line 410
    iget-object v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 411
    iput v1, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    move v4, v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-nez v4, :cond_7

    .line 416
    iget v1, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    if-nez v1, :cond_7

    .line 417
    iget-object v1, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    array-length v1, v1

    iput v1, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    .line 422
    :cond_7
    invoke-virtual/range {p9 .. p9}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 424
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->isFunction(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    .line 429
    :cond_8
    iget-object v1, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    const/16 v16, 0x0

    if-eqz v1, :cond_9

    .line 431
    :try_start_0
    iget-object v1, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->writeUsing:Ljava/lang/Class;

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 432
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v2, v3, [Ljava/lang/Object;

    .line 433
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/writer/ObjectWriter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    .line 436
    :goto_3
    new-instance v1, Lcom/alibaba/fastjson2/JSONException;

    const-string v2, "create writeUsing Writer error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_9
    move-object/from16 v1, v16

    :goto_4
    if-nez v1, :cond_a

    .line 440
    iget-boolean v2, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldClassMixIn:Z

    if-eqz v2, :cond_a

    .line 441
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$VoidObjectWriter;->INSTANCE:Lcom/alibaba/fastjson2/writer/ObjectWriterBaseModule$VoidObjectWriter;

    :cond_a
    move-object/from16 v17, v1

    .line 445
    iget-wide v0, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->readerFeatures:J

    const-wide/high16 v2, 0x40000000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-eqz v0, :cond_b

    .line 447
    :try_start_1
    iget v5, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    iget-wide v6, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    iget-object v8, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    iget-object v0, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->label:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object v4, v9

    move-object/from16 p2, v9

    move-object v9, v0

    move-object/from16 v10, p9

    move-object/from16 v11, v17

    :try_start_2
    invoke-virtual/range {v1 .. v11}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriterLambda(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 p2, v9

    .line 459
    :goto_5
    iget-object v1, v12, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->jitErrorCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 460
    iput-object v0, v12, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->jitErrorLast:Ljava/lang/Throwable;

    goto :goto_6

    :cond_b
    move-object/from16 p2, v9

    :goto_6
    if-nez v16, :cond_c

    .line 464
    iget v5, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->ordinal:I

    iget-wide v6, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    iget-object v8, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;

    iget-object v9, v13, Lcom/alibaba/fastjson2/codec/FieldInfo;->label:Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v10, p9

    move-object/from16 v11, v17

    invoke-virtual/range {v1 .. v11}, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->createFieldWriter(Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;Ljava/lang/Class;Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson2/writer/ObjectWriter;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v16

    :cond_c
    move-object/from16 v0, v16

    .line 477
    iget-object v1, v0, Lcom/alibaba/fastjson2/writer/FieldWriter;->fieldName:Ljava/lang/String;

    invoke-interface {v14, v1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/writer/FieldWriter;

    if-eqz v1, :cond_d

    .line 479
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/writer/FieldWriter;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_d

    move-object/from16 v1, p2

    .line 480
    invoke-interface {v14, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method lambdaGetter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 7

    .line 1174
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 1176
    sget-object v1, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;->lambdaMapping:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;

    if-eqz v1, :cond_0

    .line 1183
    iget-object p2, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;->methodType:Ljava/lang/invoke/MethodType;

    .line 1184
    iget-object v2, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;->invokedType:Ljava/lang/invoke/MethodType;

    .line 1185
    iget-object v3, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;->methodName:Ljava/lang/String;

    .line 1186
    iget-object v1, v1, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;->samMethodType:Ljava/lang/invoke/MethodType;

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_0

    .line 1188
    :cond_0
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p2

    .line 1189
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_FUNCTION:Ljava/lang/invoke/MethodType;

    .line 1191
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT_OBJECT:Ljava/lang/invoke/MethodType;

    const-string v3, "apply"

    move-object v6, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v6

    .line 1195
    :goto_0
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v4

    .line 1196
    invoke-virtual {v4}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 1198
    invoke-static/range {v0 .. v5}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p1

    .line 1208
    invoke-virtual {p1}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 1209
    invoke-polymorphic {p1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1211
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create fieldLambdaGetter error, method : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method protected setDefaultValue(Ljava/util/List;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson2/writer/FieldWriter;",
            ">;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 276
    invoke-static {p2, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDefaultConstructor(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v1

    .line 284
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 286
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :cond_1
    if-ne v1, v0, :cond_2

    new-array v1, v0, [Ljava/lang/Object;

    .line 288
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/writer/FieldWriter;

    .line 298
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/writer/FieldWriter;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    :cond_2
    return-void
.end method
