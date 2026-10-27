.class public Lcom/alibaba/fastjson2/util/KotlinUtils;
.super Ljava/lang/Object;
.source "KotlinUtils.java"


# static fields
.field public static final STATE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "kotlin.Metadata"

    .line 23
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const/4 v0, 0x1

    const-string v1, "kotlin.reflect.jvm.ReflectJvmMapping"

    .line 25
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    .line 30
    :catchall_0
    sput v0, Lcom/alibaba/fastjson2/util/KotlinUtils;->STATE:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static getConstructor(Ljava/lang/Class;Lcom/alibaba/fastjson2/codec/BeanInfo;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/alibaba/fastjson2/codec/BeanInfo;",
            ")V"
        }
    .end annotation

    .line 47
    iget-object v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;

    .line 48
    invoke-static {p0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getConstructor(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 50
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v7, v3

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v8, 0x2

    if-ge v5, v2, :cond_4

    aget-object v9, v1, v5

    .line 51
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v10

    if-eqz v0, :cond_0

    .line 52
    array-length v11, v0

    if-eq v10, v11, :cond_0

    goto :goto_1

    :cond_0
    if-le v10, v8, :cond_1

    .line 57
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    add-int/lit8 v11, v10, -0x2

    .line 58
    aget-object v11, v8, v11

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v11, v12, :cond_1

    add-int/lit8 v11, v10, -0x1

    aget-object v8, v8, v11

    const-class v11, Lkotlin/jvm/internal/DefaultConstructorMarker;

    if-ne v8, v11, :cond_1

    .line 61
    iput-object v9, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->markerConstructor:Ljava/lang/reflect/Constructor;

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    if-ge v6, v10, :cond_3

    :cond_2
    move-object v7, v9

    move v6, v10

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_9

    .line 72
    sget v0, Lcom/alibaba/fastjson2/util/KotlinUtils;->STATE:I

    if-ne v0, v8, :cond_9

    .line 75
    :try_start_0
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    .line 77
    invoke-interface {p0}, Lkotlin/reflect/KClass;->getConstructors()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/KFunction;

    .line 78
    invoke-interface {v0}, Lkotlin/reflect/KFunction;->getParameters()Ljava/util/List;

    move-result-object v0

    if-eqz v3, :cond_6

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v6, v1, :cond_5

    :cond_6
    move-object v3, v0

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_9

    .line 85
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    new-array v0, p0, [Ljava/lang/String;

    :goto_3
    if-ge v4, p0, :cond_8

    .line 87
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KParameter;

    invoke-interface {v1}, Lkotlin/reflect/KParameter;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 89
    :cond_8
    iput-object v0, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->createParameterNames:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :catchall_0
    :cond_9
    iput-object v7, p1, Lcom/alibaba/fastjson2/codec/BeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    return-void
.end method
