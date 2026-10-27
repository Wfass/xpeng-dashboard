.class public abstract Lcom/alibaba/fastjson2/util/BeanUtils;
.super Ljava/lang/Object;
.source "BeanUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/util/BeanUtils$ParameterizedTypeImpl;,
        Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;,
        Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;
    }
.end annotation


# static fields
.field static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

.field static final IGNORE_CLASS_HASH_CODES:[J

.field private static volatile RECORD_CLASS:Ljava/lang/Class; = null

.field private static volatile RECORD_COMPONENT_GET_NAME:Ljava/lang/reflect/Method; = null

.field private static volatile RECORD_GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method; = null

.field public static final SUPER:Ljava/lang/String; = "$super$"

.field static final constructorCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field static final declaredFieldCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field static final fieldCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field static final fieldMapCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field static final methodCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 29
    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldMapCache:Ljava/util/concurrent/ConcurrentMap;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFieldCache:Ljava/util/concurrent/ConcurrentMap;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    const/16 v0, 0x12

    new-array v0, v0, [J

    .line 43
    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->IGNORE_CLASS_HASH_CODES:[J

    return-void

    :array_0
    .array-data 8
        -0x7fe14675c6e281e1L    # -4.272804514210842E-308
        -0x7d5332188ef25c25L    # -8.808699383999564E-296
        -0x73acd7a716c34e78L
        -0x60a1a75d8653473aL
        -0x437d55dca872512eL    # -3.237792287094886E-17
        -0x32b401e0b2c4667aL    # -2.303102901811349E64
        -0x2720160768db7a35L    # -1.2876530007315451E120
        -0x1fcd7811e020965bL    # -2.4845978360894956E155
        -0x19230d4057603c25L    # -3.1489041377014058E187
        -0xbff1c3eda3ed4e4L    # -6.046269003260744E250
        0x1f058784fd3287L
        0x167013c659b2b614L
        0x1e0abc80fed25fc9L    # 5.803558694282742E-164
        0x33aeffe0d493ee1eL    # 9.645525694076221E-60
        0x373136f038d5f827L    # 7.71929495799449E-43
        0x43c1fb59f73b146aL    # 2.5914564723642747E18
        0x6ec2bc55b88d6d8eL    # 3.46749863920774E225
        0x73cc3841eb89dca1L    # 6.313928724149063E249
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 620
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 622
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 623
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    :cond_0
    array-length p0, v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p0, :cond_6

    aget-object v3, v1, v2

    .line 627
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 630
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 631
    const-class v5, Ljava/lang/Object;

    if-ne v4, v5, :cond_2

    goto :goto_2

    .line 635
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "annotationType"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "hashCode"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "toString"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    move v5, v0

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 644
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_2
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_2
        0x8cdac1b -> :sswitch_1
        0x5620bf09 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .locals 1

    .line 1683
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static buildMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    .line 329
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 331
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 332
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    :cond_0
    array-length p0, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_4

    aget-object v2, v1, v0

    .line 336
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 337
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 341
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 345
    :cond_2
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3

    .line 1723
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1724
    check-cast p0, Ljava/lang/Class;

    .line 1725
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    move-object p0, v0

    :cond_0
    return-object p0

    .line 1726
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 1727
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 1728
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$ParameterizedTypeImpl;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1729
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/alibaba/fastjson2/util/BeanUtils$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1730
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_3

    .line 1731
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 1732
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    .line 1733
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    .line 1734
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 1735
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_4
    return-object p0
.end method

.method static checkArgument(Z)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    .line 2332
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method static checkNotPrimitive(Ljava/lang/reflect/Type;)V
    .locals 1

    .line 2007
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->checkArgument(Z)V

    return-void
.end method

.method public static cleanupCache(Ljava/lang/Class;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 2443
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2444
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldMapCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2445
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2446
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static cleanupCache(Ljava/lang/ClassLoader;)V
    .locals 2

    .line 2451
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2452
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2453
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 2454
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 2455
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2459
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldMapCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2460
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2461
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 2462
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, p0, :cond_2

    .line 2463
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 2467
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2468
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2469
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 2470
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, p0, :cond_4

    .line 2471
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 2475
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2476
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2477
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 2478
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, p0, :cond_6

    .line 2479
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 2483
    :cond_7
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2484
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2485
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 2486
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v1, p0, :cond_8

    .line 2487
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_9
    return-void
.end method

.method public static constructor(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/reflect/Constructor;",
            ">;)V"
        }
    .end annotation

    .line 354
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    .line 356
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 357
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->isRecord(Ljava/lang/Class;)Z

    move-result p0

    .line 361
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    if-eqz p0, :cond_1

    .line 362
    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 365
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static dashes(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9

    .line 1547
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1549
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    if-nez v1, :cond_0

    const/16 v1, 0x80

    new-array v1, v1, [C

    :cond_0
    const/4 v2, 0x0

    move v3, p1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_6

    .line 1556
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    const/16 v7, 0x5a

    const/16 v8, 0x41

    if-eqz p2, :cond_3

    if-lt v5, v8, :cond_1

    if-gt v5, v7, :cond_1

    if-le v3, p1, :cond_2

    add-int/lit8 v7, v4, 0x1

    .line 1560
    aput-char v6, v1, v4

    move v4, v7

    goto :goto_1

    :cond_1
    const/16 v6, 0x61

    if-lt v5, v6, :cond_2

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_2

    add-int/lit8 v5, v5, -0x20

    int-to-char v5, v5

    :cond_2
    :goto_1
    add-int/lit8 v6, v4, 0x1

    .line 1567
    aput-char v5, v1, v4

    goto :goto_2

    :cond_3
    if-lt v5, v8, :cond_5

    if-gt v5, v7, :cond_5

    if-le v3, p1, :cond_4

    add-int/lit8 v7, v4, 0x1

    .line 1571
    aput-char v6, v1, v4

    move v4, v7

    :cond_4
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v5, v5, 0x20

    int-to-char v5, v5

    .line 1573
    aput-char v5, v1, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v4, 0x1

    .line 1575
    aput-char v5, v1, v4

    :goto_2
    move v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1579
    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1581
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1582
    throw p0
.end method

.method public static declaredFields(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_f

    if-nez p1, :cond_0

    goto/16 :goto_9

    .line 224
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->ignore(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$$Lambda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_9

    .line 228
    :cond_1
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 230
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFields(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void

    .line 234
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 237
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_3

    .line 240
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.protobuf.GeneratedMessageV3"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 242
    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFields(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_3
    move v2, v1

    .line 246
    :cond_4
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Field;

    if-nez v3, :cond_a

    .line 250
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 251
    invoke-interface {v0, p0, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    new-array v3, v1, [Ljava/lang/reflect/Field;

    .line 257
    :goto_1
    array-length v0, v3

    move v4, v1

    :goto_2
    if-ge v4, v0, :cond_6

    aget-object v5, v3, v4

    .line 258
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .line 259
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_7

    goto :goto_6

    .line 268
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, v3

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 269
    array-length v4, v3

    move v5, v1

    :goto_4
    if-ge v5, v4, :cond_9

    aget-object v6, v3, v5

    .line 270
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    .line 271
    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_5

    .line 274
    :cond_8
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 276
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/reflect/Field;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Field;

    move-object v3, v0

    .line 279
    :goto_6
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :cond_a
    array-length p0, v3

    :goto_7
    if-ge v1, p0, :cond_f

    aget-object v0, v3, v1

    .line 283
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v2, :cond_c

    .line 289
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "cardsmap_"

    .line 291
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 292
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.protobuf.MapField"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    return-void

    .line 297
    :cond_c
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    .line 298
    const-class v5, Ljava/util/AbstractMap;

    if-eq v4, v5, :cond_e

    const-class v5, Ljava/util/HashMap;

    if-eq v4, v5, :cond_e

    const-class v5, Ljava/util/LinkedHashMap;

    if-eq v4, v5, :cond_e

    const-class v5, Ljava/util/TreeMap;

    if-eq v4, v5, :cond_e

    const-class v5, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne v4, v5, :cond_d

    goto :goto_8

    .line 307
    :cond_d
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_e
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    :goto_9
    return-void
.end method

.method private static declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2000
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object p0

    .line 2001
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 2002
    check-cast p0, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static dots(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9

    .line 1586
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1588
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    if-nez v1, :cond_0

    const/16 v1, 0x80

    new-array v1, v1, [C

    :cond_0
    const/4 v2, 0x0

    move v3, p1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_6

    .line 1595
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2e

    const/16 v7, 0x5a

    const/16 v8, 0x41

    if-eqz p2, :cond_3

    if-lt v5, v8, :cond_1

    if-gt v5, v7, :cond_1

    if-le v3, p1, :cond_2

    add-int/lit8 v7, v4, 0x1

    .line 1599
    aput-char v6, v1, v4

    move v4, v7

    goto :goto_1

    :cond_1
    const/16 v6, 0x61

    if-lt v5, v6, :cond_2

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_2

    add-int/lit8 v5, v5, -0x20

    int-to-char v5, v5

    :cond_2
    :goto_1
    add-int/lit8 v6, v4, 0x1

    .line 1606
    aput-char v5, v1, v4

    goto :goto_2

    :cond_3
    if-lt v5, v8, :cond_5

    if-gt v5, v7, :cond_5

    if-le v3, p1, :cond_4

    add-int/lit8 v7, v4, 0x1

    .line 1610
    aput-char v6, v1, v4

    move v4, v7

    :cond_4
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v5, v5, 0x20

    int-to-char v5, v5

    .line 1612
    aput-char v5, v1, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v4, 0x1

    .line 1614
    aput-char v5, v1, v4

    :goto_2
    move v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1618
    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1620
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1621
    throw p0
.end method

.method static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1772
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1782
    :cond_0
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 1784
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1785
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1786
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_2

    return v2

    .line 1791
    :cond_2
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 1792
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 1793
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1794
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1795
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0

    .line 1796
    :cond_4
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_6

    .line 1797
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_5

    return v2

    .line 1801
    :cond_5
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 1802
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 1803
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result p0

    return p0

    .line 1804
    :cond_6
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_9

    .line 1805
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_7

    return v2

    .line 1809
    :cond_7
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 1810
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 1811
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1812
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_1

    :cond_8
    move v0, v2

    :goto_1
    return v0

    .line 1813
    :cond_9
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_c

    .line 1814
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_a

    return v2

    .line 1817
    :cond_a
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 1818
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .line 1819
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v3

    if-ne v1, v3, :cond_b

    .line 1820
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_2

    :cond_b
    move v0, v2

    :goto_2
    return v0

    :cond_c
    return v2
.end method

.method public static fieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "CamelCase"

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-eqz p0, :cond_1e

    .line 1331
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    .line 1335
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "SnakeCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "UpperCaseWithUnderScores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "CamelCase1x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "LowerCaseWithDashes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "LowerCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "KebabCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "UpperCamelCaseWithSpaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "PascalCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "LowerCaseWithDots"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "UpperCamelCaseWithDots"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "UpperCamelCaseWithDashes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_c
    const-string v0, "UpperCaseWithDashes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_d
    const-string v0, "UpperCamelCaseWithUnderScores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_e
    const-string v0, "NoChange"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_f
    const-string v0, "LowerCaseWithUnderScores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_10
    const-string v0, "NeverUseThisValueExceptDefaultValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_11
    const-string v0, "UpperCaseWithDots"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    move v1, v3

    goto :goto_0

    :sswitch_12
    const-string v0, "UpperCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    move v1, v4

    :goto_0
    const/16 v0, 0x2d

    const/16 v2, 0x5f

    const/16 v5, 0x5a

    const/16 v6, 0x41

    const/16 v7, 0x20

    packed-switch v1, :pswitch_data_0

    .line 1422
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1380
    :pswitch_0
    invoke-static {p0, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->snakeCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1382
    :pswitch_1
    invoke-static {p0, v4, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->underScores(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1351
    :pswitch_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-lt p1, v6, :cond_15

    if-gt p1, v5, :cond_15

    .line 1352
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_15

    .line 1353
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    add-int/2addr p1, v7

    int-to-char p1, p1

    .line 1354
    aput-char p1, p0, v4

    .line 1355
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_15
    return-object p0

    .line 1388
    :pswitch_3
    invoke-static {p0, v4, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->dashes(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1396
    :pswitch_4
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1406
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1407
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_18

    .line 1408
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v6, :cond_17

    if-gt v1, v5, :cond_17

    add-int/lit8 v1, v1, 0x20

    int-to-char v1, v1

    if-lez v4, :cond_16

    .line 1412
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1414
    :cond_16
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1416
    :cond_17
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1419
    :cond_18
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1398
    :pswitch_6
    invoke-static {p0, v4, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->upperCamelWith(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1360
    :pswitch_7
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x7a

    const/16 v1, 0x61

    if-lt p1, v1, :cond_19

    if-gt p1, v0, :cond_19

    .line 1363
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_19

    .line 1364
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v1, :cond_19

    if-gt v5, v0, :cond_19

    .line 1366
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    sub-int/2addr p1, v7

    int-to-char p1, p1

    .line 1367
    aput-char p1, p0, v4

    .line 1368
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_19
    if-ne p1, v2, :cond_1a

    .line 1370
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v3, :cond_1a

    .line 1371
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-lt p1, v1, :cond_1a

    if-gt p1, v0, :cond_1a

    .line 1373
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    sub-int/2addr p1, v7

    int-to-char p1, p1

    .line 1374
    aput-char p1, p0, v3

    .line 1375
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_1a
    return-object p0

    .line 1392
    :pswitch_8
    invoke-static {p0, v4, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->dots(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    const/16 p1, 0x2e

    .line 1404
    invoke-static {p0, v4, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->upperCamelWith(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1402
    :pswitch_a
    invoke-static {p0, v4, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->upperCamelWith(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1386
    :pswitch_b
    invoke-static {p0, v4, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->dashes(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1400
    :pswitch_c
    invoke-static {p0, v4, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->upperCamelWith(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1384
    :pswitch_d
    invoke-static {p0, v4, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->underScores(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1339
    :pswitch_e
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 1340
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1b

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :cond_1b
    move v0, v4

    :goto_3
    if-lt p1, v6, :cond_1d

    if-gt p1, v5, :cond_1d

    .line 1342
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1d

    if-lt v0, v6, :cond_1c

    if-le v0, v5, :cond_1d

    .line 1344
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    add-int/2addr p1, v7

    int-to-char p1, p1

    .line 1345
    aput-char p1, p0, v4

    .line 1346
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_1d
    return-object p0

    .line 1390
    :pswitch_f
    invoke-static {p0, v4, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->dots(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1394
    :pswitch_10
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    :cond_1e
    :goto_4
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b49b92e -> :sswitch_12
        -0x6f0bd0de -> :sswitch_11
        -0x4252863f -> :sswitch_10
        -0x2c7b17e -> :sswitch_f
        0xeab5cf1 -> :sswitch_e
        0x2221192f -> :sswitch_d
        0x23df1498 -> :sswitch_c
        0x375951ea -> :sswitch_b
        0x3a2198f4 -> :sswitch_a
        0x4e696b01 -> :sswitch_9
        0x4fa9695c -> :sswitch_8
        0x51bd2257 -> :sswitch_7
        0x5710eb19 -> :sswitch_6
        0x58b8d1b1 -> :sswitch_5
        0x58f4d4b7 -> :sswitch_4
        0x62ad98e6 -> :sswitch_3
        0x6daafdcd -> :sswitch_2
        0x75cfd341 -> :sswitch_1
        0x7c737870 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static fields(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 94
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 96
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->fields(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void

    .line 100
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    if-nez v1, :cond_1

    .line 102
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 103
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_1
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    .line 107
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, v1, v2

    .line 108
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 109
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez p0, :cond_2

    goto :goto_1

    .line 113
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    const-string v0, "annotation must not be null"

    .line 2048
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "annotationType must not be null"

    .line 2051
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2054
    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2059
    :cond_0
    const-class p0, Ljava/lang/annotation/Inherited;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p0

    .line 2060
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, p1, p0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;ZLjava/util/Set;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method public static findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    const-string v0, "annotationType must not be null"

    .line 2027
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2030
    const-class v0, Ljava/lang/annotation/Inherited;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    .line 2031
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;ZLjava/util/Set;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0
.end method

.method private static findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;ZLjava/util/Set;)Ljava/lang/annotation/Annotation;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/reflect/AnnotatedElement;",
            "Ljava/lang/Class<",
            "TA;>;Z",
            "Ljava/util/Set<",
            "Ljava/lang/annotation/Annotation;",
            ">;)TA;"
        }
    .end annotation

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 2090
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 2095
    :cond_1
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 2096
    invoke-static {p1, v0, p2, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->findMetaAnnotation(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;ZLjava/util/Set;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 2101
    :cond_2
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_5

    .line 2102
    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 2104
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 2105
    const-class v5, Ljava/lang/annotation/Annotation;

    if-eq v4, v5, :cond_3

    .line 2106
    invoke-static {v4, p1, p2, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;ZLjava/util/Set;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 2114
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2115
    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_5

    const/4 v1, 0x1

    .line 2116
    invoke-static {v0, p1, v1, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;ZLjava/util/Set;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_5

    return-object v0

    .line 2124
    :cond_5
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object p0

    invoke-static {p1, p0, p2, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->findMetaAnnotation(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;ZLjava/util/Set;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findMetaAnnotation(Ljava/lang/Class;[Ljava/lang/annotation/Annotation;ZLjava/util/Set;)Ljava/lang/annotation/Annotation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;[",
            "Ljava/lang/annotation/Annotation;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/annotation/Annotation;",
            ">;)TA;"
        }
    .end annotation

    .line 2143
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 2144
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 2145
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang.annotation"

    .line 2146
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "kotlin."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-nez v5, :cond_2

    .line 2147
    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2148
    invoke-static {v4, p0, p2, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;ZLjava/util/Set;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fluentSetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 7

    .line 134
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 136
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 137
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_0
    array-length v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    .line 141
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p0, :cond_1

    .line 143
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 144
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v2

    if-ne v5, p2, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAnnotations(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;
    .locals 0

    .line 2159
    :try_start_0
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/annotation/Annotation;

    return-object p0
.end method

.method public static getConstructor(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 2

    .line 370
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    .line 372
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 373
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    .line 192
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldMapCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    .line 194
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 195
    new-instance v2, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$59ZHwC83uVL5-0Yxaoj35_i1BAc;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$59ZHwC83uVL5-0Yxaoj35_i1BAc;-><init>(Ljava/util/Map;)V

    invoke-static {p0, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFields(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 197
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    .line 201
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public static getDefaultConstructor(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;
    .locals 7

    .line 385
    const-class v0, Ljava/lang/StackTraceElement;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/16 v2, 0x9

    if-ge v0, v2, :cond_1

    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->isRecord(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-object v1

    .line 389
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_3

    .line 391
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 392
    invoke-interface {v0, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_3
    array-length v0, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_5

    aget-object v5, v2, v4

    .line 396
    invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v6

    if-nez v6, :cond_4

    return-object v5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    return-object v1

    .line 405
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 407
    array-length p1, v2

    move v0, v3

    :goto_1
    if-ge v0, p1, :cond_8

    aget-object v4, v2, v0

    .line 408
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 409
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    aget-object v5, v5, v3

    .line 410
    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    return-object v4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    return-object v1
.end method

.method public static getEnumAnnotationNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 4

    .line 671
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    .line 672
    array-length v1, v0

    new-array v2, v1, [Ljava/lang/String;

    .line 673
    new-instance v3, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$i0LiASQtfg3ZhCF9HIoWgJNwtu0;

    invoke-direct {v3, v0, v2}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$i0LiASQtfg3ZhCF9HIoWgJNwtu0;-><init>([Ljava/lang/Enum;[Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->fields(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge p0, v1, :cond_1

    .line 692
    aget-object v3, v2, p0

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v2
.end method

.method public static getEnumValueField(Ljava/lang/Class;Lcom/alibaba/fastjson2/modules/ObjectCodecProvider;)Ljava/lang/reflect/Member;
    .locals 13

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 710
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 712
    sget-object v2, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 714
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 715
    invoke-interface {v2, p0, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    :cond_1
    array-length v2, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_c

    aget-object v6, v3, v5

    .line 719
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Ljava/lang/Void;

    if-ne v7, v8, :cond_2

    goto/16 :goto_3

    .line 723
    :cond_2
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v7

    if-eqz v7, :cond_3

    goto/16 :goto_3

    .line 727
    :cond_3
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    .line 728
    const-class v8, Ljava/lang/Enum;

    if-eq v7, v8, :cond_b

    const-class v8, Ljava/lang/Object;

    if-ne v7, v8, :cond_4

    goto :goto_3

    .line 732
    :cond_4
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "values"

    .line 733
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_3

    .line 737
    :cond_5
    invoke-static {v6}, Lcom/alibaba/fastjson2/util/BeanUtils;->isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v8

    if-eqz v8, :cond_6

    return-object v6

    :cond_6
    const-string v8, "get"

    .line 741
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 742
    invoke-static {v7, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 743
    invoke-static {p0, v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 744
    invoke-static {v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v8

    if-eqz v8, :cond_7

    return-object v6

    .line 749
    :cond_7
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v8}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 750
    array-length v9, v1

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_a

    aget-object v11, v1, v10

    .line 751
    new-instance v12, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$84-KM7D_wvYzBULaq9aw5w57RrM;

    invoke-direct {v12, v7, v8, v6}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$84-KM7D_wvYzBULaq9aw5w57RrM;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;)V

    invoke-static {v11, v12}, Lcom/alibaba/fastjson2/util/BeanUtils;->getters(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_8

    .line 761
    invoke-interface {p1, v11}, Lcom/alibaba/fastjson2/modules/ObjectCodecProvider;->getMixIn(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v11

    goto :goto_2

    .line 763
    :cond_8
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectWriterProvider()Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getMixIn(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v11

    :goto_2
    if-eqz v11, :cond_9

    .line 767
    new-instance v12, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$Jw6I-GBbXZIGN-QkjNy_LGU5KiA;

    invoke-direct {v12, v7, v8, v6}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$Jw6I-GBbXZIGN-QkjNy_LGU5KiA;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;)V

    invoke-static {v11, v12}, Lcom/alibaba/fastjson2/util/BeanUtils;->getters(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 776
    :cond_a
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Member;

    if-eqz v6, :cond_b

    return-object v6

    :cond_b
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 782
    :cond_c
    sget-object p1, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    if-nez v1, :cond_d

    .line 784
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 785
    invoke-interface {p1, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    .line 790
    array-length p1, v1

    move v2, v4

    :goto_4
    if-ge v2, p1, :cond_11

    aget-object v3, v1, v2

    if-eqz p0, :cond_f

    .line 793
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 794
    array-length v6, p0

    move v7, v4

    :goto_5
    if-ge v7, v6, :cond_f

    aget-object v8, p0, v7

    .line 795
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v5, 0x1

    goto :goto_6

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_f
    move v5, v4

    .line 802
    :goto_6
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v6

    if-eqz v6, :cond_10

    if-nez v5, :cond_10

    move-object v0, v3

    goto :goto_7

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_11
    :goto_7
    return-object v0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Field;
    .locals 14

    .line 1164
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1165
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .line 1166
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-le v2, v1, :cond_6

    .line 1170
    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1171
    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1172
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x69

    const/16 v7, 0x73

    if-ne v3, v6, :cond_2

    if-ne v4, v7, :cond_2

    .line 1175
    const-class v3, Ljava/lang/Boolean;

    if-eq v9, v3, :cond_1

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v9, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v10

    :goto_1
    move v4, v11

    goto :goto_4

    :cond_2
    const/16 v6, 0x67

    const/16 v12, 0x74

    const/16 v13, 0x65

    if-ne v3, v6, :cond_4

    if-ne v4, v13, :cond_4

    if-ne v5, v12, :cond_4

    if-le v2, v0, :cond_3

    move v3, v10

    goto :goto_2

    :cond_3
    move v3, v11

    :goto_2
    move v4, v3

    move v3, v11

    move v5, v3

    goto :goto_5

    :cond_4
    if-ne v3, v7, :cond_6

    if-ne v4, v13, :cond_6

    if-ne v5, v12, :cond_6

    if-le v2, v0, :cond_5

    .line 1179
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v3

    if-ne v3, v10, :cond_5

    move v3, v10

    goto :goto_3

    :cond_5
    move v3, v11

    :goto_3
    move v5, v3

    move v3, v11

    move v4, v3

    goto :goto_5

    :cond_6
    move v3, v11

    move v4, v3

    :goto_4
    move v5, v4

    :goto_5
    new-array v12, v1, [Ljava/lang/reflect/Field;

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    if-eqz v5, :cond_b

    :cond_7
    if-nez v3, :cond_9

    if-eqz v4, :cond_8

    goto :goto_6

    .line 1185
    :cond_8
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    aget-object v4, v4, v11

    goto :goto_7

    :cond_9
    :goto_6
    move-object v4, v9

    :goto_7
    if-eqz v3, :cond_a

    move v3, v1

    goto :goto_8

    :cond_a
    move v3, v0

    :goto_8
    sub-int v0, v2, v3

    .line 1187
    new-array v0, v0, [C

    .line 1188
    invoke-virtual {v8, v3, v2, v0, v11}, Ljava/lang/String;->getChars(II[CI)V

    .line 1189
    aget-char v5, v0, v11

    .line 1190
    new-instance v13, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;

    move-object v0, v13

    move-object v1, p1

    move-object v6, v8

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$8zxuZczCGgmeWjXZxCkye8bba8E;-><init>(Ljava/lang/reflect/Method;IILjava/lang/Class;CLjava/lang/String;[Ljava/lang/reflect/Field;)V

    invoke-static {p0, v13}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFields(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 1210
    :cond_b
    aget-object p1, v12, v11

    if-eqz p1, :cond_c

    aget-object p1, v12, v11

    goto :goto_9

    :cond_c
    aget-object p1, v12, v10

    .line 1211
    :goto_9
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1212
    const-class v0, Ljava/lang/String;

    if-ne v9, v0, :cond_f

    if-nez p1, :cond_d

    const-string v0, "getMessage"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    if-nez p1, :cond_f

    const-string v0, "getLocalizedMessage"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    const-string p1, "detailMessage"

    .line 1213
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    goto :goto_a

    .line 1214
    :cond_f
    const-class v0, [Ljava/lang/Throwable;

    if-ne v9, v0, :cond_10

    const-string v0, "getSuppressed"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string/jumbo p1, "suppressedExceptions"

    .line 1215
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    :cond_10
    :goto_a
    return-object p1
.end method

.method public static getFieldType(Lcom/alibaba/fastjson2/TypeReference;Ljava/lang/Class;Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/TypeReference;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Member;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 1629
    :cond_0
    invoke-interface {p2}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    .line 1632
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq p1, v1, :cond_4

    if-nez p0, :cond_1

    move-object p0, v0

    goto :goto_1

    .line 1633
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    :goto_1
    if-ne p2, p1, :cond_2

    .line 1635
    invoke-static {p0, p2, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 1637
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 1642
    :cond_3
    invoke-static {p0, p1, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson2/TypeReference;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/TypeReference;

    move-result-object p0

    .line 1643
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_2
    return-object v0
.end method

.method static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    if-ne p2, p1, :cond_0

    return-object p0

    .line 1846
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1847
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    .line 1848
    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 1849
    aget-object v2, p0, v0

    if-ne v2, p2, :cond_1

    .line 1850
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v0

    return-object p0

    .line 1851
    :cond_1
    aget-object v2, p0, v0

    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1852
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object p1

    aget-object p1, p1, v0

    aget-object p0, p0, v0

    invoke-static {p1, p0, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_6

    .line 1858
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p0

    if-nez p0, :cond_6

    .line 1859
    :goto_1
    const-class p0, Ljava/lang/Object;

    if-eq p1, p0, :cond_6

    .line 1860
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-ne p0, p2, :cond_4

    .line 1862
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 1863
    :cond_4
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1864
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    :cond_5
    move-object p1, p0

    goto :goto_1

    :cond_6
    return-object p2
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 4

    .line 118
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 120
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 121
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    array-length p0, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v2, v1, v0

    .line 125
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 10

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 154
    const-class v1, Ljava/lang/Object;

    if-eq p0, v1, :cond_7

    const-class v1, Ljava/io/Serializable;

    if-ne p0, v1, :cond_0

    goto :goto_4

    .line 161
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 163
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 164
    invoke-interface {v1, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_1
    array-length p0, v2

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, p0, :cond_7

    aget-object v4, v2, v3

    .line 168
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    .line 171
    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v6

    if-eq v5, v6, :cond_3

    goto :goto_3

    .line 174
    :cond_3
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 175
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    move v7, v1

    .line 177
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_5

    .line 178
    aget-object v8, v5, v7

    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    move v5, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_6

    return-object v4

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    return-object v0
.end method

.method private static getMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 0

    .line 1020
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/reflect/Method;

    :goto_0
    return-object p0
.end method

.method public static getParamType(Lcom/alibaba/fastjson2/TypeReference;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Parameter;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/TypeReference;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class;",
            "Ljava/lang/reflect/Parameter;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1655
    :goto_0
    const-class p3, Ljava/lang/Object;

    if-eq p1, p3, :cond_1

    if-ne p2, p1, :cond_0

    .line 1657
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, p2, p4}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0

    .line 1659
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object p3

    invoke-static {p0, p1, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/fastjson2/TypeReference;->get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/TypeReference;

    move-result-object p0

    .line 1660
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1743
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1745
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 1746
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1747
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 1752
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1753
    instance-of v0, p0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->checkArgument(Z)V

    .line 1754
    check-cast p0, Ljava/lang/Class;

    return-object p0

    .line 1755
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1756
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1757
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 1758
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_3

    .line 1761
    const-class p0, Ljava/lang/Object;

    return-object p0

    .line 1762
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4

    .line 1763
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, v1

    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_4
    if-nez p0, :cond_5

    const-string v0, "null"

    goto :goto_0

    .line 1765
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1766
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "> is of type "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getRecordFieldNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 65
    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->JVM_VERSION:I

    const/4 v1, 0x0

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    sget v0, Lcom/alibaba/fastjson2/util/JDKUtils;->ANDROID_SDK_INT:I

    const/16 v2, 0x21

    if-ge v0, v2, :cond_0

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    .line 70
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->RECORD_GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 71
    const-class v0, Ljava/lang/Class;

    const-string v2, "getRecordComponents"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->RECORD_GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method;

    .line 74
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->RECORD_COMPONENT_GET_NAME:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    const-string v0, "java.lang.reflect.RecordComponent"

    .line 75
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getName"

    new-array v3, v1, [Ljava/lang/Class;

    .line 76
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->RECORD_COMPONENT_GET_NAME:Ljava/lang/reflect/Method;

    .line 79
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->RECORD_GET_RECORD_COMPONENTS:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 80
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    move v2, v1

    .line 81
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 82
    sget-object v3, Lcom/alibaba/fastjson2/util/BeanUtils;->RECORD_COMPONENT_GET_NAME:Ljava/lang/reflect/Method;

    aget-object v4, p0, v2

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p0

    .line 87
    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const-string v1, "Failed to access Methods needed to support `java.lang.Record`: (%s) %s"

    .line 87
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static getSetter(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Method;

    .line 206
    new-instance v1, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$oMBDUTuEnSuM63MKWdqaakPWziE;

    invoke-direct {v1, p1, v0}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$oMBDUTuEnSuM63MKWdqaakPWziE;-><init>(Ljava/lang/String;[Ljava/lang/reflect/Method;)V

    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->setters(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    .line 213
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const-string v0, "CamelCase"

    if-nez p1, :cond_0

    move-object p1, v0

    .line 1227
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "is"

    .line 1228
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "get"

    .line 1229
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    move v7, v4

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    if-ne v1, v7, :cond_3

    return-object p0

    .line 1244
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v8, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x1

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "SnakeCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v8, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "UpperCaseWithUnderScores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v8, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "CamelCase1x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v8, 0x8

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v8, 0x7

    goto :goto_1

    :sswitch_4
    const-string v0, "KebabCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v8, 0x6

    goto :goto_1

    :sswitch_5
    const-string v0, "UpperCamelCaseWithSpaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_1

    :cond_9
    const/4 v8, 0x5

    goto :goto_1

    :sswitch_6
    const-string v0, "PascalCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    const/4 v8, 0x4

    goto :goto_1

    :sswitch_7
    const-string v0, "UpperCaseWithDashes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1

    :cond_b
    move v8, v4

    goto :goto_1

    :sswitch_8
    const-string v0, "NeverUseThisValueExceptDefaultValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1

    :cond_c
    move v8, v5

    goto :goto_1

    :sswitch_9
    const-string v0, "UpperCaseWithDots"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1

    :cond_d
    move v8, v10

    goto :goto_1

    :sswitch_a
    const-string v0, "UpperCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_1

    :cond_e
    move v8, v6

    :goto_1
    const/16 v0, 0x5a

    const/16 v9, 0x20

    const/16 v11, 0x41

    packed-switch v8, :pswitch_data_0

    .line 1308
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1269
    :pswitch_0
    invoke-static {p0, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->snakeCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1272
    :pswitch_1
    invoke-static {p0, v7, v10}, Lcom/alibaba/fastjson2/util/BeanUtils;->underScores(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    sub-int p1, v1, v7

    .line 1257
    new-array p1, p1, [C

    .line 1258
    invoke-virtual {p0, v7, v1, p1, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1259
    aget-char p0, p1, v6

    if-lt p0, v11, :cond_f

    if-gt p0, v0, :cond_f

    add-int/2addr p0, v9

    int-to-char p0, p0

    .line 1261
    aput-char p0, p1, v6

    .line 1263
    :cond_f
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 1283
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_10

    move v4, v5

    goto :goto_2

    :cond_10
    if-eqz v3, :cond_11

    goto :goto_2

    :cond_11
    move v4, v6

    :goto_2
    move v1, v4

    .line 1293
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 1294
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v11, :cond_13

    if-gt v2, v0, :cond_13

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    if-le v1, v4, :cond_12

    const/16 v3, 0x2d

    .line 1298
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1300
    :cond_12
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1302
    :cond_13
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1305
    :cond_14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1275
    :pswitch_4
    invoke-static {p0, v7, v9}, Lcom/alibaba/fastjson2/util/BeanUtils;->upperCamelWith(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1266
    :pswitch_5
    invoke-static {p0, v1, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->pascal(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1279
    :pswitch_6
    invoke-static {p0, v7, v10}, Lcom/alibaba/fastjson2/util/BeanUtils;->dashes(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    sub-int p1, v1, v7

    .line 1247
    new-array v2, p1, [C

    .line 1248
    invoke-virtual {p0, v7, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 1249
    aget-char p0, v2, v6

    if-le p1, v10, :cond_15

    .line 1250
    aget-char p1, v2, v10

    if-lt p1, v11, :cond_15

    aget-char p1, v2, v10

    if-gt p1, v0, :cond_15

    goto :goto_5

    :cond_15
    move v10, v6

    :goto_5
    if-lt p0, v11, :cond_16

    if-gt p0, v0, :cond_16

    if-nez v10, :cond_16

    add-int/2addr p0, v9

    int-to-char p0, p0

    .line 1252
    aput-char p0, v2, v6

    .line 1254
    :cond_16
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    .line 1281
    :pswitch_8
    invoke-static {p0, v7, v10}, Lcom/alibaba/fastjson2/util/BeanUtils;->dots(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1277
    :pswitch_9
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b49b92e -> :sswitch_a
        -0x6f0bd0de -> :sswitch_9
        -0x4252863f -> :sswitch_8
        0x23df1498 -> :sswitch_7
        0x4fa9695c -> :sswitch_6
        0x51bd2257 -> :sswitch_5
        0x5710eb19 -> :sswitch_4
        0x62ad98e6 -> :sswitch_3
        0x6daafdcd -> :sswitch_2
        0x75cfd341 -> :sswitch_1
        0x7c737870 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getterName(Ljava/lang/reflect/Method;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1145
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1148
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x5a

    if-gt v1, v3, :cond_0

    const/4 v1, 0x1

    .line 1149
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v1, v3, :cond_0

    .line 1151
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 1152
    aget-char v2, v1, v0

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 1153
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    .line 1154
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1155
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getters(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v0, :cond_0

    return-void

    .line 822
    :cond_0
    invoke-static/range {p0 .. p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 823
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 824
    array-length v6, v3

    if-ne v6, v5, :cond_1

    .line 825
    aget-object v0, v3, v4

    invoke-static {v0, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getters(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void

    .line 830
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->ignore(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 834
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 835
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson2/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 836
    invoke-static {v3, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->getters(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void

    .line 840
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->isRecord(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 844
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getRecordFieldNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    .line 847
    :goto_0
    sget-object v9, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v9, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/reflect/Method;

    if-nez v10, :cond_5

    .line 849
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 850
    invoke-interface {v9, v0, v10}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v3, :cond_6

    .line 853
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "com.google.protobuf.GeneratedMessageV3"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v9, v5

    goto :goto_1

    :cond_6
    move v9, v4

    .line 855
    :goto_1
    array-length v11, v10

    move v12, v4

    :goto_2
    if-ge v12, v11, :cond_35

    aget-object v13, v10, v12

    .line 856
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v14

    if-eqz v14, :cond_8

    :cond_7
    :goto_3
    move-object/from16 v24, v10

    move/from16 v17, v11

    move/from16 v18, v12

    goto/16 :goto_14

    .line 861
    :cond_8
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v14

    .line 862
    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_3

    .line 866
    :cond_9
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v14

    .line 867
    const-class v15, Ljava/lang/Void;

    if-ne v14, v15, :cond_a

    goto :goto_3

    .line 871
    :cond_a
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v15

    .line 872
    const-class v4, Ljava/lang/Enum;

    if-eq v15, v4, :cond_7

    const-class v4, Ljava/lang/Object;

    if-ne v15, v4, :cond_b

    goto :goto_3

    .line 876
    :cond_b
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 879
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v15

    const-string v5, "getSerializedSize"

    const/16 v16, -0x1

    sparse-switch v15, :sswitch_data_0

    :goto_4
    move/from16 v15, v16

    goto :goto_5

    :sswitch_0
    const-string v15, "getInitializationErrorString"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    goto :goto_4

    :cond_c
    const/4 v15, 0x5

    goto :goto_5

    :sswitch_1
    const-string v15, "hashCode"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    goto :goto_4

    :cond_d
    const/4 v15, 0x4

    goto :goto_5

    :sswitch_2
    const-string v15, "isInitialized"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    goto :goto_4

    :cond_e
    const/4 v15, 0x3

    goto :goto_5

    :sswitch_3
    const-string v15, "equals"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    goto :goto_4

    :cond_f
    const/4 v15, 0x2

    goto :goto_5

    :sswitch_4
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    goto :goto_4

    :cond_10
    const/4 v15, 0x1

    goto :goto_5

    :sswitch_5
    const-string/jumbo v15, "toString"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_11

    goto :goto_4

    :cond_11
    const/4 v15, 0x0

    :goto_5
    packed-switch v15, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    if-eqz v9, :cond_12

    goto :goto_7

    :cond_12
    :goto_6
    const/4 v15, 0x0

    goto :goto_8

    :goto_7
    :pswitch_1
    const/4 v15, 0x1

    :goto_8
    if-eqz v15, :cond_13

    goto/16 :goto_3

    :cond_13
    if-eqz v9, :cond_15

    const-string v15, "Type"

    .line 901
    invoke-virtual {v4, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_14

    const-string v15, "Bytes"

    invoke-virtual {v4, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_15

    .line 902
    :cond_14
    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v7, "com.google.protobuf.ByteString"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    goto/16 :goto_3

    :cond_15
    const-string v7, "isSet"

    .line 908
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v14, v7, :cond_1b

    const/4 v7, 0x0

    .line 910
    invoke-static {v4, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->getterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 911
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v11

    const-string v11, "g"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v18, v12

    const/4 v11, 0x1

    invoke-virtual {v15, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 913
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "un"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 914
    array-length v12, v10

    move-object/from16 v22, v5

    const/4 v5, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_9
    if-ge v5, v12, :cond_1a

    aget-object v23, v10, v5

    move-object/from16 v24, v10

    .line 915
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 916
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v10

    move/from16 v25, v12

    const/4 v12, 0x1

    if-ne v10, v12, :cond_17

    .line 917
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    sget-object v12, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v10, v12, :cond_17

    const/16 v19, 0x1

    goto :goto_a

    :cond_16
    move/from16 v25, v12

    .line 919
    :cond_17
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 920
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v10

    if-nez v10, :cond_18

    const/16 v21, 0x1

    goto :goto_a

    .line 922
    :cond_18
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 923
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v10

    if-nez v10, :cond_19

    .line 924
    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v10

    sget-object v12, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v10, v12, :cond_19

    const/16 v20, 0x1

    :cond_19
    :goto_a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v10, v24

    move/from16 v12, v25

    goto :goto_9

    :cond_1a
    move-object/from16 v24, v10

    if-eqz v19, :cond_1c

    if-eqz v20, :cond_1c

    if-eqz v21, :cond_1c

    .line 929
    const-class v5, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 930
    invoke-static {v13, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/reflect/AnnotatedElement;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-nez v5, :cond_1c

    goto/16 :goto_14

    :cond_1b
    move-object/from16 v22, v5

    move-object/from16 v24, v10

    move/from16 v17, v11

    move/from16 v18, v12

    :cond_1c
    if-eqz v6, :cond_1f

    .line 937
    array-length v5, v8

    const/4 v7, 0x0

    :goto_b
    if-ge v7, v5, :cond_1e

    aget-object v10, v8, v7

    .line 938
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    const/4 v11, 0x1

    goto :goto_c

    :cond_1d
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_1e
    const/4 v11, 0x0

    :goto_c
    if-eqz v11, :cond_1f

    .line 945
    invoke-interface {v2, v13}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 950
    :cond_1f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x3

    if-le v5, v7, :cond_20

    const-string v10, "get"

    .line 951
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    const/4 v11, 0x1

    goto :goto_d

    :cond_20
    const/4 v11, 0x0

    :goto_d
    const/16 v10, 0x7a

    const/16 v12, 0x61

    if-eqz v11, :cond_22

    .line 953
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v12, :cond_21

    if-gt v15, v10, :cond_21

    const/4 v7, 0x4

    if-ne v5, v7, :cond_23

    const/4 v11, 0x0

    goto :goto_e

    :cond_21
    const/4 v7, 0x4

    goto :goto_e

    :cond_22
    const/4 v7, 0x4

    .line 957
    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v14, v15, :cond_24

    const-class v15, Ljava/lang/Boolean;

    if-ne v14, v15, :cond_23

    goto :goto_f

    :cond_23
    :goto_e
    move v15, v11

    const/4 v7, 0x3

    const/4 v11, 0x2

    goto :goto_11

    :cond_24
    :goto_f
    const/4 v11, 0x2

    if-le v5, v11, :cond_25

    const-string v15, "is"

    .line 958
    invoke-virtual {v4, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_25

    const/4 v15, 0x1

    goto :goto_10

    :cond_25
    const/4 v15, 0x0

    :goto_10
    if-eqz v15, :cond_26

    .line 960
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v12, :cond_26

    if-gt v7, v10, :cond_26

    const/4 v7, 0x3

    if-ne v5, v7, :cond_27

    const/4 v15, 0x0

    goto :goto_11

    :cond_26
    const/4 v7, 0x3

    :cond_27
    :goto_11
    if-nez v15, :cond_28

    .line 968
    invoke-static {v13}, Lcom/alibaba/fastjson2/util/BeanUtils;->isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v15, 0x1

    :cond_28
    if-nez v15, :cond_29

    if-eqz v1, :cond_29

    .line 974
    invoke-static {v1, v13}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_29

    .line 976
    invoke-static {v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v15, 0x1

    :cond_29
    if-nez v15, :cond_2a

    .line 982
    invoke-static {v0, v4, v14}, Lcom/alibaba/fastjson2/util/BeanUtils;->fluentSetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_2a

    const/4 v15, 0x1

    :cond_2a
    if-nez v15, :cond_2b

    goto/16 :goto_14

    :cond_2b
    if-eqz v9, :cond_34

    .line 991
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v3, :cond_2c

    goto/16 :goto_14

    .line 994
    :cond_2c
    invoke-virtual {v13}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 996
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    goto :goto_12

    :sswitch_6
    const-string v7, "getDefaultInstanceForType"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    goto :goto_12

    :cond_2d
    const/16 v16, 0x4

    goto :goto_12

    :sswitch_7
    const-string v10, "getMessageBytes"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    goto :goto_12

    :cond_2e
    move/from16 v16, v7

    goto :goto_12

    :sswitch_8
    const-string v7, "getUnknownFields"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    goto :goto_12

    :cond_2f
    move/from16 v16, v11

    goto :goto_12

    :sswitch_9
    const-string v7, "getParserForType"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    goto :goto_12

    :cond_30
    const/16 v16, 0x1

    goto :goto_12

    :sswitch_a
    move-object/from16 v7, v22

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31

    goto :goto_12

    :cond_31
    const/16 v16, 0x0

    :goto_12
    packed-switch v16, :pswitch_data_1

    :cond_32
    const/4 v11, 0x0

    goto :goto_13

    .line 1002
    :pswitch_2
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "com.google.protobuf."

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_33

    if-ne v5, v0, :cond_32

    :cond_33
    const/4 v11, 0x1

    :goto_13
    if-eqz v11, :cond_34

    goto :goto_14

    .line 1013
    :cond_34
    invoke-interface {v2, v13}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_14
    add-int/lit8 v12, v18, 0x1

    move/from16 v11, v17

    move-object/from16 v10, v24

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_35
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_5
        -0x6263cb65 -> :sswitch_4
        -0x4d378041 -> :sswitch_3
        -0xa7dbcb6 -> :sswitch_2
        0x8cdac1b -> :sswitch_1
        0x23ada0c3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6263cb65 -> :sswitch_a
        0x7ea0ace -> :sswitch_9
        0xc6bf3ed -> :sswitch_8
        0x12b44f1a -> :sswitch_7
        0x786693c3 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getters(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 814
    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getters(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static hasPublicDefaultConstructor(Ljava/lang/Class;)Z
    .locals 1

    const/4 v0, 0x0

    .line 380
    invoke-static {p0, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDefaultConstructor(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 381
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static hashCodeOrZero(Ljava/lang/Object;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 1828
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static ignore(Ljava/lang/Class;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 1056
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/util/BeanUtils;->IGNORE_CLASS_HASH_CODES:[J

    .line 1059
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1058
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v2

    .line 1056
    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1987
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1988
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1992
    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public static isExtendedMap(Ljava/lang/Class;)Z
    .locals 3

    .line 2762
    const-class v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_3

    const-class v0, Ljava/util/LinkedHashMap;

    if-eq p0, v0, :cond_3

    const-class v0, Ljava/util/TreeMap;

    if-eq p0, v0, :cond_3

    .line 2765
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2770
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 2771
    const-class v2, Ljava/util/HashMap;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/util/LinkedHashMap;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/util/TreeMap;

    if-eq v0, v2, :cond_1

    return v1

    .line 2778
    :cond_1
    invoke-static {p0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getDefaultConstructor(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v2

    if-eqz v2, :cond_2

    return v1

    .line 2783
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2784
    new-instance v2, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$AjGt8xmt5hnvCuoZySVBx6m3F7E;

    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$AjGt8xmt5hnvCuoZySVBx6m3F7E;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    invoke-static {p0, v2}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFields(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 2797
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private static isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z
    .locals 7

    .line 1028
    invoke-interface {p0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p0

    .line 1029
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_8

    aget-object v3, p0, v2

    .line 1030
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1031
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v5, "com.alibaba.fastjson2.annotation.JSONField"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x6

    goto :goto_1

    :sswitch_1
    const-string v5, "com.fasterxml.jackson.annotation.JsonRawValue"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x5

    goto :goto_1

    :sswitch_2
    const-string v5, "com.alibaba.fastjson.annotation.JSONField"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x4

    goto :goto_1

    :sswitch_3
    const-string v5, "com.fasterxml.jackson.annotation.JsonProperty"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string v5, "com.fasterxml.jackson.annotation.JsonValue"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    goto :goto_1

    :sswitch_5
    const-string v5, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonProperty"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move v4, v6

    goto :goto_1

    :sswitch_6
    const-string v5, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonValue"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move v4, v1

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    return v6

    .line 1040
    :pswitch_1
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->isUseJacksonAnnotation()Z

    move-result v3

    if-eqz v3, :cond_7

    return v6

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x7f14c25d -> :sswitch_6
        -0x77e9939d -> :sswitch_5
        -0x8f8af6e -> :sswitch_4
        0x1515bf14 -> :sswitch_3
        0x3ed64f9e -> :sswitch_2
        0x6dc4a368 -> :sswitch_1
        0x7b0ae752 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isNoneStaticMemberClass(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 2354
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_6

    const-class v1, Ljava/lang/String;

    if-eq p1, v1, :cond_6

    const-class v1, Ljava/util/List;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 2361
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    if-eqz p0, :cond_2

    .line 2366
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    .line 2370
    :cond_2
    sget-object p0, Lcom/alibaba/fastjson2/util/BeanUtils;->constructorCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_3

    .line 2372
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2373
    invoke-interface {p0, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2376
    :cond_3
    array-length p0, v2

    if-nez p0, :cond_4

    return v0

    .line 2380
    :cond_4
    aget-object p0, v2, v0

    .line 2381
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result p1

    if-nez p1, :cond_5

    return v0

    .line 2385
    :cond_5
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    .line 2386
    aget-object p0, p0, v0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    :goto_0
    return v0
.end method

.method public static isRecord(Ljava/lang/Class;)Z
    .locals 4

    .line 1065
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1070
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson2/util/BeanUtils;->RECORD_CLASS:Ljava/lang/Class;

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 1071
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "java.lang.Record"

    .line 1072
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1073
    sput-object p0, Lcom/alibaba/fastjson2/util/BeanUtils;->RECORD_CLASS:Ljava/lang/Class;

    return v2

    :cond_1
    return v0

    .line 1080
    :cond_2
    sget-object v1, Lcom/alibaba/fastjson2/util/BeanUtils;->RECORD_CLASS:Ljava/lang/Class;

    if-ne p0, v1, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method public static isWriteEnumAsJavaBean(Ljava/lang/Class;)Z
    .locals 7

    .line 649
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object p0

    .line 650
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 651
    const-class v4, Lcom/alibaba/fastjson2/annotation/JSONType;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson2/annotation/JSONType;

    if-eqz v4, :cond_0

    .line 653
    invoke-interface {v4}, Lcom/alibaba/fastjson2/annotation/JSONType;->writeEnumAsJavaBean()Z

    move-result p0

    return p0

    .line 656
    :cond_0
    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    .line 657
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.alibaba.fastjson.annotation.JSONType"

    .line 658
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 659
    new-instance v5, Lcom/alibaba/fastjson2/codec/BeanInfo;

    invoke-direct {v5}, Lcom/alibaba/fastjson2/codec/BeanInfo;-><init>()V

    .line 660
    new-instance v6, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$sx3Nl4W8Mvy91B31myYjB0LBq9I;

    invoke-direct {v6, v5, v3}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$sx3Nl4W8Mvy91B31myYjB0LBq9I;-><init>(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V

    invoke-static {v4, v6}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 661
    iget-boolean v3, v5, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method static synthetic lambda$getDeclaredField$0(Ljava/util/Map;Ljava/lang/reflect/Field;)V
    .locals 1

    .line 195
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$getEnumAnnotationNames$3([Ljava/lang/Enum;[Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 4

    .line 674
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 675
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 676
    aget-object v2, p0, v1

    .line 677
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 679
    const-class p0, Lcom/alibaba/fastjson2/annotation/JSONField;

    invoke-virtual {p2, p0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/annotation/JSONField;

    if-eqz p0, :cond_1

    .line 681
    invoke-interface {p0}, Lcom/alibaba/fastjson2/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object p0

    .line 682
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 683
    aput-object p0, p1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic lambda$getEnumValueField$4(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 752
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 753
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 754
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getEnumValueField$5(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 768
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 769
    invoke-static {p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->isJSONField(Ljava/lang/reflect/AnnotatedElement;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 770
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$getField$6(Ljava/lang/reflect/Method;IILjava/lang/Class;CLjava/lang/String;[Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)V
    .locals 2

    .line 1191
    invoke-virtual {p7}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    if-eq v0, p0, :cond_0

    return-void

    .line 1195
    :cond_0
    invoke-virtual {p7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    .line 1196
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p1, p2

    if-ne v0, p1, :cond_3

    .line 1198
    invoke-virtual {p7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    if-eq p1, p3, :cond_1

    invoke-virtual {p7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    const/16 p1, 0x41

    const/4 p3, 0x0

    const/4 v1, 0x1

    if-lt p4, p1, :cond_2

    const/16 p1, 0x5a

    if-gt p4, p1, :cond_2

    add-int/lit8 p4, p4, 0x20

    .line 1199
    invoke-virtual {p0, p3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p4, p1, :cond_2

    add-int/lit8 p1, p2, 0x1

    add-int/lit8 p4, v0, -0x1

    .line 1200
    invoke-virtual {p0, v1, p5, p1, p4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1202
    aput-object p7, p6, p3

    goto :goto_0

    .line 1203
    :cond_2
    invoke-virtual {p0, p3, p5, p2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1204
    aput-object p7, p6, v1

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic lambda$getSetter$1(Ljava/lang/String;[Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 207
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 211
    aput-object p2, p1, p0

    return-void
.end method

.method static synthetic lambda$isExtendedMap$14(Ljava/lang/Class;Ljava/util/List;Ljava/lang/reflect/Field;)V
    .locals 2

    .line 2785
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 2786
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2787
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2788
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2789
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "this$0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2794
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$isWriteEnumAsJavaBean$2(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 660
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->processJSONType1x(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method static synthetic lambda$processGsonSerializedName$13(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V
    .locals 5

    .line 2736
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 2738
    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p2, -0x1

    .line 2739
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x53ecbf86

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x6ac9171

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_1
    const-string v1, "alternate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p2

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_2

    .line 2747
    :cond_3
    check-cast p0, [Ljava/lang/String;

    .line 2748
    array-length p2, p0

    if-eqz p2, :cond_5

    .line 2749
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->alternateNames:[Ljava/lang/String;

    goto :goto_2

    .line 2741
    :cond_4
    check-cast p0, Ljava/lang/String;

    .line 2742
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 2743
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic lambda$processJacksonJsonFormat$8(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V
    .locals 5

    .line 2619
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 2621
    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p2, -0x1

    .line 2622
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2f271470

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v1, 0x6854fa1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "shape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_1

    :cond_1
    const-string v2, "pattern"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p2

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_2

    .line 2631
    :cond_3
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const-string p2, "STRING"

    .line 2632
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 2633
    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    sget-object p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->features:J

    goto :goto_2

    .line 2624
    :cond_4
    check-cast p0, Ljava/lang/String;

    .line 2625
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_5

    .line 2626
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->format:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic lambda$processJacksonJsonFormat$9(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 2649
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 2651
    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p2, "pattern"

    .line 2652
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2653
    check-cast p0, Ljava/lang/String;

    .line 2654
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    .line 2655
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->format:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic lambda$processJacksonJsonIgnore$7(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 2340
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 2342
    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p2, "value"

    .line 2343
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2344
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, p1, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic lambda$processJacksonJsonInclude$10(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 4

    .line 2667
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 2669
    invoke-virtual {p2, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p2, "value"

    .line 2670
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 2671
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x1

    .line 2672
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v2, 0xa13a8f

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    const v2, 0x7342860f

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ALWAYS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_1
    const-string v0, "NON_DEFAULT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p2

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_2

    .line 2677
    :cond_3
    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    goto :goto_2

    .line 2674
    :cond_4
    iget-wide v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v0, v2

    iput-wide v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic lambda$processJacksonJsonSubTypesType$12(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;ILjava/lang/reflect/Method;)V
    .locals 5

    .line 2710
    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    .line 2712
    invoke-virtual {p3, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p3, -0x1

    .line 2713
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x337a8b

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x6ac9171

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_1
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p3

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_2

    .line 2720
    :cond_3
    check-cast p0, Ljava/lang/String;

    .line 2721
    iget-object p1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlsoNames:[Ljava/lang/String;

    aput-object p0, p1, p2

    goto :goto_2

    .line 2715
    :cond_4
    check-cast p0, Ljava/lang/Class;

    .line 2716
    iget-object p1, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;

    aput-object p0, p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_2
    return-void
.end method

.method static synthetic lambda$processJacksonJsonTypeName$11(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/reflect/Method;)V
    .locals 2

    .line 2692
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 2694
    invoke-virtual {p2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p2, "value"

    .line 2695
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2696
    check-cast p0, Ljava/lang/String;

    .line 2697
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2698
    iput-object p0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static varargs newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 1

    .line 1673
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson2/util/BeanUtils$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static pascal(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    sub-int v0, p1, p2

    .line 1313
    new-array v1, v0, [C

    const/4 v2, 0x0

    .line 1314
    invoke-virtual {p0, p2, p1, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1315
    aget-char p0, v1, v2

    const/4 p1, 0x1

    const/16 p2, 0x7a

    const/16 v3, 0x61

    if-lt p0, v3, :cond_0

    if-gt p0, p2, :cond_0

    if-le v0, p1, :cond_0

    add-int/lit8 p0, p0, -0x20

    int-to-char p0, p0

    .line 1317
    aput-char p0, v1, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x5f

    if-ne p0, v2, :cond_1

    const/4 p0, 0x2

    if-le v0, p0, :cond_1

    .line 1319
    aget-char v0, v1, p1

    if-lt v0, v3, :cond_1

    if-gt v0, p2, :cond_1

    .line 1320
    aget-char v2, v1, p0

    if-lt v2, v3, :cond_1

    aget-char p0, v1, p0

    if-gt p0, p2, :cond_1

    add-int/lit8 v0, v0, -0x20

    int-to-char p0, v0

    .line 1321
    aput-char p0, v1, p1

    .line 1324
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static processGsonSerializedName(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 2734
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2735
    new-instance v1, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$SXwA23IXDex3e2jtJDXwy_DYVzQ;

    invoke-direct {v1, p1, p0}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$SXwA23IXDex3e2jtJDXwy_DYVzQ;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static processJSONType1x(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;Ljava/lang/reflect/Method;)V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 2494
    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2495
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v10, 0xa

    const/4 v11, 0x7

    const/4 v12, 0x3

    const/4 v13, 0x6

    const/4 v14, -0x1

    const/4 v15, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v4, "seeAlso"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v4, "serializeFeatures"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "ignores"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_3
    const-string v4, "includes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "typeName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v15

    goto :goto_1

    :sswitch_5
    const-string/jumbo v4, "typeKey"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_6
    const-string/jumbo v4, "serialzeFeatures"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_7
    const-string v4, "orders"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v10

    goto :goto_1

    :sswitch_8
    const-string v4, "naming"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v11

    goto :goto_1

    :sswitch_9
    const-string v4, "alphabetic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v12

    goto :goto_1

    :sswitch_a
    const-string/jumbo v4, "serializeEnumAsJavaBean"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v13

    goto :goto_1

    :cond_0
    :goto_0
    move v3, v14

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    .line 2602
    :pswitch_0
    check-cast v2, [Ljava/lang/String;

    .line 2603
    array-length v1, v2

    if-eqz v1, :cond_3

    .line 2604
    iput-object v2, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->orders:[Ljava/lang/String;

    goto/16 :goto_6

    .line 2595
    :pswitch_1
    check-cast v2, [Ljava/lang/String;

    .line 2596
    array-length v1, v2

    if-eqz v1, :cond_3

    .line 2597
    iput-object v2, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->includes:[Ljava/lang/String;

    goto/16 :goto_6

    .line 2581
    :pswitch_2
    check-cast v2, [Ljava/lang/String;

    .line 2582
    array-length v1, v2

    if-eqz v1, :cond_3

    .line 2583
    iget-object v1, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2584
    iput-object v2, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    goto/16 :goto_6

    .line 2586
    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2587
    iget-object v3, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 2588
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 2589
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->ignores:[Ljava/lang/String;

    goto/16 :goto_6

    .line 2576
    :pswitch_3
    check-cast v2, Ljava/lang/Enum;

    .line 2577
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->namingStrategy:Ljava/lang/String;

    goto/16 :goto_6

    .line 2569
    :pswitch_4
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2571
    iput-boolean v15, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writeEnumAsJavaBean:Z

    goto/16 :goto_6

    .line 2526
    :pswitch_5
    check-cast v2, [Ljava/lang/Enum;

    .line 2527
    array-length v3, v2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_3

    aget-object v16, v2, v4

    .line 2528
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_1

    goto/16 :goto_3

    :sswitch_b
    const-string v6, "WriteMapNullValue"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v1

    goto/16 :goto_4

    :sswitch_c
    const-string v6, "WriteClassName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v13

    goto/16 :goto_4

    :sswitch_d
    const-string v6, "WriteNullBooleanAsFalse"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    goto :goto_4

    :sswitch_e
    const-string v6, "WriteNonStringValueAsString"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v11

    goto :goto_4

    :sswitch_f
    const-string v6, "WriteNullListAsEmpty"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v15

    goto :goto_4

    :sswitch_10
    const-string v6, "NotWriteRootClassName"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x9

    goto :goto_4

    :sswitch_11
    const-string v6, "WriteNullStringAsEmpty"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    goto :goto_4

    :sswitch_12
    const-string v6, "BrowserCompatible"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    goto :goto_4

    :sswitch_13
    const-string v6, "WriteEnumUsingToString"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v5, 0x8

    goto :goto_4

    :sswitch_14
    const-string v6, "IgnoreErrorGetter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v10

    goto :goto_4

    :sswitch_15
    const-string v6, "WriteNullNumberAsZero"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v12

    goto :goto_4

    :cond_2
    :goto_3
    move v5, v14

    :goto_4
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_5

    .line 2560
    :pswitch_6
    iget-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v8, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v5, v8

    iput-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    goto :goto_5

    .line 2557
    :pswitch_7
    iget-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->NotWriteRootClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v5, v7

    iput-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    goto :goto_5

    .line 2554
    :pswitch_8
    iget-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v5, v7

    iput-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    goto :goto_5

    .line 2551
    :pswitch_9
    iget-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v5, v7

    iput-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    goto :goto_5

    .line 2548
    :pswitch_a
    iget-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteClassName:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v5, v7

    iput-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    goto :goto_5

    .line 2545
    :pswitch_b
    iget-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserCompatible:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v5, v7

    iput-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    goto :goto_5

    .line 2542
    :pswitch_c
    iget-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v5, v7

    iput-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    goto :goto_5

    .line 2539
    :pswitch_d
    iget-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v5, v7

    iput-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    goto :goto_5

    .line 2536
    :pswitch_e
    iget-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v5, v7

    iput-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    goto :goto_5

    .line 2533
    :pswitch_f
    iget-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v5, v7

    iput-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    goto :goto_5

    .line 2530
    :pswitch_10
    iget-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    sget-object v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteNulls:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/JSONWriter$Feature;->mask:J

    or-long/2addr v5, v7

    iput-wide v5, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->writerFeatures:J

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 2518
    :pswitch_11
    check-cast v2, Ljava/lang/Boolean;

    .line 2519
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2520
    iput-boolean v1, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->alphabetic:Z

    goto :goto_6

    .line 2511
    :pswitch_12
    check-cast v2, Ljava/lang/String;

    .line 2512
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2513
    iput-object v2, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeKey:Ljava/lang/String;

    goto :goto_6

    .line 2504
    :pswitch_13
    check-cast v2, Ljava/lang/String;

    .line 2505
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2506
    iput-object v2, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->typeName:Ljava/lang/String;

    goto :goto_6

    .line 2497
    :pswitch_14
    check-cast v2, [Ljava/lang/Class;

    .line 2498
    array-length v1, v2

    if-eqz v1, :cond_3

    .line 2499
    iput-object v2, v0, Lcom/alibaba/fastjson2/codec/BeanInfo;->seeAlso:[Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4e6e01db -> :sswitch_a
        -0x4826dd33 -> :sswitch_9
        -0x3ec0df78 -> :sswitch_8
        -0x3c209d1b -> :sswitch_7
        -0x3814e684 -> :sswitch_6
        -0x32d96b3b -> :sswitch_5
        -0x2852af1b -> :sswitch_4
        0x56140cb -> :sswitch_3
        0x6873bce1 -> :sswitch_2
        0x6f73cf3d -> :sswitch_1
        0x75748aba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x737c2857 -> :sswitch_15
        -0x6a158c1f -> :sswitch_14
        -0x13fc7e70 -> :sswitch_13
        -0xca1b004 -> :sswitch_12
        -0x61b295c -> :sswitch_11
        -0x3c0c42b -> :sswitch_10
        0x3c26e3f7 -> :sswitch_f
        0x5a8cc575 -> :sswitch_e
        0x6bc5c64f -> :sswitch_d
        0x700b1b24 -> :sswitch_c
        0x7a300f8d -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static processJacksonJsonFormat(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 2647
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2648
    new-instance v1, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$fgHUN2nHi4Qx776vnMVXme4cVDM;

    invoke-direct {v1, p1, p0}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$fgHUN2nHi4Qx776vnMVXme4cVDM;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static processJacksonJsonFormat(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 2617
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2618
    new-instance v1, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$MFt5TpXQbYLkJrdyuQ8OcWBDUKM;

    invoke-direct {v1, p1, p0}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$MFt5TpXQbYLkJrdyuQ8OcWBDUKM;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static processJacksonJsonIgnore(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    const/4 v0, 0x1

    .line 2337
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/codec/FieldInfo;->ignore:Z

    .line 2338
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2339
    new-instance v1, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$xZ8PN9ZhlzVMzE1PV2f5chNzf74;

    invoke-direct {v1, p1, p0}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$xZ8PN9ZhlzVMzE1PV2f5chNzf74;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/FieldInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static processJacksonJsonInclude(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 2665
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2666
    new-instance v1, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$Fa6ZwvWDwX6KlUACPSpwWvnKo4g;

    invoke-direct {v1, p1, p0}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$Fa6ZwvWDwX6KlUACPSpwWvnKo4g;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static processJacksonJsonSubTypesType(Lcom/alibaba/fastjson2/codec/BeanInfo;ILjava/lang/annotation/Annotation;)V
    .locals 2

    .line 2708
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2709
    new-instance v1, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$pLWvGb7BH4vCgAWxzGCOCLr9s80;

    invoke-direct {v1, p2, p0, p1}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$pLWvGb7BH4vCgAWxzGCOCLr9s80;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;I)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static processJacksonJsonTypeName(Lcom/alibaba/fastjson2/codec/BeanInfo;Ljava/lang/annotation/Annotation;)V
    .locals 2

    .line 2690
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2691
    new-instance v1, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$hVdkQ7VTB_nLjOpLyJq1a4FWbzM;

    invoke-direct {v1, p1, p0}, Lcom/alibaba/fastjson2/util/-$$Lambda$BeanUtils$hVdkQ7VTB_nLjOpLyJq1a4FWbzM;-><init>(Ljava/lang/annotation/Annotation;Lcom/alibaba/fastjson2/codec/BeanInfo;)V

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->annotationMethods(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1875
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    return-object p0
.end method

.method private static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ">;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1883
    :cond_0
    instance-of v1, p2, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_4

    .line 1884
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/TypeVariable;

    .line 1885
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Type;

    if-eqz v2, :cond_2

    .line 1888
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v2

    :goto_0
    return-object p2

    .line 1892
    :cond_2
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-interface {p3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_3

    move-object v0, v1

    .line 1897
    :cond_3
    invoke-static {p0, p1, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p2

    if-ne p2, v1, :cond_0

    goto/16 :goto_3

    .line 1901
    :cond_4
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_6

    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1903
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 1904
    invoke-static {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1905
    invoke-static {p2, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p2, v1

    goto/16 :goto_3

    .line 1907
    :cond_5
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p0

    :goto_1
    move-object p2, p0

    goto/16 :goto_3

    .line 1909
    :cond_6
    instance-of v1, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_8

    .line 1910
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .line 1911
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1912
    invoke-static {p0, p1, v1, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1913
    invoke-static {v1, p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto/16 :goto_3

    .line 1915
    :cond_7
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object p0

    goto :goto_1

    .line 1917
    :cond_8
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    .line 1918
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 1919
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1920
    invoke-static {p0, p1, v1, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1921
    invoke-static {v4, v1}, Lcom/alibaba/fastjson2/util/BeanUtils;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    .line 1923
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1924
    array-length v6, v5

    :goto_2
    if-ge v2, v6, :cond_b

    .line 1925
    aget-object v7, v5, v2

    invoke-static {p0, p1, v7, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 1926
    aget-object v8, v5, v2

    invoke-static {v7, v8}, Lcom/alibaba/fastjson2/util/BeanUtils;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    if-nez v1, :cond_9

    .line 1928
    invoke-virtual {v5}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/reflect/Type;

    move v1, v3

    .line 1931
    :cond_9
    aput-object v7, v5, v2

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_b
    if-eqz v1, :cond_e

    .line 1936
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {v4, p0, v5}, Lcom/alibaba/fastjson2/util/BeanUtils;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object p0

    goto :goto_1

    .line 1939
    :cond_c
    instance-of v1, p2, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_e

    .line 1940
    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/WildcardType;

    .line 1941
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 1942
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1944
    array-length v5, v4

    if-ne v5, v3, :cond_d

    .line 1945
    aget-object v1, v4, v2

    invoke-static {p0, p1, v1, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1946
    aget-object p1, v4, v2

    if-eq p0, p1, :cond_e

    .line 1947
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p2

    goto :goto_3

    .line 1950
    :cond_d
    array-length v4, v1

    if-ne v4, v3, :cond_e

    .line 1951
    aget-object v3, v1, v2

    invoke-static {p0, p1, v3, p3}, Lcom/alibaba/fastjson2/util/BeanUtils;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1952
    aget-object p1, v1, v2

    if-eq p0, p1, :cond_e

    .line 1953
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object p2

    :cond_e
    :goto_3
    if-eqz v0, :cond_f

    .line 1964
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object p2
.end method

.method static resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 1970
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p2

    .line 1977
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    .line 1978
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_1

    .line 1979
    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/util/BeanUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 1980
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0

    :cond_1
    return-object p2
.end method

.method public static setNoneStaticMemberClassParent(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 2390
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2391
    sget-object v1, Lcom/alibaba/fastjson2/util/BeanUtils;->declaredFieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 2393
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 2396
    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 2397
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    .line 2398
    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_4

    .line 2407
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2408
    array-length v5, v1

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_4

    aget-object v7, v1, v6

    .line 2409
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    .line 2410
    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    .line 2413
    :cond_3
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2415
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/reflect/Field;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Field;

    .line 2418
    :goto_4
    sget-object v4, Lcom/alibaba/fastjson2/util/BeanUtils;->fieldCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/4 v4, 0x0

    .line 2422
    array-length v5, v1

    :goto_5
    if-ge v2, v5, :cond_7

    aget-object v6, v1, v2

    .line 2423
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "this$0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v4, v6

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_8

    .line 2429
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2431
    :try_start_0
    invoke-virtual {v4, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 2433
    :catch_0
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNoneStaticMemberClassParent error, class "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_6
    return-void
.end method

.method public static setterName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 1133
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v1, v0, p1

    .line 1134
    new-array v2, v1, [C

    const/4 v3, 0x0

    .line 1135
    invoke-virtual {p0, p1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1136
    aget-char p0, v2, v3

    const/16 p1, 0x5a

    const/16 v0, 0x41

    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    .line 1137
    aget-char v1, v2, v4

    if-lt v1, v0, :cond_0

    aget-char v1, v2, v4

    if-gt v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    if-lt p0, v0, :cond_1

    if-gt p0, p1, :cond_1

    if-nez v4, :cond_1

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    .line 1139
    aput-char p0, v2, v3

    .line 1141
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static setterName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "CamelCase"

    if-nez p1, :cond_0

    move-object p1, v0

    .line 1088
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_1

    return-object p0

    :cond_1
    const-string/jumbo v3, "set"

    .line 1093
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1095
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x1

    sparse-switch v6, :sswitch_data_0

    :goto_1
    move v2, v5

    goto :goto_2

    :sswitch_0
    const-string v0, "SnakeCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x5

    goto :goto_2

    :sswitch_1
    const-string v0, "UpperCaseWithUnderScores"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    goto :goto_2

    :sswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :sswitch_3
    const-string v0, "PascalCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_4
    const-string v0, "NeverUseThisValueExceptDefaultValue"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move v2, v7

    goto :goto_2

    :sswitch_5
    const-string v0, "UpperCase"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    move v2, v4

    :cond_8
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 1128
    new-instance p0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1110
    :pswitch_0
    invoke-static {p0, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->snakeCase(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1113
    :pswitch_1
    invoke-static {p0, v3, v7}, Lcom/alibaba/fastjson2/util/BeanUtils;->underScores(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1108
    :pswitch_2
    invoke-static {p0, v1, v3}, Lcom/alibaba/fastjson2/util/BeanUtils;->pascal(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    sub-int p1, v1, v3

    .line 1098
    new-array v0, p1, [C

    .line 1099
    invoke-virtual {p0, v3, v1, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1100
    aget-char p0, v0, v4

    const/16 v1, 0x5a

    const/16 v2, 0x41

    if-le p1, v7, :cond_9

    .line 1101
    aget-char p1, v0, v7

    if-lt p1, v2, :cond_9

    aget-char p1, v0, v7

    if-gt p1, v1, :cond_9

    goto :goto_3

    :cond_9
    move v7, v4

    :goto_3
    if-lt p0, v2, :cond_a

    if-gt p0, v1, :cond_a

    if-nez v7, :cond_a

    add-int/lit8 p0, p0, 0x20

    int-to-char p0, p0

    .line 1103
    aput-char p0, v0, v4

    .line 1105
    :cond_a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :pswitch_4
    sub-int p1, v1, v3

    .line 1116
    new-array v0, p1, [C

    .line 1117
    invoke-virtual {p0, v3, v1, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1118
    aget-char p0, v0, v4

    :goto_4
    if-ge v4, p1, :cond_c

    .line 1120
    aget-char v1, v0, v4

    const/16 v2, 0x61

    if-lt v1, v2, :cond_b

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_b

    add-int/lit8 v1, v1, -0x20

    int-to-char v1, v1

    .line 1122
    aput-char v1, v0, v4

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1125
    :cond_c
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b49b92e -> :sswitch_5
        -0x4252863f -> :sswitch_4
        0x4fa9695c -> :sswitch_3
        0x62ad98e6 -> :sswitch_2
        0x75cfd341 -> :sswitch_1
        0x7c737870 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setters(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 425
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->ignore(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 429
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 431
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 432
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_1
    array-length v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_19

    aget-object v4, v1, v3

    .line 436
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    .line 437
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_b

    .line 441
    :cond_2
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Object;

    if-ne v5, v6, :cond_3

    goto/16 :goto_b

    .line 445
    :cond_3
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 448
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v7, "hashCode"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    move v6, v8

    goto :goto_1

    :sswitch_1
    const-string v7, "equals"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    move v6, v9

    goto :goto_1

    :sswitch_2
    const-string/jumbo v7, "toString"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    move v6, v2

    :goto_1
    packed-switch v6, :pswitch_data_0

    move v6, v2

    goto :goto_2

    :pswitch_0
    move v6, v9

    :goto_2
    if-eqz v6, :cond_7

    goto/16 :goto_b

    .line 462
    :cond_7
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v6

    .line 463
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    const/4 v10, 0x3

    if-nez v6, :cond_a

    .line 467
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v10, :cond_18

    const-string v11, "get"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    goto/16 :goto_b

    .line 471
    :cond_8
    const-class v11, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq v7, v11, :cond_9

    const-class v11, Ljava/util/concurrent/atomic/AtomicLong;

    if-eq v7, v11, :cond_9

    const-class v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eq v7, v11, :cond_9

    const-class v11, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eq v7, v11, :cond_9

    const-class v11, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-eq v7, v11, :cond_9

    const-class v11, Ljava/util/concurrent/atomic/AtomicReference;

    if-eq v7, v11, :cond_9

    const-class v11, Ljava/util/Collection;

    .line 477
    invoke-virtual {v11, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_9

    const-class v11, Ljava/util/Map;

    .line 478
    invoke-virtual {v11, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 480
    :cond_9
    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_a
    if-ne v6, v8, :cond_f

    .line 486
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    sget-object v11, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v8, v11, :cond_f

    .line 487
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    aget-object v8, v8, v2

    const-class v11, Ljava/lang/String;

    if-ne v8, v11, :cond_f

    .line 489
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v5

    .line 492
    array-length v6, v5

    move v7, v2

    move v8, v7

    :goto_3
    if-ge v7, v6, :cond_e

    aget-object v10, v5, v7

    .line 493
    invoke-interface {v10}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v11

    .line 494
    const-class v12, Lcom/alibaba/fastjson2/annotation/JSONField;

    invoke-static {v10, v12}, Lcom/alibaba/fastjson2/util/BeanUtils;->findAnnotation(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v10

    check-cast v10, Lcom/alibaba/fastjson2/annotation/JSONField;

    if-eqz v10, :cond_b

    .line 496
    invoke-interface {v10}, Lcom/alibaba/fastjson2/annotation/JSONField;->unwrapped()Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_5

    .line 503
    :cond_b
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    const-string v11, "com.alibaba.fastjson2.adapter.jackson.annotation.JsonAnySetter"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "com.fasterxml.jackson.annotation.JsonAnySetter"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_4

    .line 506
    :cond_c
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->isUseJacksonAnnotation()Z

    move-result v10

    if-eqz v10, :cond_d

    move v8, v9

    :cond_d
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_e
    move v9, v8

    :goto_5
    if-eqz v9, :cond_18

    .line 516
    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_f
    if-eq v6, v9, :cond_10

    goto/16 :goto_b

    .line 525
    :cond_10
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_12

    const-string/jumbo v6, "set"

    .line 526
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    if-ne v7, p0, :cond_12

    :cond_11
    move v5, v9

    goto :goto_6

    :cond_12
    move v5, v2

    :goto_6
    if-nez v5, :cond_14

    if-eqz p1, :cond_14

    .line 529
    invoke-static {p1, v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_14

    .line 531
    invoke-static {v6}, Lcom/alibaba/fastjson2/util/BeanUtils;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 532
    array-length v7, v6

    move v8, v2

    :goto_7
    if-ge v8, v7, :cond_14

    aget-object v10, v6, v8

    .line 533
    invoke-interface {v10}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson2/annotation/JSONField;

    if-ne v11, v12, :cond_13

    .line 534
    check-cast v10, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 535
    invoke-interface {v10}, Lcom/alibaba/fastjson2/annotation/JSONField;->unwrapped()Z

    move-result v6

    if-nez v6, :cond_14

    move v5, v9

    goto :goto_8

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_14
    :goto_8
    if-nez v5, :cond_16

    .line 546
    invoke-static {v4}, Lcom/alibaba/fastjson2/util/BeanUtils;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 547
    array-length v7, v6

    move v8, v2

    :goto_9
    if-ge v8, v7, :cond_16

    aget-object v10, v6, v8

    .line 548
    invoke-interface {v10}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lcom/alibaba/fastjson2/annotation/JSONField;

    if-ne v11, v12, :cond_15

    .line 549
    check-cast v10, Lcom/alibaba/fastjson2/annotation/JSONField;

    .line 550
    invoke-interface {v10}, Lcom/alibaba/fastjson2/annotation/JSONField;->unwrapped()Z

    move-result v6

    if-nez v6, :cond_16

    goto :goto_a

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_16
    move v9, v5

    :goto_a
    if-nez v9, :cond_17

    goto :goto_b

    .line 562
    :cond_17
    invoke-interface {p2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_18
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_19
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69e9ad94 -> :sswitch_2
        -0x4d378041 -> :sswitch_1
        0x8cdac1b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setters(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 421
    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->setters(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static setters(Ljava/lang/Class;ZLjava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 567
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->ignore(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 571
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 573
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 574
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    :cond_1
    array-length p0, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_9

    aget-object v2, v1, v0

    .line 578
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_4

    .line 582
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_2

    .line 583
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v4, :cond_8

    const-string v6, "get"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    .line 587
    :cond_2
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    .line 588
    const-class v6, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq v5, v6, :cond_3

    const-class v6, Ljava/util/concurrent/atomic/AtomicLong;

    if-eq v5, v6, :cond_3

    const-class v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eq v5, v6, :cond_3

    const-class v6, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    if-eq v5, v6, :cond_3

    const-class v6, Ljava/util/concurrent/atomic/AtomicLongArray;

    if-eq v5, v6, :cond_3

    const-class v6, Ljava/util/Collection;

    .line 593
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 595
    :cond_3
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    goto :goto_1

    .line 604
    :cond_5
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 605
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_1

    .line 609
    :cond_6
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 610
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz p1, :cond_7

    if-le v5, v4, :cond_8

    const-string/jumbo v4, "set"

    .line 611
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    .line 615
    :cond_7
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_8
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method static snakeCase(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    .line 1427
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1429
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    if-nez v1, :cond_0

    const/16 v1, 0x80

    new-array v1, v1, [C

    :cond_0
    const/4 v2, 0x0

    move v3, p1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 1436
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x41

    if-lt v5, v6, :cond_2

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_2

    add-int/lit8 v5, v5, 0x20

    int-to-char v5, v5

    if-le v3, p1, :cond_1

    add-int/lit8 v6, v4, 0x1

    const/16 v7, 0x5f

    .line 1440
    aput-char v7, v1, v4

    move v4, v6

    :cond_1
    add-int/lit8 v6, v4, 0x1

    .line 1442
    aput-char v5, v1, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v4, 0x1

    .line 1444
    aput-char v5, v1, v4

    :goto_1
    move v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1447
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1449
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v0, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1450
    throw p0
.end method

.method public static staticMethod(Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .line 312
    sget-object v0, Lcom/alibaba/fastjson2/util/BeanUtils;->methodCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 314
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 315
    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_0
    array-length p0, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    aget-object v2, v1, v0

    .line 319
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 320
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 324
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 2

    .line 1694
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_0

    .line 1695
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    move-object p0, v0

    .line 1699
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;

    sget-object v1, Lcom/alibaba/fastjson2/util/BeanUtils;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 4

    .line 1709
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1710
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/reflect/Type;

    aput-object p0, v0, v1

    move-object p0, v0

    .line 1714
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v1

    invoke-direct {v0, v2, p0}, Lcom/alibaba/fastjson2/util/BeanUtils$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 1832
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static underScores(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9

    .line 1508
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1510
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    if-nez v1, :cond_0

    const/16 v1, 0x80

    new-array v1, v1, [C

    :cond_0
    const/4 v2, 0x0

    move v3, p1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_7

    .line 1517
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    const/16 v7, 0x5a

    const/16 v8, 0x41

    if-eqz p2, :cond_4

    if-lt v5, v8, :cond_2

    if-le v5, v7, :cond_1

    goto :goto_1

    :cond_1
    if-le v3, p1, :cond_3

    add-int/lit8 v7, v4, 0x1

    .line 1525
    aput-char v6, v1, v4

    move v4, v7

    goto :goto_2

    :cond_2
    :goto_1
    const/16 v6, 0x61

    if-lt v5, v6, :cond_3

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_3

    add-int/lit8 v5, v5, -0x20

    int-to-char v5, v5

    :cond_3
    :goto_2
    add-int/lit8 v6, v4, 0x1

    .line 1528
    aput-char v5, v1, v4

    goto :goto_3

    :cond_4
    if-lt v5, v8, :cond_6

    if-gt v5, v7, :cond_6

    if-le v3, p1, :cond_5

    add-int/lit8 v7, v4, 0x1

    .line 1532
    aput-char v6, v1, v4

    move v4, v7

    :cond_5
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v5, v5, 0x20

    int-to-char v5, v5

    .line 1534
    aput-char v5, v1, v4

    goto :goto_3

    :cond_6
    add-int/lit8 v6, v4, 0x1

    .line 1536
    aput-char v5, v1, v4

    :goto_3
    move v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1540
    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1542
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1543
    throw p0
.end method

.method static upperCamelWith(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 11

    .line 1454
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1456
    sget-object v1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    if-nez v1, :cond_0

    const/16 v1, 0x80

    new-array v1, v1, [C

    :cond_0
    const/4 v2, 0x0

    move v3, p1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_8

    .line 1463
    :try_start_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7a

    const/16 v7, 0x61

    if-ne v3, p1, :cond_3

    if-lt v5, v7, :cond_1

    if-gt v5, v6, :cond_1

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v0, :cond_1

    .line 1468
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_1

    if-gt v8, v6, :cond_1

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v5, v5, -0x20

    int-to-char v5, v5

    .line 1470
    aput-char v5, v1, v4

    goto/16 :goto_1

    :cond_1
    const/16 v8, 0x5f

    if-ne v5, v8, :cond_2

    add-int/lit8 v8, v3, 0x1

    if-ge v8, v0, :cond_2

    .line 1472
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v7, :cond_2

    if-gt v9, v6, :cond_2

    .line 1474
    aput-char v5, v1, v4

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v9, v9, -0x20

    int-to-char v5, v9

    .line 1475
    aput-char v5, v1, v3

    add-int/lit8 v4, v4, 0x2

    move v3, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v4, 0x1

    .line 1479
    aput-char v5, v1, v4

    goto :goto_1

    :cond_3
    const/16 v8, 0x5a

    const/16 v9, 0x41

    if-lt v5, v9, :cond_6

    if-gt v5, v8, :cond_6

    add-int/lit8 v10, v3, 0x1

    if-ge v10, v0, :cond_6

    .line 1483
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v9, :cond_4

    if-le v10, v8, :cond_6

    :cond_4
    if-le v3, p1, :cond_5

    add-int/lit8 v6, v4, 0x1

    .line 1485
    aput-char p2, v1, v4

    move v4, v6

    :cond_5
    add-int/lit8 v6, v4, 0x1

    .line 1487
    aput-char v5, v1, v4

    goto :goto_1

    :cond_6
    if-lt v5, v9, :cond_7

    if-gt v5, v8, :cond_7

    if-le v3, p1, :cond_7

    add-int/lit8 v10, v3, 0x1

    if-ge v10, v0, :cond_7

    .line 1491
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v9, :cond_7

    if-gt v10, v8, :cond_7

    add-int/lit8 v8, v3, -0x1

    .line 1493
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v7, :cond_7

    if-gt v8, v6, :cond_7

    add-int/lit8 v6, v4, 0x1

    .line 1495
    aput-char p2, v1, v4

    add-int/lit8 v4, v6, 0x1

    .line 1496
    aput-char v5, v1, v6

    goto :goto_2

    :cond_7
    add-int/lit8 v6, v4, 0x1

    .line 1498
    aput-char v5, v1, v4

    :goto_1
    move v4, v6

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1501
    :cond_8
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1503
    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/alibaba/fastjson2/util/TypeUtils;->CHARS_UPDATER:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object p2, Lcom/alibaba/fastjson2/util/TypeUtils;->CACHE:Lcom/alibaba/fastjson2/util/TypeUtils$Cache;

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1504
    throw p0
.end method
