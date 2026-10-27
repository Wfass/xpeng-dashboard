.class public Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;
.super Ljava/lang/Object;
.source "ObjectReaderBaseModule.java"

# interfaces
.implements Lcom/alibaba/fastjson2/modules/ObjectReaderModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;
    }
.end annotation


# instance fields
.field final annotationProcessor:Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;

.field final provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 41
    new-instance p1, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;

    invoke-direct {p1, p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;-><init>(Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->annotationProcessor:Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->getBeanInfo1xJSONPOJOBuilder(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->getCreator(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->getCreator(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method private getBeanInfo1xJSONPOJOBuilder(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/annotation/Annotation;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)V"
        }
    .end annotation

    .line 1239
    new-instance v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$k2yA8mM6Xt2yAxS6yFooBfo8smQ;

    invoke-direct {v0, p3, p1, p2}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$k2yA8mM6Xt2yAxS6yFooBfo8smQ;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    invoke-static {p4, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getCreator(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor;",
            ")V"
        }
    .end annotation

    .line 1264
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1268
    :cond_0
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 1271
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v5, v0, v3

    .line 1272
    invoke-interface {v5}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    .line 1274
    const-class v7, Lcom/alibaba/fastjson2/annotation/JSONCreator;

    invoke-static {v5, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson2/annotation/JSONCreator;

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    .line 1276
    invoke-interface {v7}, Lcom/alibaba/fastjson2/annotation/JSONCreator;->parameterNames()[Ljava/lang/String;

    move-result-object v4

    .line 1277
    array-length v9, v4

    if-eqz v9, :cond_1

    .line 1278
    iput-object v4, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    :cond_1
    if-ne v7, v5, :cond_2

    :goto_1
    goto :goto_3

    :cond_2
    move v4, v8

    .line 1287
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const/4 v9, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v10, "com.alibaba.fastjson.annotation.JSONCreator"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v9, 0x2

    goto :goto_2

    :sswitch_1
    const-string v10, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonCreator"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    move v9, v8

    goto :goto_2

    :sswitch_2
    const-string v10, "com.fasterxml.jackson.annotation.JsonCreator"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    move v9, v2

    :goto_2
    packed-switch v9, :pswitch_data_0

    goto :goto_4

    .line 1290
    :pswitch_0
    new-instance v4, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$_VxEmX1eOpKrjQ811nlRenPqvzw;

    invoke-direct {v4, v5, p1}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$_VxEmX1eOpKrjQ811nlRenPqvzw;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {v6, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    :goto_3
    move v4, v8

    goto :goto_4

    .line 1304
    :pswitch_1
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->isUseJacksonAnnotation()Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_1

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    if-nez v4, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 1319
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v0, :cond_a

    .line 1323
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e0a04f3 -> :sswitch_2
        0x2292e7de -> :sswitch_1
        0x532515d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCreator(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1328
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Enum;

    if-ne v1, v2, :cond_0

    return-void

    .line 1332
    :cond_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1333
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "values"

    .line 1334
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 1339
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v2

    .line 1343
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v7, v4

    move v6, v5

    move v8, v6

    :goto_0
    const/4 v9, 0x1

    if-ge v6, v3, :cond_7

    aget-object v7, v2, v6

    .line 1344
    invoke-interface {v7}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v10

    .line 1345
    const-class v11, Lcom/alibaba/fastjson2/annotation/JSONCreator;

    invoke-static {v7, v11}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson2/annotation/JSONCreator;

    if-ne v11, v7, :cond_2

    goto :goto_3

    .line 1350
    :cond_2
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    const/4 v13, -0x1

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v14, "com.alibaba.fastjson.annotation.JSONCreator"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    goto :goto_1

    :cond_3
    const/4 v13, 0x2

    goto :goto_1

    :sswitch_1
    const-string v14, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonCreator"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    goto :goto_1

    :cond_4
    move v13, v9

    goto :goto_1

    :sswitch_2
    const-string v14, "com.fasterxml.jackson.annotation.JsonCreator"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    goto :goto_1

    :cond_5
    move v13, v5

    :goto_1
    packed-switch v13, :pswitch_data_0

    goto :goto_3

    .line 1353
    :pswitch_0
    new-instance v8, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$VZHz2iOlXI7Mqw3bGybgiX3JP3U;

    invoke-direct {v8, v7, v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$VZHz2iOlXI7Mqw3bGybgiX3JP3U;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {v10, v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    :goto_2
    move v8, v9

    goto :goto_3

    .line 1367
    :pswitch_1
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->isUseJacksonAnnotation()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1369
    new-instance v8, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$NgCSmZAECq8T3AYRItFOwifRHrQ;

    invoke-direct {v8, v7, v0}, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$NgCSmZAECq8T3AYRItFOwifRHrQ;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {v10, v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-object v7, v11

    goto :goto_0

    :cond_7
    if-eqz v7, :cond_9

    .line 1388
    invoke-interface {v7}, Lcom/alibaba/fastjson2/annotation/JSONCreator;->parameterNames()[Ljava/lang/String;

    move-result-object v2

    .line 1389
    array-length v3, v2

    if-eqz v3, :cond_8

    .line 1390
    iput-object v2, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    :cond_8
    move v8, v9

    :cond_9
    if-nez v8, :cond_a

    return-void

    .line 1402
    :cond_a
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v3, p2

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v4, :cond_b

    .line 1407
    iput-object v4, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->createMethod:Ljava/lang/reflect/Method;

    :cond_b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7e0a04f3 -> :sswitch_2
        0x2292e7de -> :sswitch_1
        0x532515d0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$4v51r7thPiDp8WyJaqhlet7BeZg([I)Ljava/util/concurrent/atomic/AtomicIntegerArray;
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerArray;-><init>([I)V

    return-object v0
.end method

.method public static synthetic lambda$8MsvWnG9dTMgneTwuMqFuXLEb1U(Ljava/lang/String;)Ljava/net/URI;
    .locals 0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$96nFrbqFTwtqwtP6h4ukN9qEdcE(Ljava/lang/String;)Ljava/time/ZoneId;
    .locals 0

    invoke-static {p0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$9ujlb-IU2rou71voK9NsDp7pLBI(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$FPDJR4-Dpj1r8Igc3xxWGXfy2J0(I)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    return-object v0
.end method

.method public static synthetic lambda$NhMuQbbREp3u_GmG_1dER9LePy0([B)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$O_9kGmqerKGNDYCqkGjLOd44wAM(Ljava/lang/CharSequence;)Ljava/time/Duration;
    .locals 0

    invoke-static {p0}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Q_T8mdshESfpmkbt509dbr12Z_Q(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 0

    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$VQxcrKvW1wVMCWcobBzK-68FpvA(Z)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-object v0
.end method

.method public static synthetic lambda$bP5-ngrq0ArLtNUpiOd7zcvt7o4(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$bxOgEr5apDhzl8GsKSKYsJBYAtg([J)Ljava/util/concurrent/atomic/AtomicLongArray;
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicLongArray;-><init>([J)V

    return-object v0
.end method

.method static synthetic lambda$getBeanInfo1xJSONPOJOBuilder$4(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 6

    .line 1241
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    .line 1242
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x7b4778ef

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    const v3, 0x7cbf22f8

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "withPrefix"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_0

    :cond_1
    const-string v2, "buildMethod"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v5

    :cond_2
    :goto_0
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_1

    :cond_3
    new-array p2, v5, [Ljava/lang/Object;

    .line 1249
    invoke-virtual {p3, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1250
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 1251
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->builderWithPrefix:Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-array v0, v5, [Ljava/lang/Object;

    .line 1244
    invoke-virtual {p3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1245
    invoke-static {p2, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->buildMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->buildMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic lambda$getCreator$5(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 2

    :try_start_0
    const-string v0, "parameterNames"

    .line 1292
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1293
    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 1294
    array-length p2, p0

    if-eqz p2, :cond_0

    .line 1295
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic lambda$getCreator$6(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 2

    :try_start_0
    const-string v0, "parameterNames"

    .line 1355
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1356
    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 1357
    array-length p2, p0

    if-eqz p2, :cond_0

    .line 1358
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic lambda$getCreator$7(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 2

    :try_start_0
    const-string v0, "parameterNames"

    .line 1371
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 1372
    invoke-virtual {p2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    .line 1373
    array-length p2, p0

    if-eqz p2, :cond_0

    .line 1374
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic lambda$getObjectReader$10(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 2

    .line 2128
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2130
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "create address error"

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$getObjectReader$8(Ljava/lang/String;)Ljava/nio/file/Path;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1531
    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getObjectReader$9(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 1540
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 1542
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "read URL error"

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$init$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$init$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$init$2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "null"

    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method static synthetic lambda$init$3(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "null"

    .line 195
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static synthetic lambda$rxlrKLMubIQjBsG4uPBkgwoKM6I(Ljava/lang/String;)Ljava/time/ZoneOffset;
    .locals 0

    invoke-static {p0}, Ljava/time/ZoneOffset;->of(Ljava/lang/String;)Ljava/time/ZoneOffset;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$to8nQz5f9eo8sz9AlEYnY3ngAfE(J)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object v0
.end method

.method public static synthetic lambda$v4j-VPkR-F6660lWsm2LsuKA-Yo(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$vZ6AlWBt_7keUWFXGkgtKiWRWJI(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 1

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 10

    if-eqz p2, :cond_0

    .line 2185
    const-class v0, Ljava/lang/String;

    if-ne p2, v0, :cond_1

    :cond_0
    const-class v0, Ljava/lang/String;

    if-ne p3, v0, :cond_1

    .line 2186
    new-instance p2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapString;

    const-wide/16 v0, 0x0

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapString;-><init>(Ljava/lang/Class;Ljava/lang/Class;J)V

    return-object p2

    .line 2188
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLjava/util/function/Function;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getAnnotationProcessor()Lcom/alibaba/fastjson2/modules/ObjectReaderAnnotationProcessor;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->getAnnotationProcessor()Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationProcessor()Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;
    .locals 1

    .line 1413
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->annotationProcessor:Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;

    return-object v0
.end method

.method public getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1417
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->annotationProcessor:Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;

    if-eqz v0, :cond_0

    .line 1418
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;->getBeanInfo(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 1

    .line 1423
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->annotationProcessor:Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;

    if-eqz v0, :cond_0

    .line 1424
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule$ReaderAnnotationProcessor;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    :cond_0
    return-void
.end method

.method public getObjectReader(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1430
    const-class v3, Ljava/lang/String;

    if-eq v2, v3, :cond_de

    const-class v3, Ljava/lang/CharSequence;

    if-ne v2, v3, :cond_0

    goto/16 :goto_28

    .line 1434
    :cond_0
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_dd

    const-class v3, Ljava/lang/Character;

    if-ne v2, v3, :cond_1

    goto/16 :goto_27

    .line 1438
    :cond_1
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_dc

    const-class v3, Ljava/lang/Boolean;

    if-ne v2, v3, :cond_2

    goto/16 :goto_26

    .line 1442
    :cond_2
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_db

    const-class v3, Ljava/lang/Byte;

    if-ne v2, v3, :cond_3

    goto/16 :goto_25

    .line 1446
    :cond_3
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_da

    const-class v3, Ljava/lang/Short;

    if-ne v2, v3, :cond_4

    goto/16 :goto_24

    .line 1450
    :cond_4
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_d9

    const-class v3, Ljava/lang/Integer;

    if-ne v2, v3, :cond_5

    goto/16 :goto_23

    .line 1454
    :cond_5
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_d8

    const-class v3, Ljava/lang/Long;

    if-ne v2, v3, :cond_6

    goto/16 :goto_22

    .line 1458
    :cond_6
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_d7

    const-class v3, Ljava/lang/Float;

    if-ne v2, v3, :cond_7

    goto/16 :goto_21

    .line 1462
    :cond_7
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_d6

    const-class v3, Ljava/lang/Double;

    if-ne v2, v3, :cond_8

    goto/16 :goto_20

    .line 1466
    :cond_8
    const-class v3, Ljava/math/BigInteger;

    if-ne v2, v3, :cond_9

    .line 1467
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigInteger;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigInteger;

    return-object v0

    .line 1470
    :cond_9
    const-class v3, Ljava/math/BigDecimal;

    if-ne v2, v3, :cond_a

    .line 1471
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBigDecimal;

    return-object v0

    .line 1474
    :cond_a
    const-class v3, Ljava/lang/Number;

    if-ne v2, v3, :cond_b

    .line 1475
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplNumber;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplNumber;

    return-object v0

    .line 1478
    :cond_b
    const-class v3, Ljava/util/BitSet;

    if-ne v2, v3, :cond_c

    .line 1479
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBitSet;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBitSet;

    return-object v0

    .line 1482
    :cond_c
    const-class v3, Ljava/util/OptionalInt;

    if-ne v2, v3, :cond_d

    .line 1483
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptionalInt;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptionalInt;

    return-object v0

    .line 1486
    :cond_d
    const-class v3, Ljava/util/OptionalLong;

    if-ne v2, v3, :cond_e

    .line 1487
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptionalLong;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptionalLong;

    return-object v0

    .line 1490
    :cond_e
    const-class v3, Ljava/util/OptionalDouble;

    if-ne v2, v3, :cond_f

    .line 1491
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptionalDouble;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptionalDouble;

    return-object v0

    .line 1494
    :cond_f
    const-class v3, Ljava/util/Optional;

    if-ne v2, v3, :cond_10

    .line 1495
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;

    return-object v0

    .line 1498
    :cond_10
    const-class v3, Ljava/util/UUID;

    if-ne v2, v3, :cond_11

    .line 1499
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplUUID;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplUUID;

    return-object v0

    .line 1502
    :cond_11
    const-class v3, Ljava/time/Duration;

    if-ne v2, v3, :cond_12

    .line 1503
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    const-class v2, Ljava/time/Duration;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$O_9kGmqerKGNDYCqkGjLOd44wAM;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$O_9kGmqerKGNDYCqkGjLOd44wAM;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1506
    :cond_12
    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-ne v2, v3, :cond_13

    .line 1507
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromBoolean;

    const-class v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$VQxcrKvW1wVMCWcobBzK-68FpvA;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$VQxcrKvW1wVMCWcobBzK-68FpvA;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromBoolean;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1513
    :cond_13
    const-class v3, Ljava/net/URI;

    if-ne v2, v3, :cond_14

    .line 1514
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    const-class v2, Ljava/net/URI;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$8MsvWnG9dTMgneTwuMqFuXLEb1U;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$8MsvWnG9dTMgneTwuMqFuXLEb1U;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1520
    :cond_14
    const-class v3, Ljava/nio/charset/Charset;

    if-ne v2, v3, :cond_15

    .line 1521
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    const-class v2, Ljava/nio/charset/Charset;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$Q_T8mdshESfpmkbt509dbr12Z_Q;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$Q_T8mdshESfpmkbt509dbr12Z_Q;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1524
    :cond_15
    const-class v3, Ljava/io/File;

    if-ne v2, v3, :cond_16

    .line 1525
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    const-class v2, Ljava/io/File;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$9ujlb-IU2rou71voK9NsDp7pLBI;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$9ujlb-IU2rou71voK9NsDp7pLBI;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1528
    :cond_16
    const-class v3, Ljava/nio/file/Path;

    if-ne v2, v3, :cond_17

    .line 1529
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    const-class v2, Ljava/nio/file/Path;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$NBb5TOzqp3UrW8-jqSUUOpG4mZI;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$NBb5TOzqp3UrW8-jqSUUOpG4mZI;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1535
    :cond_17
    const-class v3, Ljava/net/URL;

    if-ne v2, v3, :cond_18

    .line 1536
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    const-class v2, Ljava/net/URL;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$2JgvmSZ5L4rhR8QP_FguMti1Gng;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$2JgvmSZ5L4rhR8QP_FguMti1Gng;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1547
    :cond_18
    const-class v3, Ljava/util/regex/Pattern;

    if-ne v2, v3, :cond_19

    .line 1548
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    const-class v2, Ljava/util/regex/Pattern;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$bP5-ngrq0ArLtNUpiOd7zcvt7o4;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$bP5-ngrq0ArLtNUpiOd7zcvt7o4;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1551
    :cond_19
    const-class v3, Ljava/lang/Class;

    if-ne v2, v3, :cond_1a

    .line 1552
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;

    return-object v0

    .line 1555
    :cond_1a
    const-class v3, Ljava/lang/reflect/Method;

    if-ne v2, v3, :cond_1b

    .line 1556
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMethod;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMethod;-><init>()V

    return-object v0

    .line 1559
    :cond_1b
    const-class v3, Ljava/lang/reflect/Field;

    if-ne v2, v3, :cond_1c

    .line 1560
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplField;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplField;-><init>()V

    return-object v0

    .line 1563
    :cond_1c
    const-class v3, Ljava/lang/reflect/Type;

    if-ne v2, v3, :cond_1d

    .line 1564
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplClass;

    return-object v0

    .line 1568
    :cond_1d
    invoke-interface/range {p2 .. p2}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v3

    .line 1569
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v10, "org.springframework.util.LinkedMultiValueMap"

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v15, 0x2

    const/4 v5, 0x1

    const/16 v16, 0x0

    sparse-switch v4, :sswitch_data_0

    :goto_0
    const/4 v4, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "org.springframework.security.core.authority.SimpleGrantedAuthority"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_0

    :cond_1e
    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "org.springframework.security.core.userdetails.User"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_0

    :cond_1f
    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "org.springframework.security.authentication.BadCredentialsException"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_0

    :cond_20
    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "org.springframework.security.core.authority.RememberMeAuthenticationToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_0

    :cond_21
    const/4 v4, 0x7

    goto :goto_1

    :sswitch_4
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    goto :goto_0

    :cond_22
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_5
    const-string v4, "org.springframework.security.web.authentication.WebAuthenticationDetails"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_0

    :cond_23
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string v4, "org.springframework.security.web.savedrequest.SavedCookie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_0

    :cond_24
    move v4, v12

    goto :goto_1

    :sswitch_7
    const-string v4, "org.springframework.security.core.authority.AnonymousAuthenticationToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25

    goto :goto_0

    :cond_25
    move v4, v13

    goto :goto_1

    :sswitch_8
    const-string v4, "org.springframework.security.web.csrf.DefaultCsrfToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    goto :goto_0

    :cond_26
    move v4, v15

    goto :goto_1

    :sswitch_9
    const-string v4, "com.google.common.collect.AbstractMapBasedMultimap$WrappedSet"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_0

    :cond_27
    move v4, v5

    goto :goto_1

    :sswitch_a
    const-string v4, "org.springframework.security.authentication.UsernamePasswordAuthenticationToken"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_28

    goto :goto_0

    :cond_28
    move/from16 v4, v16

    :goto_1
    const-string v6, "org.springframework.security.jackson2.SimpleGrantedAuthorityMixin"

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    packed-switch v4, :pswitch_data_0

    move-object v4, v9

    goto :goto_2

    :pswitch_0
    move-object v4, v6

    goto :goto_2

    :pswitch_1
    const-string v4, "org.springframework.security.jackson2.UserMixin"

    goto :goto_2

    :pswitch_2
    const-string v4, "org.springframework.security.jackson2.BadCredentialsExceptionMixin"

    goto :goto_2

    :pswitch_3
    const-string v4, "org.springframework.security.jackson2.AnonymousAuthenticationTokenMixin"

    goto :goto_2

    .line 1573
    :pswitch_4
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-string v4, "org.springframework.security.web.jackson2.WebAuthenticationDetailsMixin"

    goto :goto_2

    :pswitch_6
    const-string v4, "org.springframework.security.web.jackson2.SavedCookieMixin"

    goto :goto_2

    :pswitch_7
    const-string v4, "org.springframework.security.jackson2.RememberMeAuthenticationTokenMixin"

    goto :goto_2

    :pswitch_8
    const-string v4, "org.springframework.security.web.jackson2.DefaultCsrfTokenMixin"

    goto :goto_2

    :pswitch_9
    return-object v9

    :pswitch_a
    const-string v4, "org.springframework.security.jackson2.UsernamePasswordAuthenticationTokenMixin"

    :goto_2
    if-eqz v4, :cond_2a

    .line 1604
    iget-object v11, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v11, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    if-nez v11, :cond_2a

    .line 1606
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    if-nez v11, :cond_29

    .line 1608
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    const-string v4, "com.alibaba.fastjson2.internal.mixin.spring.SimpleGrantedAuthorityMixin"

    .line 1609
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    :cond_29
    if-eqz v11, :cond_2a

    .line 1614
    iget-object v4, v0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->mixInCache:Ljava/util/concurrent/ConcurrentMap;

    move-object v6, v2

    check-cast v6, Ljava/lang/Class;

    invoke-interface {v4, v6, v11}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    :cond_2a
    const-class v4, Ljava/util/Map;

    if-eq v2, v4, :cond_d5

    const-class v4, Ljava/util/AbstractMap;

    if-ne v2, v4, :cond_2b

    goto/16 :goto_1f

    .line 1623
    :cond_2b
    const-class v4, Ljava/util/concurrent/ConcurrentMap;

    if-eq v2, v4, :cond_d4

    const-class v4, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne v2, v4, :cond_2c

    goto/16 :goto_1e

    .line 1627
    :cond_2c
    const-class v4, Ljava/util/concurrent/ConcurrentNavigableMap;

    if-eq v2, v4, :cond_d3

    const-class v4, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-ne v2, v4, :cond_2d

    goto/16 :goto_1d

    .line 1633
    :cond_2d
    const-class v4, Ljava/util/SortedMap;

    if-eq v2, v4, :cond_d2

    const-class v4, Ljava/util/NavigableMap;

    if-eq v2, v4, :cond_d2

    const-class v4, Ljava/util/TreeMap;

    if-ne v2, v4, :cond_2e

    goto/16 :goto_1c

    .line 1640
    :cond_2e
    const-class v4, Ljava/util/Calendar;

    if-eq v2, v4, :cond_d1

    const-string v4, "javax.xml.datatype.XMLGregorianCalendar"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    goto/16 :goto_1b

    .line 1644
    :cond_2f
    const-class v4, Ljava/util/Date;

    if-ne v2, v4, :cond_30

    .line 1645
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDate;

    return-object v0

    .line 1648
    :cond_30
    const-class v4, Ljava/time/LocalDate;

    if-ne v2, v4, :cond_31

    .line 1649
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDate;

    return-object v0

    .line 1652
    :cond_31
    const-class v4, Ljava/time/LocalTime;

    if-ne v2, v4, :cond_32

    .line 1653
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalTime;

    return-object v0

    .line 1656
    :cond_32
    const-class v4, Ljava/time/LocalDateTime;

    if-ne v2, v4, :cond_33

    .line 1657
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocalDateTime;

    return-object v0

    .line 1660
    :cond_33
    const-class v4, Ljava/time/ZonedDateTime;

    if-ne v2, v4, :cond_34

    .line 1661
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;

    return-object v0

    .line 1664
    :cond_34
    const-class v4, Ljava/time/OffsetDateTime;

    if-ne v2, v4, :cond_35

    .line 1665
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOffsetDateTime;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplOffsetDateTime;

    return-object v0

    .line 1668
    :cond_35
    const-class v4, Ljava/time/OffsetTime;

    if-ne v2, v4, :cond_36

    .line 1669
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOffsetTime;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplOffsetTime;

    return-object v0

    .line 1672
    :cond_36
    const-class v4, Ljava/time/ZoneOffset;

    if-ne v2, v4, :cond_37

    .line 1673
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    const-class v2, Ljava/time/ZoneOffset;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$rxlrKLMubIQjBsG4uPBkgwoKM6I;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$rxlrKLMubIQjBsG4uPBkgwoKM6I;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1676
    :cond_37
    const-class v4, Ljava/time/Instant;

    if-ne v2, v4, :cond_38

    .line 1677
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInstant;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInstant;

    return-object v0

    .line 1680
    :cond_38
    const-class v4, Ljava/util/Locale;

    if-ne v2, v4, :cond_39

    .line 1681
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocale;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplLocale;

    return-object v0

    .line 1684
    :cond_39
    const-class v4, Ljava/util/Currency;

    if-ne v2, v4, :cond_3a

    .line 1685
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCurrency;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCurrency;

    return-object v0

    .line 1688
    :cond_3a
    const-class v4, Ljava/time/ZoneId;

    if-ne v2, v4, :cond_3b

    .line 1691
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    const-class v2, Ljava/time/ZoneId;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$96nFrbqFTwtqwtP6h4ukN9qEdcE;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$96nFrbqFTwtqwtP6h4ukN9qEdcE;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1694
    :cond_3b
    const-class v4, Ljava/util/TimeZone;

    if-ne v2, v4, :cond_3c

    .line 1695
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;

    const-class v2, Ljava/util/TimeZone;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$v4j-VPkR-F6660lWsm2LsuKA-Yo;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$v4j-VPkR-F6660lWsm2LsuKA-Yo;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromString;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1698
    :cond_3c
    const-class v4, [C

    if-ne v2, v4, :cond_3d

    .line 1699
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharValueArray;

    return-object v0

    .line 1702
    :cond_3d
    const-class v4, [F

    if-ne v2, v4, :cond_3e

    .line 1703
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloatValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloatValueArray;

    return-object v0

    .line 1706
    :cond_3e
    const-class v4, [D

    if-ne v2, v4, :cond_3f

    .line 1707
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleValueArray;

    return-object v0

    .line 1710
    :cond_3f
    const-class v4, [Z

    if-ne v2, v4, :cond_40

    .line 1711
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolValueArray;

    return-object v0

    .line 1714
    :cond_40
    const-class v4, [B

    if-ne v2, v4, :cond_41

    .line 1715
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;

    return-object v0

    .line 1718
    :cond_41
    const-class v4, [S

    if-ne v2, v4, :cond_42

    .line 1719
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16ValueArray;

    return-object v0

    .line 1722
    :cond_42
    const-class v4, [I

    if-ne v2, v4, :cond_43

    .line 1723
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;

    return-object v0

    .line 1726
    :cond_43
    const-class v4, [J

    if-ne v2, v4, :cond_44

    .line 1727
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;

    return-object v0

    .line 1730
    :cond_44
    const-class v4, [Ljava/lang/Byte;

    if-ne v2, v4, :cond_45

    .line 1731
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8Array;

    return-object v0

    .line 1734
    :cond_45
    const-class v4, [Ljava/lang/Short;

    if-ne v2, v4, :cond_46

    .line 1735
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16Array;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt16Array;

    return-object v0

    .line 1738
    :cond_46
    const-class v4, [Ljava/lang/Integer;

    if-ne v2, v4, :cond_47

    .line 1739
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32Array;

    return-object v0

    .line 1742
    :cond_47
    const-class v4, [Ljava/lang/Long;

    if-ne v2, v4, :cond_48

    .line 1743
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64Array;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64Array;

    return-object v0

    .line 1746
    :cond_48
    const-class v4, [Ljava/lang/Float;

    if-ne v2, v4, :cond_49

    .line 1747
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloatArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloatArray;

    return-object v0

    .line 1750
    :cond_49
    const-class v4, [Ljava/lang/Double;

    if-ne v2, v4, :cond_4a

    .line 1751
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDoubleArray;

    return-object v0

    .line 1754
    :cond_4a
    const-class v4, [Ljava/lang/Number;

    if-ne v2, v4, :cond_4b

    .line 1755
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplNumberArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplNumberArray;

    return-object v0

    .line 1758
    :cond_4b
    const-class v4, [Ljava/lang/String;

    if-ne v2, v4, :cond_4c

    .line 1759
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplStringArray;

    return-object v0

    .line 1762
    :cond_4c
    const-class v4, Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v2, v4, :cond_4d

    .line 1763
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromInt;

    const-class v2, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$FPDJR4-Dpj1r8Igc3xxWGXfy2J0;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$FPDJR4-Dpj1r8Igc3xxWGXfy2J0;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromInt;-><init>(Ljava/lang/Class;Ljava/util/function/IntFunction;)V

    return-object v0

    .line 1766
    :cond_4d
    const-class v4, Ljava/util/concurrent/atomic/AtomicLong;

    if-ne v2, v4, :cond_4e

    .line 1767
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromLong;

    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$to8nQz5f9eo8sz9AlEYnY3ngAfE;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$to8nQz5f9eo8sz9AlEYnY3ngAfE;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFromLong;-><init>(Ljava/lang/Class;Ljava/util/function/LongFunction;)V

    return-object v0

    .line 1770
    :cond_4e
    const-class v4, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-ne v2, v4, :cond_4f

    .line 1771
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;

    const-class v2, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$4v51r7thPiDp8WyJaqhlet7BeZg;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$4v51r7thPiDp8WyJaqhlet7BeZg;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt32ValueArray;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1775
    :cond_4f
    const-class v4, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-ne v2, v4, :cond_50

    .line 1776
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;

    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$bxOgEr5apDhzl8GsKSKYsJBYAtg;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$bxOgEr5apDhzl8GsKSKYsJBYAtg;

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64ValueArray;-><init>(Ljava/lang/Class;Ljava/util/function/Function;)V

    return-object v0

    .line 1780
    :cond_50
    const-class v4, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v2, v4, :cond_51

    .line 1781
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;

    return-object v0

    .line 1784
    :cond_51
    instance-of v4, v2, Lcom/alibaba/fastjson2/util/MultiType;

    if-eqz v4, :cond_52

    .line 1785
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;

    check-cast v2, Lcom/alibaba/fastjson2/util/MultiType;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;-><init>(Lcom/alibaba/fastjson2/util/MultiType;)V

    return-object v0

    .line 1788
    :cond_52
    instance-of v4, v2, Lcom/alibaba/fastjson2/util/MapMultiValueType;

    if-eqz v4, :cond_53

    .line 1789
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;

    check-cast v2, Lcom/alibaba/fastjson2/util/MapMultiValueType;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapMultiValueType;-><init>(Lcom/alibaba/fastjson2/util/MapMultiValueType;)V

    return-object v0

    .line 1792
    :cond_53
    const-class v4, Ljava/lang/StringBuffer;

    if-eq v2, v4, :cond_d0

    const-class v4, Ljava/lang/StringBuilder;

    if-ne v2, v4, :cond_54

    goto/16 :goto_1a

    .line 1812
    :cond_54
    const-class v4, Ljava/lang/Iterable;

    if-eq v2, v4, :cond_cf

    const-class v4, Ljava/util/Collection;

    if-eq v2, v4, :cond_cf

    const-class v4, Ljava/util/List;

    if-eq v2, v4, :cond_cf

    const-class v4, Ljava/util/AbstractCollection;

    if-eq v2, v4, :cond_cf

    const-class v4, Ljava/util/AbstractList;

    if-eq v2, v4, :cond_cf

    const-class v4, Ljava/util/ArrayList;

    if-ne v2, v4, :cond_55

    goto/16 :goto_19

    .line 1823
    :cond_55
    const-class v4, Ljava/util/Queue;

    if-eq v2, v4, :cond_ce

    const-class v4, Ljava/util/Deque;

    if-eq v2, v4, :cond_ce

    const-class v4, Ljava/util/AbstractSequentialList;

    if-eq v2, v4, :cond_ce

    const-class v4, Ljava/util/LinkedList;

    if-ne v2, v4, :cond_56

    goto/16 :goto_18

    .line 1831
    :cond_56
    const-class v4, Ljava/util/Set;

    if-eq v2, v4, :cond_cd

    const-class v4, Ljava/util/AbstractSet;

    if-eq v2, v4, :cond_cd

    const-class v4, Ljava/util/EnumSet;

    if-ne v2, v4, :cond_57

    goto/16 :goto_17

    .line 1836
    :cond_57
    const-class v4, Ljava/util/NavigableSet;

    if-eq v2, v4, :cond_cc

    const-class v4, Ljava/util/SortedSet;

    if-ne v2, v4, :cond_58

    goto/16 :goto_16

    .line 1841
    :cond_58
    const-class v4, Ljava/util/concurrent/ConcurrentLinkedDeque;

    if-eq v2, v4, :cond_cb

    const-class v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eq v2, v4, :cond_cb

    const-class v4, Ljava/util/concurrent/ConcurrentSkipListSet;

    if-eq v2, v4, :cond_cb

    const-class v4, Ljava/util/LinkedHashSet;

    if-eq v2, v4, :cond_cb

    const-class v4, Ljava/util/HashSet;

    if-eq v2, v4, :cond_cb

    const-class v4, Ljava/util/TreeSet;

    if-eq v2, v4, :cond_cb

    const-class v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-ne v2, v4, :cond_59

    goto/16 :goto_15

    .line 1853
    :cond_59
    sget-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_EMPTY_SET:Ljava/lang/Class;

    if-eq v2, v4, :cond_ca

    sget-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_EMPTY_LIST:Ljava/lang/Class;

    if-eq v2, v4, :cond_ca

    sget-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON:Ljava/lang/Class;

    if-eq v2, v4, :cond_ca

    sget-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON_LIST:Ljava/lang/Class;

    if-eq v2, v4, :cond_ca

    sget-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_ARRAYS_LIST:Ljava/lang/Class;

    if-eq v2, v4, :cond_ca

    sget-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_COLLECTION:Ljava/lang/Class;

    if-eq v2, v4, :cond_ca

    sget-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    if-eq v2, v4, :cond_ca

    sget-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

    if-eq v2, v4, :cond_ca

    sget-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SORTED_SET:Ljava/lang/Class;

    if-eq v2, v4, :cond_ca

    sget-object v4, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_NAVIGABLE_SET:Ljava/lang/Class;

    if-ne v2, v4, :cond_5a

    goto/16 :goto_14

    .line 1868
    :cond_5a
    sget-object v4, Lcom/alibaba/fastjson2/util/TypeUtils;->CLASS_SINGLE_SET:Ljava/lang/Class;

    if-ne v2, v4, :cond_5b

    .line 1870
    invoke-static {v2, v9, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 1873
    :cond_5b
    const-class v4, Ljava/lang/Object;

    if-eq v2, v4, :cond_c9

    const-class v4, Ljava/lang/Cloneable;

    if-eq v2, v4, :cond_c9

    const-class v4, Ljava/io/Closeable;

    if-eq v2, v4, :cond_c9

    const-class v4, Ljava/io/Serializable;

    if-eq v2, v4, :cond_c9

    const-class v4, Ljava/lang/Comparable;

    if-ne v2, v4, :cond_5c

    goto/16 :goto_13

    .line 1882
    :cond_5c
    const-class v4, Ljava/util/Map$Entry;

    if-ne v2, v4, :cond_5d

    .line 1883
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;

    invoke-direct {v0, v9, v9}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1886
    :cond_5d
    instance-of v4, v2, Ljava/lang/Class;

    if-eqz v4, :cond_64

    .line 1887
    move-object v4, v2

    check-cast v4, Ljava/lang/Class;

    .line 1889
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->isExtendedMap(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5e

    return-object v9

    .line 1893
    :cond_5e
    const-class v6, Ljava/util/Map;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 1894
    invoke-static {v9, v4, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 1897
    :cond_5f
    const-class v6, Ljava/util/Collection;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_60

    .line 1898
    invoke-static {v4, v4, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 1901
    :cond_60
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 1902
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1903
    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_61

    .line 1904
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectArrayReader;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectArrayReader;

    return-object v0

    .line 1906
    :cond_61
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson2/reader/ObjectArrayTypedReader;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 1909
    :cond_62
    const-class v6, Lcom/alibaba/fastjson2/JSONPObject;

    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 1910
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplJSONP;

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplJSONP;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 1914
    :cond_63
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v6

    .line 1915
    invoke-virtual {v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getCreator()Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;

    move-result-object v6

    .line 1917
    const-class v11, Ljava/lang/StackTraceElement;

    if-ne v4, v11, :cond_64

    :try_start_0
    new-array v11, v12, [Ljava/lang/Class;

    .line 1919
    const-class v17, Ljava/lang/String;

    aput-object v17, v11, v16

    const-class v17, Ljava/lang/String;

    aput-object v17, v11, v5

    const-class v17, Ljava/lang/String;

    aput-object v17, v11, v15

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v11, v13

    invoke-virtual {v4, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const-string v11, "className"

    const-string v12, "methodName"

    const-string v13, "fileName"

    const-string v14, "lineNumber"

    .line 1925
    filled-new-array {v11, v12, v13, v14}, [Ljava/lang/String;

    move-result-object v11

    .line 1926
    invoke-virtual {v6, v4, v11}, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->createObjectReaderNoneDefaultConstructor(Ljava/lang/reflect/Constructor;[Ljava/lang/String;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 1938
    :catchall_0
    :cond_64
    instance-of v4, v2, Ljava/lang/reflect/ParameterizedType;

    const-string v6, "org.apache.commons.lang3.tuple.ImmutablePair"

    const-string v11, "com.google.common.collect.ImmutableSet"

    const-string v12, "org.apache.commons.lang3.tuple.Pair"

    const-string v13, "com.google.common.collect.SingletonImmutableSet"

    const-string v14, "com.google.common.collect.ImmutableList"

    if-eqz v4, :cond_8f

    .line 1939
    move-object v3, v2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 1940
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1942
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1944
    array-length v9, v3

    if-ne v9, v15, :cond_74

    .line 1945
    aget-object v0, v3, v16

    .line 1946
    aget-object v3, v3, v5

    .line 1948
    const-class v9, Ljava/util/Map;

    if-eq v4, v9, :cond_73

    const-class v9, Ljava/util/AbstractMap;

    if-eq v4, v9, :cond_73

    const-class v9, Ljava/util/HashMap;

    if-ne v4, v9, :cond_65

    goto/16 :goto_8

    .line 1955
    :cond_65
    const-class v9, Ljava/util/concurrent/ConcurrentMap;

    if-eq v4, v9, :cond_72

    const-class v9, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne v4, v9, :cond_66

    goto/16 :goto_7

    .line 1961
    :cond_66
    const-class v9, Ljava/util/concurrent/ConcurrentNavigableMap;

    if-eq v4, v9, :cond_71

    const-class v9, Ljava/util/concurrent/ConcurrentSkipListMap;

    if-ne v4, v9, :cond_67

    goto/16 :goto_6

    .line 1967
    :cond_67
    const-class v9, Ljava/util/LinkedHashMap;

    if-eq v4, v9, :cond_70

    const-class v9, Ljava/util/TreeMap;

    if-eq v4, v9, :cond_70

    const-class v9, Ljava/util/Hashtable;

    if-ne v4, v9, :cond_68

    goto/16 :goto_5

    .line 1973
    :cond_68
    const-class v9, Ljava/util/Map$Entry;

    if-ne v4, v9, :cond_69

    .line 1974
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;

    invoke-direct {v2, v0, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapEntry;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object v2

    .line 1977
    :cond_69
    invoke-interface {v4}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    :goto_3
    const/4 v11, -0x1

    goto :goto_4

    :sswitch_b
    const-string v5, "com.google.common.collect.RegularImmutableMap"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    goto :goto_3

    :cond_6a
    const/4 v11, 0x5

    goto :goto_4

    :sswitch_c
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    goto :goto_3

    :cond_6b
    const/4 v11, 0x4

    goto :goto_4

    :sswitch_d
    const-string v5, "com.google.common.collect.ImmutableMap"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6c

    goto :goto_3

    :cond_6c
    const/4 v11, 0x3

    goto :goto_4

    :sswitch_e
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    goto :goto_3

    :cond_6d
    move v11, v15

    goto :goto_4

    :sswitch_f
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6e

    goto :goto_3

    :cond_6e
    move v11, v5

    goto :goto_4

    :sswitch_10
    const-string v5, "com.google.common.collect.SingletonImmutableBiMap"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    goto :goto_3

    :cond_6f
    move/from16 v11, v16

    :goto_4
    packed-switch v11, :pswitch_data_1

    goto/16 :goto_10

    .line 1980
    :pswitch_b
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/Class;

    const-class v20, Ljava/util/HashMap;

    const-wide/16 v23, 0x0

    invoke-static {}, Lcom/alibaba/fastjson2/util/GuavaSupport;->immutableMapConverter()Ljava/util/function/Function;

    move-result-object v25

    move-object/from16 v18, v2

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    invoke-direct/range {v18 .. v25}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLjava/util/function/Function;)V

    return-object v2

    .line 1987
    :pswitch_c
    new-instance v2, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairReader;

    check-cast v4, Ljava/lang/Class;

    invoke-direct {v2, v4, v0, v3}, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairReader;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object v2

    .line 1984
    :pswitch_d
    check-cast v4, Ljava/lang/Class;

    invoke-static {v2, v4, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 1982
    :pswitch_e
    new-instance v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;

    move-object/from16 v19, v4

    check-cast v19, Ljava/lang/Class;

    const-class v20, Ljava/util/HashMap;

    const-wide/16 v23, 0x0

    invoke-static {}, Lcom/alibaba/fastjson2/util/GuavaSupport;->singletonBiMapConverter()Ljava/util/function/Function;

    move-result-object v25

    move-object/from16 v18, v2

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    invoke-direct/range {v18 .. v25}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMapTyped;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLjava/util/function/Function;)V

    return-object v2

    .line 1970
    :cond_70
    :goto_5
    check-cast v4, Ljava/lang/Class;

    invoke-static {v4, v4, v0, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 1964
    :cond_71
    :goto_6
    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-static {v4, v2, v0, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 1958
    :cond_72
    :goto_7
    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v2, v0, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 1952
    :cond_73
    :goto_8
    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/HashMap;

    invoke-static {v4, v2, v0, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 1989
    :cond_74
    array-length v6, v3

    if-ne v6, v5, :cond_8e

    .line 1990
    aget-object v3, v3, v16

    .line 1991
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->getMapping(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 1993
    const-class v9, Ljava/lang/Iterable;

    if-eq v4, v9, :cond_8b

    const-class v9, Ljava/util/Collection;

    if-eq v4, v9, :cond_8b

    const-class v9, Ljava/util/List;

    if-eq v4, v9, :cond_8b

    const-class v9, Ljava/util/AbstractCollection;

    if-eq v4, v9, :cond_8b

    const-class v9, Ljava/util/AbstractList;

    if-eq v4, v9, :cond_8b

    const-class v9, Ljava/util/ArrayList;

    if-ne v4, v9, :cond_75

    goto/16 :goto_f

    .line 2008
    :cond_75
    const-class v9, Ljava/util/Queue;

    if-eq v4, v9, :cond_88

    const-class v9, Ljava/util/Deque;

    if-eq v4, v9, :cond_88

    const-class v9, Ljava/util/AbstractSequentialList;

    if-eq v4, v9, :cond_88

    const-class v9, Ljava/util/LinkedList;

    if-ne v4, v9, :cond_76

    goto/16 :goto_e

    .line 2021
    :cond_76
    const-class v9, Ljava/util/Set;

    if-eq v4, v9, :cond_85

    const-class v9, Ljava/util/AbstractSet;

    if-eq v4, v9, :cond_85

    const-class v9, Ljava/util/EnumSet;

    if-ne v4, v9, :cond_77

    goto/16 :goto_d

    .line 2031
    :cond_77
    const-class v9, Ljava/util/NavigableSet;

    if-eq v4, v9, :cond_82

    const-class v9, Ljava/util/SortedSet;

    if-ne v4, v9, :cond_78

    goto/16 :goto_c

    .line 2041
    :cond_78
    const-class v9, Ljava/util/concurrent/ConcurrentLinkedDeque;

    if-eq v4, v9, :cond_7f

    const-class v9, Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eq v4, v9, :cond_7f

    const-class v9, Ljava/util/concurrent/ConcurrentSkipListSet;

    if-eq v4, v9, :cond_7f

    const-class v9, Ljava/util/LinkedHashSet;

    if-eq v4, v9, :cond_7f

    const-class v9, Ljava/util/HashSet;

    if-eq v4, v9, :cond_7f

    const-class v9, Ljava/util/TreeSet;

    if-eq v4, v9, :cond_7f

    const-class v9, Ljava/util/concurrent/CopyOnWriteArrayList;

    if-ne v4, v9, :cond_79

    goto :goto_b

    .line 2058
    :cond_79
    invoke-interface {v4}, Ljava/lang/reflect/Type;->getTypeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_2

    :goto_9
    const/4 v14, -0x1

    goto :goto_a

    :sswitch_11
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7a

    goto :goto_9

    :cond_7a
    move v14, v15

    goto :goto_a

    :sswitch_12
    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7b

    goto :goto_9

    :cond_7b
    move v14, v5

    goto :goto_a

    :sswitch_13
    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7c

    goto :goto_9

    :cond_7c
    move/from16 v14, v16

    :goto_a
    packed-switch v14, :pswitch_data_2

    .line 2065
    const-class v5, Ljava/util/Optional;

    if-ne v4, v5, :cond_7d

    const/4 v5, 0x0

    .line 2066
    invoke-static {v2, v5, v5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;->of(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplOptional;

    move-result-object v0

    return-object v0

    .line 2069
    :cond_7d
    const-class v2, Ljava/util/concurrent/atomic/AtomicReference;

    if-ne v4, v2, :cond_7e

    .line 2070
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplAtomicReference;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    .line 2073
    :cond_7e
    instance-of v2, v3, Ljava/lang/reflect/WildcardType;

    if-eqz v2, :cond_8e

    .line 2074
    invoke-virtual {v1, v0, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->getObjectReader(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :pswitch_f
    const/4 v0, 0x0

    .line 2062
    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2049
    :cond_7f
    :goto_b
    const-class v0, Ljava/lang/String;

    if-ne v3, v0, :cond_80

    .line 2050
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;

    check-cast v4, Ljava/lang/Class;

    invoke-direct {v0, v4, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 2051
    :cond_80
    const-class v0, Ljava/lang/Long;

    if-ne v6, v0, :cond_81

    .line 2052
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;

    check-cast v4, Ljava/lang/Class;

    invoke-direct {v0, v4, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_81
    const/4 v0, 0x0

    .line 2054
    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2032
    :cond_82
    :goto_c
    const-class v0, Ljava/lang/String;

    if-ne v3, v0, :cond_83

    .line 2033
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/TreeSet;

    invoke-direct {v0, v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 2034
    :cond_83
    const-class v0, Ljava/lang/Long;

    if-ne v6, v0, :cond_84

    .line 2035
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/TreeSet;

    invoke-direct {v0, v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_84
    const/4 v0, 0x0

    .line 2037
    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2022
    :cond_85
    :goto_d
    const-class v0, Ljava/lang/String;

    if-ne v6, v0, :cond_86

    .line 2023
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/HashSet;

    invoke-direct {v0, v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 2024
    :cond_86
    const-class v0, Ljava/lang/Long;

    if-ne v6, v0, :cond_87

    .line 2025
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/HashSet;

    invoke-direct {v0, v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_87
    const/4 v0, 0x0

    .line 2027
    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2012
    :cond_88
    :goto_e
    const-class v0, Ljava/lang/String;

    if-ne v6, v0, :cond_89

    .line 2013
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/LinkedList;

    invoke-direct {v0, v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 2014
    :cond_89
    const-class v0, Ljava/lang/Long;

    if-ne v6, v0, :cond_8a

    .line 2015
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/LinkedList;

    invoke-direct {v0, v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_8a
    const/4 v0, 0x0

    .line 2017
    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 1999
    :cond_8b
    :goto_f
    const-class v0, Ljava/lang/String;

    if-ne v6, v0, :cond_8c

    .line 2000
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/ArrayList;

    invoke-direct {v0, v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    .line 2001
    :cond_8c
    const-class v0, Ljava/lang/Long;

    if-ne v6, v0, :cond_8d

    .line 2002
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;

    check-cast v4, Ljava/lang/Class;

    const-class v2, Ljava/util/ArrayList;

    invoke-direct {v0, v4, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0

    :cond_8d
    const/4 v0, 0x0

    .line 2004
    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :cond_8e
    :goto_10
    const/4 v0, 0x0

    return-object v0

    .line 2081
    :cond_8f
    instance-of v4, v2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v4, :cond_90

    .line 2082
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;

    check-cast v2, Ljava/lang/reflect/GenericArrayType;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplGenericArray;-><init>(Ljava/lang/reflect/GenericArrayType;)V

    return-object v0

    .line 2085
    :cond_90
    instance-of v4, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_91

    .line 2086
    move-object v4, v2

    check-cast v4, Ljava/lang/reflect/WildcardType;

    invoke-interface {v4}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 2087
    array-length v9, v4

    if-ne v9, v5, :cond_91

    .line 2088
    aget-object v2, v4, v16

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->getObjectReader(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2092
    :cond_91
    const-class v0, Ljava/lang/reflect/ParameterizedType;

    if-ne v2, v0, :cond_92

    .line 2093
    const-class v0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    invoke-static {v0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->ofReflect(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2096
    :cond_92
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_3

    :goto_11
    const/4 v5, -0x1

    goto/16 :goto_12

    :sswitch_14
    const-string v0, "org.joda.time.Chronology"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto :goto_11

    :cond_93
    const/16 v5, 0x35

    goto/16 :goto_12

    :sswitch_15
    const-string v0, "com.google.common.collect.RegularImmutableSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_94

    goto :goto_11

    :cond_94
    const/16 v5, 0x34

    goto/16 :goto_12

    :sswitch_16
    const-string v0, "gnu.trove.list.array.TDoubleArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_11

    :cond_95
    const/16 v5, 0x33

    goto/16 :goto_12

    :sswitch_17
    const-string v0, "com.carrotsearch.hppc.LongArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_11

    :cond_96
    const/16 v5, 0x32

    goto/16 :goto_12

    :sswitch_18
    const-string v0, "gnu.trove.set.hash.TByteHashSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_97

    goto :goto_11

    :cond_97
    const/16 v5, 0x31

    goto/16 :goto_12

    :sswitch_19
    const-string v0, "java.util.RegularEnumSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_11

    :cond_98
    const/16 v5, 0x30

    goto/16 :goto_12

    :sswitch_1a
    const-string v0, "javax.money.Money"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto :goto_11

    :cond_99
    const/16 v5, 0x2f

    goto/16 :goto_12

    :sswitch_1b
    const-string v0, "org.bson.types.Decimal128"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    goto :goto_11

    :cond_9a
    const/16 v5, 0x2e

    goto/16 :goto_12

    :sswitch_1c
    const-string v0, "java.lang.Throwable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto :goto_11

    :cond_9b
    const/16 v5, 0x2d

    goto/16 :goto_12

    :sswitch_1d
    const-string v0, "gnu.trove.list.array.TByteArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9c

    goto/16 :goto_11

    :cond_9c
    const/16 v5, 0x2c

    goto/16 :goto_12

    :sswitch_1e
    const-string v0, "java.net.InetSocketAddress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    goto/16 :goto_11

    :cond_9d
    const/16 v5, 0x2b

    goto/16 :goto_12

    :sswitch_1f
    const-string v0, "gnu.trove.list.array.TIntArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto/16 :goto_11

    :cond_9e
    const/16 v5, 0x2a

    goto/16 :goto_12

    :sswitch_20
    const-string v0, "java.text.SimpleDateFormat"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    goto/16 :goto_11

    :cond_9f
    const/16 v5, 0x29

    goto/16 :goto_12

    :sswitch_21
    const-string v0, "com.google.common.collect.AbstractMapBasedMultimap$RandomAccessWrappedList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    goto/16 :goto_11

    :cond_a0
    const/16 v5, 0x28

    goto/16 :goto_12

    :sswitch_22
    const-string v0, "org.joda.time.LocalDateTime"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto/16 :goto_11

    :cond_a1
    const/16 v5, 0x27

    goto/16 :goto_12

    :sswitch_23
    const-string v0, "com.carrotsearch.hppc.IntHashSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    goto/16 :goto_11

    :cond_a2
    const/16 v5, 0x26

    goto/16 :goto_12

    :sswitch_24
    const-string v0, "com.carrotsearch.hppc.FloatArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    goto/16 :goto_11

    :cond_a3
    const/16 v5, 0x25

    goto/16 :goto_12

    :sswitch_25
    const-string v0, "java.sql.Timestamp"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    goto/16 :goto_11

    :cond_a4
    const/16 v5, 0x24

    goto/16 :goto_12

    :sswitch_26
    const-string v0, "javax.money.MonetaryAmount"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    goto/16 :goto_11

    :cond_a5
    const/16 v5, 0x23

    goto/16 :goto_12

    :sswitch_27
    const-string v0, "org.joda.time.DateTime"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    goto/16 :goto_11

    :cond_a6
    const/16 v5, 0x22

    goto/16 :goto_12

    :sswitch_28
    const-string v0, "gnu.trove.list.array.TFloatArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    goto/16 :goto_11

    :cond_a7
    const/16 v5, 0x21

    goto/16 :goto_12

    :sswitch_29
    const-string v0, "java.sql.Time"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a8

    goto/16 :goto_11

    :cond_a8
    const/16 v5, 0x20

    goto/16 :goto_12

    :sswitch_2a
    const-string v0, "java.sql.Date"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    goto/16 :goto_11

    :cond_a9
    const/16 v5, 0x1f

    goto/16 :goto_12

    :sswitch_2b
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    goto/16 :goto_11

    :cond_aa
    const/16 v5, 0x1e

    goto/16 :goto_12

    :sswitch_2c
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ab

    goto/16 :goto_11

    :cond_ab
    const/16 v5, 0x1d

    goto/16 :goto_12

    :sswitch_2d
    const-string v0, "gnu.trove.list.array.TCharArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    goto/16 :goto_11

    :cond_ac
    const/16 v5, 0x1c

    goto/16 :goto_12

    :sswitch_2e
    const-string v0, "gnu.trove.set.hash.TLongHashSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    goto/16 :goto_11

    :cond_ad
    const/16 v5, 0x1b

    goto/16 :goto_12

    :sswitch_2f
    const-string v0, "com.carrotsearch.hppc.ByteArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    goto/16 :goto_11

    :cond_ae
    const/16 v5, 0x1a

    goto/16 :goto_12

    :sswitch_30
    const-string v0, "java.lang.IllegalStateException"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    goto/16 :goto_11

    :cond_af
    const/16 v5, 0x19

    goto/16 :goto_12

    :sswitch_31
    const-string v0, "java.lang.Exception"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    goto/16 :goto_11

    :cond_b0
    const/16 v5, 0x18

    goto/16 :goto_12

    :sswitch_32
    const-string v0, "org.joda.time.Instant"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    goto/16 :goto_11

    :cond_b1
    const/16 v5, 0x17

    goto/16 :goto_12

    :sswitch_33
    const-string v0, "com.carrotsearch.hppc.DoubleArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b2

    goto/16 :goto_11

    :cond_b2
    const/16 v5, 0x16

    goto/16 :goto_12

    :sswitch_34
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b3

    goto/16 :goto_11

    :cond_b3
    const/16 v5, 0x15

    goto/16 :goto_12

    :sswitch_35
    const-string v0, "com.carrotsearch.hppc.ShortArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    goto/16 :goto_11

    :cond_b4
    const/16 v5, 0x14

    goto/16 :goto_12

    :sswitch_36
    const-string v0, "gnu.trove.set.hash.TIntHashSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    goto/16 :goto_11

    :cond_b5
    const/16 v5, 0x13

    goto/16 :goto_12

    :sswitch_37
    const-string v0, "gnu.trove.list.array.TShortArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    goto/16 :goto_11

    :cond_b6
    const/16 v5, 0x12

    goto/16 :goto_12

    :sswitch_38
    const-string v0, "java.nio.ByteBuffer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    goto/16 :goto_11

    :cond_b7
    const/16 v5, 0x11

    goto/16 :goto_12

    :sswitch_39
    const-string v0, "java.nio.HeapByteBuffer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    goto/16 :goto_11

    :cond_b8
    const/16 v5, 0x10

    goto/16 :goto_12

    :sswitch_3a
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    goto/16 :goto_11

    :cond_b9
    const/16 v5, 0xf

    goto/16 :goto_12

    :sswitch_3b
    const-string v0, "java.net.InetAddress"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ba

    goto/16 :goto_11

    :cond_ba
    const/16 v5, 0xe

    goto/16 :goto_12

    :sswitch_3c
    const-string v0, "gnu.trove.list.array.TLongArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    goto/16 :goto_11

    :cond_bb
    const/16 v5, 0xd

    goto/16 :goto_12

    :sswitch_3d
    const-string v0, "com.carrotsearch.hppc.IntArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bc

    goto/16 :goto_11

    :cond_bc
    const/16 v5, 0xc

    goto/16 :goto_12

    :sswitch_3e
    const-string v0, "com.carrotsearch.hppc.CharArrayList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    goto/16 :goto_11

    :cond_bd
    const/16 v5, 0xb

    goto/16 :goto_12

    :sswitch_3f
    const-string v0, "javax.money.CurrencyUnit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    goto/16 :goto_11

    :cond_be
    const/16 v5, 0xa

    goto/16 :goto_12

    :sswitch_40
    const-string v0, "java.util.JumboEnumSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    goto/16 :goto_11

    :cond_bf
    const/16 v5, 0x9

    goto/16 :goto_12

    :sswitch_41
    const-string v0, "java.io.UncheckedIOException"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    goto/16 :goto_11

    :cond_c0
    const/16 v5, 0x8

    goto :goto_12

    :sswitch_42
    const-string v0, "com.carrotsearch.hppc.CharHashSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    goto/16 :goto_11

    :cond_c1
    const/4 v5, 0x7

    goto :goto_12

    :sswitch_43
    const-string v0, "gnu.trove.set.hash.TShortHashSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c2

    goto/16 :goto_11

    :cond_c2
    const/4 v5, 0x6

    goto :goto_12

    :sswitch_44
    const-string v0, "com.carrotsearch.hppc.LongHashSet"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    goto/16 :goto_11

    :cond_c3
    const/4 v5, 0x5

    goto :goto_12

    :sswitch_45
    const-string v0, "org.joda.time.LocalDate"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    goto/16 :goto_11

    :cond_c4
    const/4 v5, 0x4

    goto :goto_12

    :sswitch_46
    const-string v0, "javax.money.NumberValue"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c5

    goto/16 :goto_11

    :cond_c5
    const/4 v5, 0x3

    goto :goto_12

    :sswitch_47
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c6

    goto/16 :goto_11

    :cond_c6
    move v5, v15

    goto :goto_12

    :sswitch_48
    const-string v0, "java.io.IOException"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c8

    goto/16 :goto_11

    :sswitch_49
    const-string v0, "java.lang.RuntimeException"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    goto/16 :goto_11

    :cond_c7
    move/from16 v5, v16

    :cond_c8
    :goto_12
    packed-switch v5, :pswitch_data_3

    const/4 v0, 0x0

    return-object v0

    .line 2107
    :pswitch_10
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JodaSupport;->createChronologyReader(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2124
    :pswitch_11
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderMisc;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderMisc;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 2134
    :pswitch_12
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$vZ6AlWBt_7keUWFXGkgtKiWRWJI;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$vZ6AlWBt_7keUWFXGkgtKiWRWJI;

    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;

    move-result-object v0

    return-object v0

    .line 2111
    :pswitch_13
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JodaSupport;->createLocalDateTimeReader(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2100
    :pswitch_14
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v0, v3, v3}, Lcom/alibaba/fastjson2/util/JdbcSupport;->createTimestampReader(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2120
    :pswitch_15
    invoke-static {}, Lcom/alibaba/fastjson2/support/money/MoneySupport;->createMonetaryAmountReader()Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2115
    :pswitch_16
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;

    new-instance v2, Lcom/alibaba/fastjson2/util/JodaSupport$DateTimeFromZDT;

    invoke-direct {v2}, Lcom/alibaba/fastjson2/util/JodaSupport$DateTimeFromZDT;-><init>()V

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplZonedDateTime;-><init>(Ljava/util/function/Function;)V

    return-object v0

    :pswitch_17
    const/4 v3, 0x0

    .line 2098
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v3, v3}, Lcom/alibaba/fastjson2/util/JdbcSupport;->createTimeReader(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :pswitch_18
    const/4 v3, 0x0

    .line 2102
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0, v3, v3}, Lcom/alibaba/fastjson2/util/JdbcSupport;->createDateReader(Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2113
    :pswitch_19
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JodaSupport;->createInstantReader(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2147
    :pswitch_1a
    new-instance v0, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairReader;

    check-cast v2, Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const-class v4, Ljava/lang/Object;

    invoke-direct {v0, v2, v3, v4}, Lcom/alibaba/fastjson2/util/ApacheLang3Support$PairReader;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object v0

    .line 2144
    :pswitch_1b
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;

    sget-object v2, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$NhMuQbbREp3u_GmG_1dER9LePy0;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$NhMuQbbREp3u_GmG_1dER9LePy0;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt8ValueArray;-><init>(Ljava/util/function/Function;Ljava/lang/String;)V

    return-object v0

    .line 2126
    :pswitch_1c
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$_7P1ObqlO6FipOVzIgX9yEbTiHM;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$_7P1ObqlO6FipOVzIgX9yEbTiHM;

    invoke-static {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;->of(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;

    move-result-object v0

    return-object v0

    .line 2117
    :pswitch_1d
    invoke-static {}, Lcom/alibaba/fastjson2/support/money/MoneySupport;->createCurrencyUnitReader()Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2105
    :pswitch_1e
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2176
    :pswitch_1f
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->getObjectReader(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2109
    :pswitch_20
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JodaSupport;->createLocalDateReader(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2122
    :pswitch_21
    invoke-static {}, Lcom/alibaba/fastjson2/support/money/MoneySupport;->createNumberValueReader()Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :pswitch_22
    const/4 v0, 0x0

    .line 2153
    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 2141
    :pswitch_23
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderException;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderException;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 1879
    :cond_c9
    :goto_13
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplObject;

    return-object v0

    :cond_ca
    :goto_14
    move-object v0, v9

    .line 1865
    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :cond_cb
    :goto_15
    move-object v0, v9

    .line 1850
    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :cond_cc
    :goto_16
    move-object v0, v9

    .line 1838
    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :cond_cd
    :goto_17
    move-object v0, v9

    .line 1833
    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :cond_ce
    :goto_18
    move-object v0, v9

    .line 1828
    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :cond_cf
    :goto_19
    move-object v0, v9

    .line 1819
    invoke-static {v2, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 1794
    :cond_d0
    :goto_1a
    :try_start_1
    move-object v3, v2

    check-cast v3, Ljava/lang/Class;

    .line 1795
    new-instance v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;

    const-class v4, Ljava/lang/String;

    const-class v6, Ljava/lang/String;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v2, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v16

    .line 1803
    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v2, v0

    move-object v5, v6

    move-wide v6, v7

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object v13, v14

    invoke-direct/range {v2 .. v13}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplValue;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;JLjava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson2/schema/JSONSchema;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1808
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1641
    :cond_d1
    :goto_1b
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCalendar;

    return-object v0

    .line 1637
    :cond_d2
    :goto_1c
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    const-class v2, Ljava/util/TreeMap;

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :cond_d3
    :goto_1d
    move-object v4, v9

    .line 1630
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/ConcurrentSkipListMap;

    const-class v3, Ljava/lang/Object;

    invoke-static {v0, v2, v4, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :cond_d4
    :goto_1e
    move-object v4, v9

    .line 1624
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    const-class v2, Ljava/util/concurrent/ConcurrentHashMap;

    const-class v3, Ljava/lang/Object;

    invoke-static {v0, v2, v4, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->typedMap(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    :cond_d5
    :goto_1f
    move-object v4, v9

    .line 1620
    move-object v0, v2

    check-cast v0, Ljava/lang/Class;

    invoke-static {v4, v0, v7, v8}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplMap;->of(Ljava/lang/reflect/Type;Ljava/lang/Class;J)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    return-object v0

    .line 1463
    :cond_d6
    :goto_20
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplDouble;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplDouble;

    return-object v0

    .line 1459
    :cond_d7
    :goto_21
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloat;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplFloat;

    return-object v0

    .line 1455
    :cond_d8
    :goto_22
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInt64;

    return-object v0

    .line 1451
    :cond_d9
    :goto_23
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplInteger;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplInteger;

    return-object v0

    .line 1447
    :cond_da
    :goto_24
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplShort;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplShort;

    return-object v0

    .line 1443
    :cond_db
    :goto_25
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplByte;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplByte;

    return-object v0

    .line 1439
    :cond_dc
    :goto_26
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolean;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplBoolean;

    return-object v0

    .line 1435
    :cond_dd
    :goto_27
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharacter;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplCharacter;

    return-object v0

    .line 1431
    :cond_de
    :goto_28
    sget-object v0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplString;->INSTANCE:Lcom/alibaba/fastjson2/reader/ObjectReaderImplString;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x77c5ffff -> :sswitch_a
        -0x6a7c71fa -> :sswitch_9
        -0x648d55e3 -> :sswitch_8
        -0x25e474d9 -> :sswitch_7
        -0x24dcfefa -> :sswitch_6
        -0xeb491b5 -> :sswitch_5
        -0x9e7ba9a -> :sswitch_4
        0x1d899909 -> :sswitch_3
        0x278b30c9 -> :sswitch_2
        0x4a6300ea -> :sswitch_1
        0x5f84b54d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

    :sswitch_data_1
    .sparse-switch
        -0x64f58121 -> :sswitch_10
        -0x9e7ba9a -> :sswitch_f
        -0x82e223b -> :sswitch_e
        0x35fc9059 -> :sswitch_d
        0x371ffcf1 -> :sswitch_c
        0x79522977 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x766adabf -> :sswitch_13
        -0x289861d4 -> :sswitch_12
        0x35fca75f -> :sswitch_11
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x7a3f8f55 -> :sswitch_49
        -0x77d84db3 -> :sswitch_48
        -0x766adabf -> :sswitch_47
        -0x75d131fe -> :sswitch_46
        -0x7295bf66 -> :sswitch_45
        -0x68ba7345 -> :sswitch_44
        -0x644c0dfa -> :sswitch_43
        -0x6393895f -> :sswitch_42
        -0x58f8d9c9 -> :sswitch_41
        -0x541731ee -> :sswitch_40
        -0x4b6349e5 -> :sswitch_3f
        -0x338dde7c -> :sswitch_3e
        -0x328cea9b -> :sswitch_3d
        -0x3031dac2 -> :sswitch_3c
        -0x2aec35fd -> :sswitch_3b
        -0x289861d4 -> :sswitch_3a
        -0x217c6306 -> :sswitch_39
        -0x209f6312 -> :sswitch_38
        -0x1abe1be8 -> :sswitch_37
        -0x1463c54d -> :sswitch_36
        -0xe4f93c8 -> :sswitch_35
        -0x82e223b -> :sswitch_34
        -0x79e4957 -> :sswitch_33
        -0xaeafe -> :sswitch_32
        0x455697b -> :sswitch_31
        0x4818f00 -> :sswitch_30
        0x5f99c12 -> :sswitch_2f
        0xcfdbeea -> :sswitch_2e
        0x26e22da4 -> :sswitch_2d
        0x35fca75f -> :sswitch_2c
        0x371ffcf1 -> :sswitch_2b
        0x40d5de3a -> :sswitch_2a
        0x40dd4159 -> :sswitch_29
        0x43dae238 -> :sswitch_28
        0x4872249a -> :sswitch_27
        0x4a5511eb -> :sswitch_26
        0x4aad720a -> :sswitch_25
        0x50496a58 -> :sswitch_24
        0x532aeec2 -> :sswitch_23
        0x56ec2a87 -> :sswitch_22
        0x5b0f3e73 -> :sswitch_21
        0x5bc5408c -> :sswitch_20
        0x5cc10545 -> :sswitch_1f
        0x5e7d83d0 -> :sswitch_1e
        0x6069a832 -> :sswitch_1d
        0x612cf26c -> :sswitch_1c
        0x61f056af -> :sswitch_1b
        0x6456ce9a -> :sswitch_1a
        0x6d0b6e25 -> :sswitch_19
        0x70c56ede -> :sswitch_18
        0x755e191e -> :sswitch_17
        0x76ff3ac9 -> :sswitch_16
        0x7952407d -> :sswitch_15
        0x7bff4017 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_23
        :pswitch_1e
        :pswitch_1d
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1c
        :pswitch_22
        :pswitch_1b
        :pswitch_1b
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1a
        :pswitch_1f
        :pswitch_19
        :pswitch_23
        :pswitch_23
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_22
        :pswitch_1a
        :pswitch_18
        :pswitch_17
        :pswitch_1f
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_1f
        :pswitch_1f
        :pswitch_13
        :pswitch_22
        :pswitch_12
        :pswitch_1f
        :pswitch_11
        :pswitch_1f
        :pswitch_23
        :pswitch_1f
        :pswitch_15
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_22
        :pswitch_10
    .end packed-switch
.end method

.method public getProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderBaseModule;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    return-object v0
.end method

.method public init(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;)V
    .locals 16

    move-object/from16 v0, p1

    .line 51
    const-class v1, Ljava/lang/Character;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$85J4OD6AnWfv2g49xhZ8Ttly6GE;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$85J4OD6AnWfv2g49xhZ8Ttly6GE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    const/16 v1, 0xc

    new-array v2, v1, [Ljava/lang/Class;

    .line 53
    const-class v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 108
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    .line 98
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v3, v2, v4

    .line 53
    const-class v3, Ljava/lang/Byte;

    const/4 v8, 0x1

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-class v8, Ljava/lang/Short;

    aput-object v8, v2, v3

    const/4 v3, 0x3

    const-class v8, Ljava/lang/Integer;

    aput-object v8, v2, v3

    const/4 v3, 0x4

    const-class v8, Ljava/lang/Long;

    aput-object v8, v2, v3

    const/4 v3, 0x5

    const-class v8, Ljava/lang/Number;

    aput-object v8, v2, v3

    const/4 v3, 0x6

    const-class v8, Ljava/lang/Float;

    aput-object v8, v2, v3

    const/4 v3, 0x7

    const-class v8, Ljava/lang/Double;

    aput-object v8, v2, v3

    const/16 v3, 0x8

    const-class v8, Ljava/math/BigInteger;

    aput-object v8, v2, v3

    const/16 v3, 0x9

    const-class v8, Ljava/math/BigDecimal;

    aput-object v8, v2, v3

    const/16 v3, 0xa

    const-class v8, Ljava/util/concurrent/atomic/AtomicInteger;

    aput-object v8, v2, v3

    const/16 v3, 0xb

    const-class v8, Ljava/util/concurrent/atomic/AtomicLong;

    aput-object v8, v2, v3

    .line 68
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToBoolean;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/alibaba/fastjson2/function/impl/ToBoolean;-><init>(Ljava/lang/Boolean;)V

    move v9, v4

    :goto_0
    if-ge v9, v1, :cond_0

    .line 69
    aget-object v10, v2, v9

    .line 70
    const-class v11, Ljava/lang/Boolean;

    invoke-virtual {v0, v10, v11, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 73
    :cond_0
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToBoolean;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v3, v9}, Lcom/alibaba/fastjson2/function/impl/ToBoolean;-><init>(Ljava/lang/Boolean;)V

    move v9, v4

    :goto_1
    if-ge v9, v1, :cond_1

    .line 74
    aget-object v10, v2, v9

    .line 75
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v10, v11, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 78
    :cond_1
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToString;

    invoke-direct {v3}, Lcom/alibaba/fastjson2/function/impl/ToString;-><init>()V

    move v9, v4

    :goto_2
    if-ge v9, v1, :cond_2

    .line 79
    aget-object v10, v2, v9

    .line 80
    const-class v11, Ljava/lang/String;

    invoke-virtual {v0, v10, v11, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 83
    :cond_2
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToBigDecimal;

    invoke-direct {v3}, Lcom/alibaba/fastjson2/function/impl/ToBigDecimal;-><init>()V

    move v9, v4

    :goto_3
    if-ge v9, v1, :cond_3

    .line 84
    aget-object v10, v2, v9

    .line 85
    const-class v11, Ljava/math/BigDecimal;

    invoke-virtual {v0, v10, v11, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 88
    :cond_3
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToBigInteger;

    invoke-direct {v3}, Lcom/alibaba/fastjson2/function/impl/ToBigInteger;-><init>()V

    move v9, v4

    :goto_4
    if-ge v9, v1, :cond_4

    .line 89
    aget-object v10, v2, v9

    .line 90
    const-class v11, Ljava/math/BigInteger;

    invoke-virtual {v0, v10, v11, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 93
    :cond_4
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToByte;

    invoke-direct {v3, v8}, Lcom/alibaba/fastjson2/function/impl/ToByte;-><init>(Ljava/lang/Byte;)V

    move v9, v4

    :goto_5
    if-ge v9, v1, :cond_5

    .line 94
    aget-object v10, v2, v9

    .line 95
    const-class v11, Ljava/lang/Byte;

    invoke-virtual {v0, v10, v11, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 98
    :cond_5
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToByte;

    invoke-direct {v3, v7}, Lcom/alibaba/fastjson2/function/impl/ToByte;-><init>(Ljava/lang/Byte;)V

    move v9, v4

    :goto_6
    if-ge v9, v1, :cond_6

    .line 99
    aget-object v10, v2, v9

    .line 100
    sget-object v11, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v10, v11, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 103
    :cond_6
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToShort;

    invoke-direct {v3, v8}, Lcom/alibaba/fastjson2/function/impl/ToShort;-><init>(Ljava/lang/Short;)V

    move v9, v4

    :goto_7
    if-ge v9, v1, :cond_7

    .line 104
    aget-object v10, v2, v9

    .line 105
    const-class v11, Ljava/lang/Short;

    invoke-virtual {v0, v10, v11, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 108
    :cond_7
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToShort;

    invoke-direct {v3, v6}, Lcom/alibaba/fastjson2/function/impl/ToShort;-><init>(Ljava/lang/Short;)V

    move v9, v4

    :goto_8
    if-ge v9, v1, :cond_8

    .line 109
    aget-object v10, v2, v9

    .line 110
    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v10, v11, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 113
    :cond_8
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToInteger;

    invoke-direct {v3, v8}, Lcom/alibaba/fastjson2/function/impl/ToInteger;-><init>(Ljava/lang/Integer;)V

    move v9, v4

    :goto_9
    if-ge v9, v1, :cond_9

    .line 114
    aget-object v10, v2, v9

    .line 115
    const-class v11, Ljava/lang/Integer;

    invoke-virtual {v0, v10, v11, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 118
    :cond_9
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToInteger;

    invoke-direct {v3, v5}, Lcom/alibaba/fastjson2/function/impl/ToInteger;-><init>(Ljava/lang/Integer;)V

    move v9, v4

    :goto_a
    if-ge v9, v1, :cond_a

    .line 119
    aget-object v10, v2, v9

    .line 120
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v10, v11, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    .line 123
    :cond_a
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToLong;

    invoke-direct {v3, v8}, Lcom/alibaba/fastjson2/function/impl/ToLong;-><init>(Ljava/lang/Long;)V

    move v9, v4

    :goto_b
    if-ge v9, v1, :cond_b

    .line 124
    aget-object v10, v2, v9

    .line 125
    const-class v11, Ljava/lang/Long;

    invoke-virtual {v0, v10, v11, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 128
    :cond_b
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToLong;

    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-direct {v3, v11}, Lcom/alibaba/fastjson2/function/impl/ToLong;-><init>(Ljava/lang/Long;)V

    move v11, v4

    :goto_c
    if-ge v11, v1, :cond_c

    .line 129
    aget-object v12, v2, v11

    .line 130
    sget-object v13, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v12, v13, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 133
    :cond_c
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToFloat;

    invoke-direct {v3, v8}, Lcom/alibaba/fastjson2/function/impl/ToFloat;-><init>(Ljava/lang/Float;)V

    move v11, v4

    :goto_d
    if-ge v11, v1, :cond_d

    .line 134
    aget-object v12, v2, v11

    .line 135
    const-class v13, Ljava/lang/Float;

    invoke-virtual {v0, v12, v13, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 138
    :cond_d
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToFloat;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-direct {v3, v12}, Lcom/alibaba/fastjson2/function/impl/ToFloat;-><init>(Ljava/lang/Float;)V

    move v12, v4

    :goto_e
    if-ge v12, v1, :cond_e

    .line 139
    aget-object v13, v2, v12

    .line 140
    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v13, v14, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    .line 143
    :cond_e
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToDouble;

    invoke-direct {v3, v8}, Lcom/alibaba/fastjson2/function/impl/ToDouble;-><init>(Ljava/lang/Double;)V

    move v12, v4

    :goto_f
    if-ge v12, v1, :cond_f

    .line 144
    aget-object v13, v2, v12

    .line 145
    const-class v14, Ljava/lang/Double;

    invoke-virtual {v0, v13, v14, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 148
    :cond_f
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToDouble;

    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-direct {v3, v14}, Lcom/alibaba/fastjson2/function/impl/ToDouble;-><init>(Ljava/lang/Double;)V

    move v14, v4

    :goto_10
    if-ge v14, v1, :cond_10

    .line 149
    aget-object v15, v2, v14

    .line 150
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v15, v8, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x0

    goto :goto_10

    .line 153
    :cond_10
    new-instance v3, Lcom/alibaba/fastjson2/function/impl/ToNumber;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/alibaba/fastjson2/function/impl/ToNumber;-><init>(Ljava/lang/Number;)V

    move v8, v4

    :goto_11
    if-ge v8, v1, :cond_11

    .line 154
    aget-object v14, v2, v8

    .line 155
    const-class v15, Ljava/lang/Number;

    invoke-virtual {v0, v14, v15, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 160
    :cond_11
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/16 v14, 0x30

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-direct {v3, v8, v14}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 161
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v8, v4}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 162
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-direct {v3, v4, v8}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 163
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v3, v4, v8}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 164
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4, v7}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 165
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4, v6}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 166
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 167
    const-class v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 169
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Character;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    const-class v4, Ljava/lang/Character;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 170
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Boolean;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    const-class v4, Ljava/lang/Boolean;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 171
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Double;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    const-class v4, Ljava/lang/Double;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 172
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Float;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    const-class v4, Ljava/lang/Float;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 173
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Byte;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    const-class v4, Ljava/lang/Byte;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 174
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Short;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    const-class v4, Ljava/lang/Short;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 175
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Integer;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    const-class v4, Ljava/lang/Integer;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 176
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Long;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    const-class v4, Ljava/lang/Long;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 177
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/math/BigDecimal;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    const-class v4, Ljava/math/BigDecimal;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 178
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/math/BigInteger;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    const-class v4, Ljava/math/BigInteger;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 179
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/lang/Number;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    const-class v4, Ljava/math/BigDecimal;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 180
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/util/Collection;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    const-class v4, Ljava/util/Collection;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 181
    const-class v1, Ljava/lang/String;

    const-class v2, Ljava/util/List;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    const-class v4, Ljava/util/List;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 182
    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/alibaba/fastjson2/JSONArray;

    new-instance v3, Lcom/alibaba/fastjson2/function/impl/StringToAny;

    const-class v4, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson2/function/impl/StringToAny;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 186
    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v3, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$EdNQaVZC3wzGDzQr5MivAuAPhrk;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$EdNQaVZC3wzGDzQr5MivAuAPhrk;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 189
    sget-object v1, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$Gw-j73bfOKjHmGUTF0GIoUKJVW0;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$Gw-j73bfOKjHmGUTF0GIoUKJVW0;

    .line 192
    const-class v2, Ljava/lang/Long;

    const-class v3, Ljava/time/LocalDateTime;

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    .line 195
    sget-object v1, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$dpP5lrdlraon_zFPiHwQQbyIZdI;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderBaseModule$dpP5lrdlraon_zFPiHwQQbyIZdI;

    .line 198
    const-class v2, Ljava/lang/String;

    const-class v3, Ljava/util/UUID;

    invoke-virtual {v0, v2, v3, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->registerTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/function/Function;)Ljava/util/function/Function;

    return-void
.end method
