.class public Lcom/alibaba/fastjson/TypeReference;
.super Ljava/lang/Object;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static classTypeCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final type:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 47
    sget-object v1, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    if-nez v1, :cond_0

    .line 49
    sget-object v1, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v1, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/Type;

    .line 53
    :cond_0
    iput-object v1, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 6

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 60
    array-length v1, p1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    aget-object v1, p1, v0

    if-nez v1, :cond_0

    new-array p1, v2, [Ljava/lang/reflect/Type;

    .line 63
    const-class v1, Ljava/lang/Object;

    aput-object v1, p1, v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 69
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 70
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 71
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    move v4, v0

    .line 74
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_4

    .line 75
    aget-object v5, v2, v0

    instance-of v5, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_1

    array-length v5, p1

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 77
    aget-object v4, p1, v4

    aput-object v4, v2, v0

    move v4, v5

    .line 80
    :cond_1
    aget-object v5, v2, v0

    instance-of v5, v5, Ljava/lang/reflect/GenericArrayType;

    if-eqz v5, :cond_2

    .line 81
    aget-object v5, v2, v0

    check-cast v5, Ljava/lang/reflect/GenericArrayType;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->checkPrimitiveArray(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object v5

    aput-object v5, v2, v0

    .line 86
    :cond_2
    aget-object v5, v2, v0

    instance-of v5, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_3

    .line 87
    aget-object v5, v2, v0

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, v5, p1, v4}, Lcom/alibaba/fastjson/TypeReference;->handlerParameterizedType(Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object v5

    aput-object v5, v2, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-direct {p1, v2, v1, v3}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 92
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-nez v0, :cond_5

    .line 94
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Type;

    .line 98
    :cond_5
    iput-object v0, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    return-void
.end method

.method private handlerParameterizedType(Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;
    .locals 4

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 103
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 104
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v2, 0x0

    .line 106
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 107
    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_0

    array-length v3, p2

    if-ge p3, v3, :cond_0

    add-int/lit8 v3, p3, 0x1

    .line 108
    aget-object p3, p2, p3

    aput-object p3, p1, v2

    move p3, v3

    .line 112
    :cond_0
    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_1

    .line 113
    aget-object v3, p1, v2

    check-cast v3, Ljava/lang/reflect/GenericArrayType;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->checkPrimitiveArray(Ljava/lang/reflect/GenericArrayType;)Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, p1, v2

    .line 118
    :cond_1
    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    .line 119
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/TypeReference;->handlerParameterizedType(Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_3
    new-instance p2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    invoke-direct {p2, p1, v0, v1}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object p2
.end method

.method public static intern(Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;)Ljava/lang/reflect/Type;
    .locals 1

    .line 135
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0, p0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/alibaba/fastjson/TypeReference;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Type;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method
