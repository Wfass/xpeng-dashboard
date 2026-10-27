.class public abstract Lcom/alibaba/fastjson2/TypeReference;
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


# instance fields
.field protected final rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation
.end field

.field protected final type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 47
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 48
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/BeanUtils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->rawType:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 62
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/TypeReference;->rawType:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson2/TypeReference$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/TypeReference;-><init>(Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 78
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 83
    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-object v0, p1, v2

    if-nez v0, :cond_0

    new-array p1, v1, [Ljava/lang/reflect/Type;

    .line 84
    const-class v0, Ljava/lang/Object;

    aput-object v0, p1, v2

    .line 87
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 91
    invoke-static {v0, v1, p1, v2}, Lcom/alibaba/fastjson2/TypeReference;->canonicalize(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    .line 92
    invoke-static {p1}, Lcom/alibaba/fastjson2/util/BeanUtils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/TypeReference;->rawType:Ljava/lang/Class;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 80
    throw p1
.end method

.method public static arrayType(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 327
    new-instance v0, Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/BeanUtils$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method private static canonicalize(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/ParameterizedType;",
            "[",
            "Ljava/lang/reflect/Type;",
            "I)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 245
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 246
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 248
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_c

    .line 249
    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v3, :cond_0

    array-length v3, p2

    if-ge p3, v3, :cond_0

    add-int/lit8 v3, p3, 0x1

    .line 251
    aget-object p3, p2, p3

    aput-object p3, p1, v2

    move p3, v3

    .line 255
    :cond_0
    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_a

    .line 256
    aget-object v3, p1, v2

    move v4, v1

    .line 259
    :goto_1
    instance-of v5, v3, Ljava/lang/reflect/GenericArrayType;

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 261
    check-cast v3, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v3}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v3

    goto :goto_1

    .line 264
    :cond_1
    instance-of v5, v3, Ljava/lang/Class;

    if-eqz v5, :cond_a

    .line 265
    check-cast v3, Ljava/lang/Class;

    .line 267
    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 269
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_2

    const/16 v3, 0x49

    goto :goto_2

    .line 271
    :cond_2
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_3

    const/16 v3, 0x4a

    goto :goto_2

    .line 273
    :cond_3
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_4

    const/16 v3, 0x46

    goto :goto_2

    .line 275
    :cond_4
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_5

    const/16 v3, 0x44

    goto :goto_2

    .line 277
    :cond_5
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_6

    const/16 v3, 0x5a

    goto :goto_2

    .line 279
    :cond_6
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_7

    const/16 v3, 0x43

    goto :goto_2

    .line 281
    :cond_7
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_8

    const/16 v3, 0x42

    goto :goto_2

    .line 283
    :cond_8
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_a

    const/16 v3, 0x53

    :goto_2
    add-int/lit8 v5, v4, 0x1

    .line 289
    new-array v5, v5, [C

    move v6, v1

    :goto_3
    if-ge v6, v4, :cond_9

    const/16 v7, 0x5b

    .line 291
    aput-char v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 293
    :cond_9
    aput-char v3, v5, v4

    .line 294
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([C)V

    .line 295
    invoke-static {v3}, Lcom/alibaba/fastjson2/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, p1, v2

    .line 302
    :cond_a
    aget-object v3, p1, v2

    instance-of v3, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_b

    .line 303
    aget-object v3, p1, v2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p0, v3, p2, p3}, Lcom/alibaba/fastjson2/TypeReference;->canonicalize(Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;[Ljava/lang/reflect/Type;I)Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, p1, v2

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 310
    :cond_c
    new-instance p2, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    invoke-direct {p2, p1, p0, v0}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    return-object p2
.end method

.method public static collectionType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Collection;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 323
    new-instance v0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/TypeReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson2/TypeReference<",
            "*>;"
        }
    .end annotation

    .line 229
    new-instance v0, Lcom/alibaba/fastjson2/TypeReference$1;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/TypeReference$1;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static mapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/Map;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 335
    new-instance v0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static mapType(Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 342
    new-instance v0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    const-class v1, Ljava/util/Map;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static varargs of([Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1

    .line 316
    new-instance v0, Lcom/alibaba/fastjson2/util/MultiType;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/util/MultiType;-><init>([Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static varargs parametricType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 346
    new-instance v0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static varargs parametricType(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 350
    new-instance v0, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson2/util/ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public final getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "-TT;>;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->rawType:Ljava/lang/Class;

    return-object v0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public varargs parseArray(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-static {p1, v0, p2}, Lcom/alibaba/fastjson2/JSON;->parseArray(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs parseArray([B[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-static {p1, v0, p2}, Lcom/alibaba/fastjson2/JSON;->parseArray([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parseObject([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/JSON;->parseObject([BLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public to(Lcom/alibaba/fastjson2/JSONArray;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONArray;",
            ")TT;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONArray;->to(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs to(Lcom/alibaba/fastjson2/JSONObject;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONObject;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson2/JSONObject;->to(Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toJavaObject(Lcom/alibaba/fastjson2/JSONArray;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONArray;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONArray;->to(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs toJavaObject(Lcom/alibaba/fastjson2/JSONObject;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONObject;",
            "[",
            "Lcom/alibaba/fastjson2/JSONReader$Feature;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/alibaba/fastjson2/TypeReference;->type:Ljava/lang/reflect/Type;

    invoke-virtual {p1, v0, p2}, Lcom/alibaba/fastjson2/JSONObject;->to(Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/JSONReader$Feature;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
