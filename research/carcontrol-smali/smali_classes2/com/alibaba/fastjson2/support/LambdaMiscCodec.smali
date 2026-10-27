.class public Lcom/alibaba/fastjson2/support/LambdaMiscCodec;
.super Ljava/lang/Object;
.source "LambdaMiscCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectLongFunction;,
        Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectToIntFunction;,
        Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectToLongFunction;,
        Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ConstructorFunction;,
        Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ConstructorSupplier;,
        Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectSupplier;,
        Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectBiFunction;,
        Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ConstructorBiFunction;,
        Lcom/alibaba/fastjson2/support/LambdaMiscCodec$GetterFunction;,
        Lcom/alibaba/fastjson2/support/LambdaMiscCodec$FactoryFunction;,
        Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectObjIntConsumer;
    }
.end annotation


# static fields
.field static volatile errorLast:Ljava/lang/Throwable;

.field static volatile hppcError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBiFunction(Ljava/lang/reflect/Constructor;)Ljava/util/function/BiFunction;
    .locals 10

    .line 553
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 554
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 555
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    .line 556
    aget-object v4, v2, v3

    const/4 v5, 0x1

    .line 557
    aget-object v2, v2, v5

    .line 559
    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array v7, v5, [Ljava/lang/Class;

    aput-object v2, v7, v3

    .line 561
    invoke-static {v6, v4, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 559
    invoke-virtual {v1, v0, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    const-string v7, "apply"

    .line 564
    sget-object v8, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_BI_FUNCTION:Ljava/lang/invoke/MethodType;

    sget-object v9, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT_OBJECT_OBJECT:Ljava/lang/invoke/MethodType;

    new-array v5, v5, [Ljava/lang/Class;

    aput-object v2, v5, v3

    .line 570
    invoke-static {v0, v4, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v6

    move-object v6, v0

    .line 564
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/BiFunction;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 574
    sput-object v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->errorLast:Ljava/lang/Throwable;

    .line 577
    new-instance v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ConstructorBiFunction;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ConstructorBiFunction;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static createBiFunction(Ljava/lang/reflect/Method;)Ljava/util/function/BiFunction;
    .locals 9

    .line 509
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 510
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 511
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    .line 512
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    .line 513
    aget-object v5, v3, v4

    .line 517
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    .line 518
    aget-object v3, v3, v7

    .line 522
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v3, v8, v4

    .line 523
    invoke-static {v1, v5, v8}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v8

    .line 520
    invoke-virtual {v2, v0, v6, v8}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    new-array v6, v7, [Ljava/lang/Class;

    aput-object v3, v6, v4

    .line 525
    invoke-static {v1, v5, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    move-object v6, v0

    move-object v7, v1

    goto :goto_0

    .line 529
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 530
    invoke-static {v1, v5}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 527
    invoke-virtual {v2, v0, v3, v6}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    new-array v6, v7, [Ljava/lang/Class;

    aput-object v5, v6, v4

    .line 532
    invoke-static {v1, v0, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    move-object v7, v0

    move-object v6, v3

    :goto_0
    const-string v3, "apply"

    .line 535
    sget-object v4, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_BI_FUNCTION:Ljava/lang/invoke/MethodType;

    sget-object v5, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT_OBJECT_OBJECT:Ljava/lang/invoke/MethodType;

    invoke-static/range {v2 .. v7}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 543
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/BiFunction;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 545
    sput-object v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->errorLast:Ljava/lang/Throwable;

    .line 548
    new-instance v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectBiFunction;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectBiFunction;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public static createFunction(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;
    .locals 7

    .line 429
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 430
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 431
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    .line 432
    aget-object v2, v2, v3

    .line 434
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 436
    invoke-static {v3, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v3

    .line 434
    invoke-virtual {v1, v0, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string v3, "apply"

    .line 439
    sget-object v4, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_FUNCTION:Ljava/lang/invoke/MethodType;

    sget-object v6, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT_OBJECT:Ljava/lang/invoke/MethodType;

    .line 445
    invoke-static {v0, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v0

    .line 439
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 447
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Function;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 449
    sput-object v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->errorLast:Ljava/lang/Throwable;

    .line 452
    new-instance v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ConstructorFunction;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ConstructorFunction;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;
    .locals 10

    .line 675
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 676
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    .line 677
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 679
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    .line 680
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 682
    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    if-eqz v1, :cond_0

    const/4 v4, 0x0

    .line 683
    aget-object v2, v2, v4

    goto :goto_0

    .line 684
    :cond_0
    array-length v2, v2

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    move-object v2, v0

    .line 691
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v4

    if-eqz v1, :cond_1

    .line 696
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 697
    invoke-static {v3, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 694
    invoke-virtual {v4, v0, v1, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    goto :goto_1

    .line 702
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-static {v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    .line 700
    invoke-virtual {v4, v0, v1, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    :goto_1
    move-object v8, v0

    const-string v5, "apply"

    .line 706
    sget-object v6, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_FUNCTION:Ljava/lang/invoke/MethodType;

    sget-object v7, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT_OBJECT:Ljava/lang/invoke/MethodType;

    .line 712
    invoke-static {v3, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v9

    .line 706
    invoke-static/range {v4 .. v9}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Function;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 716
    sput-object v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->errorLast:Ljava/lang/Throwable;

    .line 719
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 720
    new-instance v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$GetterFunction;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$GetterFunction;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0

    .line 723
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$FactoryFunction;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$FactoryFunction;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0

    .line 687
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not support parameters "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createLongFunction(Ljava/lang/reflect/Constructor;)Ljava/util/function/LongFunction;
    .locals 7

    .line 352
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 354
    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_VOID_LONG:Ljava/lang/invoke/MethodType;

    .line 355
    invoke-virtual {v1, v0, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    .line 359
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    const-string v2, "apply"

    .line 360
    sget-object v3, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_LONG_FUNCTION:Ljava/lang/invoke/MethodType;

    sget-object v4, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT_LONG:Ljava/lang/invoke/MethodType;

    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/LongFunction;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 370
    sput-object v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->errorLast:Ljava/lang/Throwable;

    .line 372
    new-instance v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectLongFunction;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectLongFunction;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static createObjIntConsumer(Ljava/lang/reflect/Method;)Ljava/util/function/ObjIntConsumer;
    .locals 10

    .line 727
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 729
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 730
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 734
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 732
    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string v2, "accept"

    .line 737
    sget-object v3, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT_INT_CONSUMER:Ljava/lang/invoke/MethodType;

    sget-object v4, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_VOID_OBJECT_INT:Ljava/lang/invoke/MethodType;

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 743
    invoke-static {v6, v0, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 737
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 745
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/ObjIntConsumer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 747
    sput-object v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->errorLast:Ljava/lang/Throwable;

    .line 749
    new-instance v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectObjIntConsumer;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectObjIntConsumer;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public static createSupplier(Ljava/lang/reflect/Constructor;)Ljava/util/function/Supplier;
    .locals 7

    .line 457
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 458
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 459
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 461
    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 459
    invoke-virtual {v1, v0, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string v2, "get"

    .line 464
    sget-object v3, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_SUPPLIER:Ljava/lang/invoke/MethodType;

    sget-object v4, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT:Ljava/lang/invoke/MethodType;

    .line 470
    invoke-static {v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 464
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Supplier;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 474
    sput-object v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->errorLast:Ljava/lang/Throwable;

    .line 477
    new-instance v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ConstructorSupplier;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ConstructorSupplier;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public static createSupplier(Ljava/lang/reflect/Method;)Ljava/util/function/Supplier;
    .locals 8

    .line 482
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 483
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 484
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v2

    .line 487
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-static {v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v4

    .line 485
    invoke-virtual {v2, v0, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v6

    const-string v3, "get"

    .line 491
    sget-object v4, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_SUPPLIER:Ljava/lang/invoke/MethodType;

    sget-object v5, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_OBJECT:Ljava/lang/invoke/MethodType;

    .line 497
    invoke-static {v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    .line 491
    invoke-static/range {v2 .. v7}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 499
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/Supplier;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 501
    sput-object v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->errorLast:Ljava/lang/Throwable;

    .line 504
    new-instance v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectSupplier;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectSupplier;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public static createToIntFunction(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;
    .locals 7

    .line 376
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 378
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 379
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 383
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string v2, "applyAsInt"

    .line 386
    sget-object v3, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_TO_INT_FUNCTION:Ljava/lang/invoke/MethodType;

    sget-object v4, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_INT_OBJECT:Ljava/lang/invoke/MethodType;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 392
    invoke-static {v6, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 386
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/ToIntFunction;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 396
    sput-object v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->errorLast:Ljava/lang/Throwable;

    .line 398
    new-instance v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectToIntFunction;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectToIntFunction;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public static createToLongFunction(Ljava/lang/reflect/Method;)Ljava/util/function/ToLongFunction;
    .locals 7

    .line 402
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 404
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    .line 405
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 409
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v5

    const-string v2, "applyAsLong"

    .line 412
    sget-object v3, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_TO_LONG_FUNCTION:Ljava/lang/invoke/MethodType;

    sget-object v4, Lcom/alibaba/fastjson2/util/TypeUtils;->METHOD_TYPE_LONG_OBJECT:Ljava/lang/invoke/MethodType;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 418
    invoke-static {v6, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    .line 412
    invoke-static/range {v1 .. v6}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    invoke-polymorphic {v0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/ToLongFunction;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception v0

    .line 422
    sput-object v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->errorLast:Ljava/lang/Throwable;

    .line 424
    new-instance v0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectToLongFunction;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec$ReflectToLongFunction;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public static getObjectReader(Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 13

    .line 164
    const-class v0, [D

    const-class v1, [F

    const-class v2, [J

    const-class v3, [I

    const-class v4, [S

    const-class v5, [C

    const-class v6, [B

    sget-boolean v7, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->hppcError:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    return-object v8

    .line 168
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 170
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const/4 v9, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v10, "gnu.trove.list.array.TDoubleArrayList"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v9, 0x16

    goto/16 :goto_0

    :sswitch_1
    const-string v10, "com.carrotsearch.hppc.LongArrayList"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v9, 0x15

    goto/16 :goto_0

    :sswitch_2
    const-string v10, "gnu.trove.set.hash.TByteHashSet"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v9, 0x14

    goto/16 :goto_0

    :sswitch_3
    const-string v10, "org.bson.types.Decimal128"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v9, 0x13

    goto/16 :goto_0

    :sswitch_4
    const-string v10, "gnu.trove.list.array.TByteArrayList"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v9, 0x12

    goto/16 :goto_0

    :sswitch_5
    const-string v10, "gnu.trove.list.array.TIntArrayList"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v9, 0x11

    goto/16 :goto_0

    :sswitch_6
    const-string v10, "com.carrotsearch.hppc.IntHashSet"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v9, 0x10

    goto/16 :goto_0

    :sswitch_7
    const-string v10, "com.carrotsearch.hppc.FloatArrayList"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v9, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string v10, "gnu.trove.stack.array.TByteArrayStack"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v9, 0xe

    goto/16 :goto_0

    :sswitch_9
    const-string v10, "gnu.trove.list.array.TFloatArrayList"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v9, 0xd

    goto/16 :goto_0

    :sswitch_a
    const-string v10, "gnu.trove.list.array.TCharArrayList"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v9, 0xc

    goto/16 :goto_0

    :sswitch_b
    const-string v10, "gnu.trove.set.hash.TLongHashSet"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v9, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v10, "com.carrotsearch.hppc.ByteArrayList"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v9, 0xa

    goto/16 :goto_0

    :sswitch_d
    const-string v10, "com.carrotsearch.hppc.DoubleArrayList"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v9, 0x9

    goto/16 :goto_0

    :sswitch_e
    const-string v10, "com.carrotsearch.hppc.ShortArrayList"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v9, 0x8

    goto/16 :goto_0

    :sswitch_f
    const-string v10, "gnu.trove.set.hash.TIntHashSet"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto :goto_0

    :cond_10
    const/4 v9, 0x7

    goto :goto_0

    :sswitch_10
    const-string v10, "gnu.trove.list.array.TShortArrayList"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto :goto_0

    :cond_11
    const/4 v9, 0x6

    goto :goto_0

    :sswitch_11
    const-string v10, "gnu.trove.list.array.TLongArrayList"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_0

    :cond_12
    const/4 v9, 0x5

    goto :goto_0

    :sswitch_12
    const-string v10, "com.carrotsearch.hppc.IntArrayList"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    goto :goto_0

    :cond_13
    const/4 v9, 0x4

    goto :goto_0

    :sswitch_13
    const-string v10, "com.carrotsearch.hppc.CharArrayList"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    goto :goto_0

    :cond_14
    const/4 v9, 0x3

    goto :goto_0

    :sswitch_14
    const-string v10, "com.carrotsearch.hppc.CharHashSet"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    goto :goto_0

    :cond_15
    const/4 v9, 0x2

    goto :goto_0

    :sswitch_15
    const-string v10, "gnu.trove.set.hash.TShortHashSet"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    goto :goto_0

    :cond_16
    move v9, v11

    goto :goto_0

    :sswitch_16
    const-string v10, "com.carrotsearch.hppc.LongHashSet"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    goto :goto_0

    :cond_17
    move v9, v12

    :goto_0
    const-string v7, "from"

    const-string v10, "illegal state"

    packed-switch v9, :pswitch_data_0

    return-object v8

    :pswitch_0
    :try_start_0
    new-array v1, v11, [Ljava/lang/Class;

    aput-object v0, v1, v12

    .line 326
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 325
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 324
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromDoubleArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 330
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_1
    :try_start_1
    new-array v0, v11, [Ljava/lang/Class;

    .line 335
    const-class v1, Ljava/math/BigDecimal;

    aput-object v1, v0, v12

    .line 337
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 336
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 335
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromBigDecimal(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    .line 341
    :goto_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_2
    :try_start_2
    new-array v0, v11, [Ljava/lang/Class;

    aput-object v1, v0, v12

    .line 233
    invoke-virtual {p0, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 232
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 231
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromFloatArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4

    return-object p0

    :catch_4
    move-exception p0

    goto :goto_3

    :catch_5
    move-exception p0

    .line 237
    :goto_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_3
    :try_start_3
    new-array v0, v11, [Ljava/lang/Class;

    aput-object v6, v0, v12

    .line 257
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 256
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 255
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromByteArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    goto :goto_4

    :catch_7
    move-exception p0

    .line 261
    :goto_4
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_4
    :try_start_4
    new-array v0, v11, [Ljava/lang/Class;

    aput-object v1, v0, v12

    .line 315
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 314
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 313
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromFloatArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    goto :goto_5

    :catch_9
    move-exception p0

    .line 319
    :goto_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_5
    :try_start_5
    new-array v0, v11, [Ljava/lang/Class;

    aput-object v5, v0, v12

    .line 268
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 267
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 266
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromCharArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    goto :goto_6

    :catch_b
    move-exception p0

    .line 272
    :goto_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_6
    :try_start_6
    new-array v0, v11, [Ljava/lang/Class;

    aput-object v6, v0, v12

    .line 175
    invoke-virtual {p0, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 174
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 173
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromByteArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    goto :goto_7

    :catch_d
    move-exception p0

    .line 179
    :goto_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_7
    :try_start_7
    new-array v1, v11, [Ljava/lang/Class;

    aput-object v0, v1, v12

    .line 244
    invoke-virtual {p0, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 243
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 242
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromDoubleArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    goto :goto_8

    :catch_f
    move-exception p0

    .line 248
    :goto_8
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_8
    :try_start_8
    new-array v0, v11, [Ljava/lang/Class;

    aput-object v4, v0, v12

    .line 186
    invoke-virtual {p0, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 185
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 184
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromShortArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_10

    return-object p0

    :catch_10
    move-exception p0

    goto :goto_9

    :catch_11
    move-exception p0

    .line 190
    :goto_9
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_9
    :try_start_9
    new-array v0, v11, [Ljava/lang/Class;

    aput-object v3, v0, v12

    .line 292
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 291
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 290
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromIntArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_12

    return-object p0

    :catch_12
    move-exception p0

    goto :goto_a

    :catch_13
    move-exception p0

    .line 296
    :goto_a
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_a
    :try_start_a
    new-array v0, v11, [Ljava/lang/Class;

    aput-object v2, v0, v12

    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 303
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 302
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromLongArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    goto :goto_b

    :catch_15
    move-exception p0

    .line 308
    :goto_b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_b
    :try_start_b
    new-array v0, v11, [Ljava/lang/Class;

    aput-object v3, v0, v12

    .line 198
    invoke-virtual {p0, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 197
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 196
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromIntArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    goto :goto_c

    :catch_17
    move-exception p0

    .line 202
    :goto_c
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_c
    :try_start_c
    new-array v0, v11, [Ljava/lang/Class;

    aput-object v5, v0, v12

    .line 222
    invoke-virtual {p0, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 221
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 220
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromCharArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_c} :catch_19
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_18

    return-object p0

    :catch_18
    move-exception p0

    goto :goto_d

    :catch_19
    move-exception p0

    .line 226
    :goto_d
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_d
    :try_start_d
    new-array v0, v11, [Ljava/lang/Class;

    aput-object v4, v0, v12

    .line 280
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    .line 279
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Constructor;)Ljava/util/function/Function;

    move-result-object p0

    .line 278
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromShortArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_d} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    goto :goto_e

    :catch_1b
    move-exception p0

    .line 284
    :goto_e
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_e
    :try_start_e
    new-array v0, v11, [Ljava/lang/Class;

    aput-object v2, v0, v12

    .line 210
    invoke-virtual {p0, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 209
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 208
    invoke-static {p0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fromLongArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_e .. :try_end_e} :catch_1d
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_e} :catch_1c

    return-object p0

    :catch_1c
    move-exception p0

    goto :goto_f

    :catch_1d
    move-exception p0

    .line 214
    :goto_f
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {v0, v10, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x68ba7345 -> :sswitch_16
        -0x644c0dfa -> :sswitch_15
        -0x6393895f -> :sswitch_14
        -0x338dde7c -> :sswitch_13
        -0x328cea9b -> :sswitch_12
        -0x3031dac2 -> :sswitch_11
        -0x1abe1be8 -> :sswitch_10
        -0x1463c54d -> :sswitch_f
        -0xe4f93c8 -> :sswitch_e
        -0x79e4957 -> :sswitch_d
        0x5f99c12 -> :sswitch_c
        0xcfdbeea -> :sswitch_b
        0x26e22da4 -> :sswitch_a
        0x43dae238 -> :sswitch_9
        0x47401d82 -> :sswitch_8
        0x50496a58 -> :sswitch_7
        0x532aeec2 -> :sswitch_6
        0x5cc10545 -> :sswitch_5
        0x6069a832 -> :sswitch_4
        0x61f056af -> :sswitch_3
        0x70c56ede -> :sswitch_2
        0x755e191e -> :sswitch_1
        0x76ff3ac9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_b
        :pswitch_9
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_e
        :pswitch_0
    .end packed-switch
.end method

.method public static getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 11

    .line 22
    sget-boolean p0, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->hppcError:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    .line 26
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "gnu.trove.list.array.TDoubleArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x17

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "com.carrotsearch.hppc.LongArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x16

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "gnu.trove.set.hash.TByteHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x15

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "org.bson.types.Decimal128"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x14

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "gnu.trove.list.array.TByteArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x13

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "gnu.trove.list.array.TIntArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "com.carrotsearch.hppc.IntHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "com.carrotsearch.hppc.FloatArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "gnu.trove.stack.array.TByteArrayStack"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "gnu.trove.list.array.TFloatArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "gnu.trove.list.array.TCharArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "gnu.trove.set.hash.TLongHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_c
    const-string v2, "com.carrotsearch.hppc.ByteArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_d
    const-string v2, "com.carrotsearch.hppc.DoubleArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_e
    const-string v2, "com.carrotsearch.hppc.ShortArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "gnu.trove.set.hash.TIntHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "gnu.trove.list.array.TShortArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_11
    const-string v2, "com.carrotsearch.hppc.BitSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_12
    const-string v2, "gnu.trove.list.array.TLongArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_13
    const-string v2, "com.carrotsearch.hppc.IntArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_14
    const-string v2, "com.carrotsearch.hppc.CharArrayList"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_15
    const-string v2, "com.carrotsearch.hppc.CharHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_16
    const-string v2, "gnu.trove.set.hash.TShortHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    goto :goto_0

    :cond_17
    move v1, v3

    goto :goto_0

    :sswitch_17
    const-string v2, "com.carrotsearch.hppc.LongHashSet"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_0

    :cond_18
    move v1, v4

    :goto_0
    const-string/jumbo p0, "toArray"

    const-string v2, "illegal state"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    :try_start_0
    const-string p0, "bigDecimalValue"

    new-array v0, v4, [Ljava/lang/Class;

    .line 151
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 150
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 149
    invoke-static {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->ofToBigDecimal(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 155
    :goto_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_1
    :try_start_1
    new-array v0, v4, [Ljava/lang/Class;

    .line 102
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 101
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 100
    invoke-static {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->ofToFloatArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    .line 106
    :goto_2
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_2
    :try_start_2
    new-array v0, v4, [Ljava/lang/Class;

    .line 36
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->ofToByteArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_4

    return-object p0

    :catch_4
    move-exception p0

    goto :goto_3

    :catch_5
    move-exception p0

    .line 40
    :goto_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_3
    :try_start_3
    new-array v0, v4, [Ljava/lang/Class;

    .line 114
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 113
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 112
    invoke-static {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->ofToDoubleArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_6

    return-object p0

    :catch_6
    move-exception p0

    goto :goto_4

    :catch_7
    move-exception p0

    .line 118
    :goto_4
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 122
    :pswitch_4
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/JDKUtils;->trustedLookup(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object p0

    :try_start_4
    const-string/jumbo v1, "size"

    new-array v2, v4, [Ljava/lang/Class;

    .line 125
    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 124
    invoke-static {v1}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createToLongFunction(Ljava/lang/reflect/Method;)Ljava/util/function/ToLongFunction;

    move-result-object v1

    const-string v2, "get"

    .line 128
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v5

    invoke-virtual {p0, p1, v2, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v8

    const-string v5, "apply"

    .line 129
    const-class v2, Ljava/util/function/BiFunction;

    .line 132
    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v6

    const-class v2, Ljava/lang/Object;

    const-class v7, Ljava/lang/Object;

    new-array v9, v3, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Object;

    aput-object v10, v9, v4

    .line 133
    invoke-static {v2, v7, v9}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v7

    const-class v2, Ljava/lang/Boolean;

    new-array v9, v3, [Ljava/lang/Class;

    const-class v10, Ljava/lang/Integer;

    aput-object v10, v9, v4

    .line 135
    invoke-static {v2, p1, v9}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v9

    move-object v4, p0

    .line 129
    invoke-static/range {v4 .. v9}, Ljava/lang/invoke/LambdaMetafactory;->metafactory(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodType;Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/CallSite;

    move-result-object p0

    .line 138
    invoke-virtual {p0}, Ljava/lang/invoke/CallSite;->getTarget()Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    invoke-polymorphic {p0}, Ljava/lang/invoke/MethodHandle;->invokeExact([Ljava/lang/Object;)Ljava/lang/Object;, ()Ljava/util/function/BiFunction;

    move-result-object p0

    .line 140
    invoke-static {v1, p0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->ofToBooleanArray(Ljava/util/function/ToLongFunction;Ljava/util/function/BiFunction;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object p0

    .line 142
    :catchall_0
    sput-boolean v3, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->hppcError:Z

    :goto_5
    return-object v0

    :pswitch_5
    :try_start_5
    new-array v0, v4, [Ljava/lang/Class;

    .line 63
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 62
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 61
    invoke-static {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->ofToIntArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_8

    return-object p0

    :catch_8
    move-exception p0

    goto :goto_6

    :catch_9
    move-exception p0

    .line 67
    :goto_6
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_6
    :try_start_6
    new-array v0, v4, [Ljava/lang/Class;

    .line 90
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 89
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 88
    invoke-static {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->ofToCharArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    goto :goto_7

    :catch_b
    move-exception p0

    .line 94
    :goto_7
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_7
    :try_start_7
    new-array v0, v4, [Ljava/lang/Class;

    .line 49
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 47
    invoke-static {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->ofToShortArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    goto :goto_8

    :catch_d
    move-exception p0

    .line 53
    :goto_8
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_8
    :try_start_8
    new-array v0, v4, [Ljava/lang/Class;

    .line 77
    invoke-virtual {p1, p0, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 76
    invoke-static {p0}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p0

    .line 75
    invoke-static {p0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->ofToLongArray(Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p0
    :try_end_8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8} :catch_f
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    goto :goto_9

    :catch_f
    move-exception p0

    .line 81
    :goto_9
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    invoke-direct {p1, v2, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68ba7345 -> :sswitch_17
        -0x644c0dfa -> :sswitch_16
        -0x6393895f -> :sswitch_15
        -0x338dde7c -> :sswitch_14
        -0x328cea9b -> :sswitch_13
        -0x3031dac2 -> :sswitch_12
        -0x29dfa02e -> :sswitch_11
        -0x1abe1be8 -> :sswitch_10
        -0x1463c54d -> :sswitch_f
        -0xe4f93c8 -> :sswitch_e
        -0x79e4957 -> :sswitch_d
        0x5f99c12 -> :sswitch_c
        0xcfdbeea -> :sswitch_b
        0x26e22da4 -> :sswitch_a
        0x43dae238 -> :sswitch_9
        0x47401d82 -> :sswitch_8
        0x50496a58 -> :sswitch_7
        0x532aeec2 -> :sswitch_6
        0x5cc10545 -> :sswitch_5
        0x6069a832 -> :sswitch_4
        0x61f056af -> :sswitch_3
        0x70c56ede -> :sswitch_2
        0x755e191e -> :sswitch_1
        0x76ff3ac9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method
