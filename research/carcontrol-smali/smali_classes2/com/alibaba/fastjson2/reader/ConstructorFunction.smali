.class final Lcom/alibaba/fastjson2/reader/ConstructorFunction;
.super Ljava/lang/Object;
.source "ConstructorFunction.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "Ljava/lang/Object;",
        ">;TT;>;"
    }
.end annotation


# instance fields
.field alternateConstructorArgTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field

.field alternateConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field alternateConstructorNameHashCodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;[J>;"
        }
    .end annotation
.end field

.field alternateConstructorNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final alternateConstructors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor;",
            ">;"
        }
    .end annotation
.end field

.field final biFunction:Ljava/util/function/BiFunction;

.field final constructor:Ljava/lang/reflect/Constructor;

.field final function:Ljava/util/function/Function;

.field final hashCodes:[J

.field final marker:Z

.field final paramNames:[Ljava/lang/String;

.field final parameters:[Ljava/lang/reflect/Parameter;


# direct methods
.method varargs constructor <init>(Ljava/util/List;Ljava/lang/reflect/Constructor;Ljava/util/function/Function;Ljava/util/function/BiFunction;Ljava/lang/reflect/Constructor;[Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor;",
            ">;",
            "Ljava/lang/reflect/Constructor;",
            "Ljava/util/function/Function;",
            "Ljava/util/function/BiFunction;",
            "Ljava/lang/reflect/Constructor;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v3, p3

    .line 40
    iput-object v3, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->function:Ljava/util/function/Function;

    move-object/from16 v3, p4

    .line 41
    iput-object v3, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->biFunction:Ljava/util/function/BiFunction;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    .line 42
    :goto_0
    iput-boolean v5, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->marker:Z

    if-eqz v5, :cond_1

    move-object/from16 v5, p5

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    .line 43
    :goto_1
    iput-object v5, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->constructor:Ljava/lang/reflect/Constructor;

    .line 44
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Constructor;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->parameters:[Ljava/lang/reflect/Parameter;

    .line 45
    iput-object v2, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->paramNames:[Ljava/lang/String;

    .line 46
    array-length v5, v5

    new-array v5, v5, [J

    iput-object v5, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->hashCodes:[J

    move v5, v3

    .line 47
    :goto_2
    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->parameters:[Ljava/lang/reflect/Parameter;

    array-length v7, v6

    if-ge v5, v7, :cond_4

    .line 49
    array-length v7, v2

    if-ge v5, v7, :cond_2

    .line 50
    aget-object v6, v2, v5

    goto :goto_3

    .line 52
    :cond_2
    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Parameter;->getName()Ljava/lang/String;

    move-result-object v6

    :goto_3
    if-nez v6, :cond_3

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "arg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 57
    :cond_3
    iget-object v7, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->hashCodes:[J

    invoke-static {v6}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 60
    :cond_4
    iput-object v1, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->alternateConstructors:Ljava/util/List;

    if-eqz v1, :cond_8

    .line 62
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    .line 63
    new-instance v5, Ljava/util/HashMap;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v6}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v5, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->alternateConstructorMap:Ljava/util/Map;

    .line 64
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v2, v6}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v5, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->alternateConstructorNames:Ljava/util/Map;

    .line 65
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v2, v6}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v5, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->alternateConstructorArgTypes:Ljava/util/Map;

    .line 66
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v2, v6}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v5, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->alternateConstructorNameHashCodes:Ljava/util/Map;

    move v5, v3

    :goto_4
    if-ge v5, v2, :cond_8

    .line 68
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    .line 69
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 71
    invoke-static {v6}, Lcom/alibaba/fastjson2/internal/asm/ASMUtils;->lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;

    move-result-object v13

    .line 73
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v14

    .line 74
    new-instance v15, Lcom/alibaba/fastjson2/codec/FieldInfo;

    invoke-direct {v15}, Lcom/alibaba/fastjson2/codec/FieldInfo;-><init>()V

    .line 75
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->getDefaultObjectReaderProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v16

    move v12, v3

    .line 76
    :goto_5
    array-length v7, v14

    if-ge v12, v7, :cond_6

    array-length v7, v13

    if-ge v12, v7, :cond_6

    .line 77
    invoke-virtual {v15}, Lcom/alibaba/fastjson2/codec/FieldInfo;->init()V

    .line 79
    aget-object v17, v14, v12

    .line 80
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    move-object/from16 v7, v16

    move-object v8, v15

    move-object v10, v6

    move v11, v12

    move/from16 v18, v12

    move-object/from16 v12, v17

    invoke-virtual/range {v7 .. v12}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getFieldInfo(Lcom/alibaba/fastjson2/codec/FieldInfo;Ljava/lang/Class;Ljava/lang/reflect/Constructor;ILjava/lang/reflect/Parameter;)V

    .line 81
    iget-object v7, v15, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 82
    iget-object v7, v15, Lcom/alibaba/fastjson2/codec/FieldInfo;->fieldName:Ljava/lang/String;

    aput-object v7, v13, v18

    :cond_5
    add-int/lit8 v12, v18, 0x1

    goto :goto_5

    .line 86
    :cond_6
    array-length v7, v13

    new-array v7, v7, [J

    .line 87
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 88
    new-instance v9, Ljava/util/HashSet;

    array-length v10, v13

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(I)V

    move v10, v3

    .line 89
    :goto_6
    array-length v11, v13

    if-ge v10, v11, :cond_7

    .line 90
    aget-object v11, v13, v10

    invoke-static {v11}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v11

    .line 91
    aput-wide v11, v7, v10

    .line 92
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 94
    :cond_7
    iget-object v10, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->alternateConstructorMap:Ljava/util/Map;

    invoke-interface {v10, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->alternateConstructorNames:Ljava/util/Map;

    invoke-interface {v6, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->alternateConstructorNameHashCodes:Ljava/util/Map;

    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v6, v0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->alternateConstructorArgTypes:Ljava/util/Map;

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 15
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->apply(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Map;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->hashCodes:[J

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-wide v5, v0, v3

    .line 106
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_1
    const-string v1, "invoke constructor error, "

    if-nez v0, :cond_4

    .line 112
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->alternateConstructorMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 113
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 114
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->alternateConstructorMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    if-eqz v3, :cond_4

    .line 116
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->alternateConstructorNameHashCodes:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [J

    .line 117
    iget-object v5, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->alternateConstructorArgTypes:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    .line 118
    array-length v5, v4

    new-array v5, v5, [Ljava/lang/Object;

    .line 119
    :goto_2
    array-length v6, v4

    if-ge v2, v6, :cond_3

    .line 120
    aget-wide v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 121
    aget-object v7, v0, v2

    if-nez v6, :cond_2

    .line 123
    invoke-static {v7}, Lcom/alibaba/fastjson2/util/TypeUtils;->getDefaultValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .line 125
    :cond_2
    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 129
    :cond_3
    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    .line 132
    :goto_3
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 137
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->function:Ljava/util/function/Function;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->parameters:[Ljava/lang/reflect/Parameter;

    array-length v3, v0

    if-ne v3, v4, :cond_7

    .line 138
    aget-object v0, v0, v2

    .line 139
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->hashCodes:[J

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 140
    invoke-virtual {v0}, Ljava/lang/reflect/Parameter;->getType()Ljava/lang/Class;

    move-result-object v0

    if-nez p1, :cond_5

    .line 142
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->getDefaultValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    .line 144
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 145
    invoke-static {p1, v0}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 148
    :cond_6
    :goto_4
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->function:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 151
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->biFunction:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->parameters:[Ljava/lang/reflect/Parameter;

    array-length v0, v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_c

    .line 152
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->hashCodes:[J

    aget-wide v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->parameters:[Ljava/lang/reflect/Parameter;

    aget-object v1, v1, v2

    .line 154
    invoke-virtual {v1}, Ljava/lang/reflect/Parameter;->getType()Ljava/lang/Class;

    move-result-object v1

    if-nez v0, :cond_8

    .line 156
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getDefaultValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    .line 158
    :cond_8
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 159
    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->hashCodes:[J

    aget-wide v1, v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 164
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->parameters:[Ljava/lang/reflect/Parameter;

    aget-object v1, v1, v4

    .line 165
    invoke-virtual {v1}, Ljava/lang/reflect/Parameter;->getType()Ljava/lang/Class;

    move-result-object v1

    if-nez p1, :cond_a

    .line 167
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->getDefaultValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_6

    .line 169
    :cond_a
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 170
    invoke-static {p1, v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 174
    :cond_b
    :goto_6
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->biFunction:Ljava/util/function/BiFunction;

    invoke-interface {v1, v0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 177
    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->parameters:[Ljava/lang/reflect/Parameter;

    array-length v0, v0

    .line 178
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Object;

    .line 180
    iget-boolean v5, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->marker:Z

    if-eqz v5, :cond_11

    move v5, v2

    move v6, v5

    :goto_7
    if-ge v5, v0, :cond_15

    .line 183
    iget-object v7, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->hashCodes:[J

    aget-wide v7, v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 185
    aput-object v7, v3, v5

    goto :goto_8

    :cond_d
    shl-int v7, v4, v5

    or-int/2addr v6, v7

    .line 188
    iget-object v7, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->parameters:[Ljava/lang/reflect/Parameter;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/lang/reflect/Parameter;->getType()Ljava/lang/Class;

    move-result-object v7

    .line 189
    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 190
    invoke-static {v7}, Lcom/alibaba/fastjson2/util/TypeUtils;->getDefaultValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v3, v5

    :cond_e
    :goto_8
    add-int/lit8 v7, v5, 0x1

    .line 194
    rem-int/lit8 v8, v7, 0x20

    if-eqz v8, :cond_f

    if-ne v7, v0, :cond_10

    .line 195
    :cond_f
    div-int/lit8 v5, v5, 0x20

    add-int/2addr v5, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    move v6, v2

    :cond_10
    move v5, v7

    goto :goto_7

    :cond_11
    :goto_9
    if-ge v2, v0, :cond_15

    .line 201
    iget-object v4, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->parameters:[Ljava/lang/reflect/Parameter;

    aget-object v4, v4, v2

    .line 202
    invoke-virtual {v4}, Ljava/lang/reflect/Parameter;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 203
    invoke-virtual {v4}, Ljava/lang/reflect/Parameter;->getParameterizedType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 204
    iget-object v6, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->hashCodes:[J

    aget-wide v6, v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_12

    .line 206
    invoke-static {v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->getDefaultValue(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_a

    .line 208
    :cond_12
    invoke-virtual {v5, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 209
    invoke-static {v6, v5}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_a

    .line 210
    :cond_13
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_14

    .line 211
    invoke-static {v6, v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    .line 214
    :cond_14
    :goto_a
    aput-object v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 219
    :cond_15
    :try_start_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    return-object p1

    :catch_4
    move-exception p1

    goto :goto_b

    :catch_5
    move-exception p1

    goto :goto_b

    :catch_6
    move-exception p1

    goto :goto_b

    :catch_7
    move-exception p1

    .line 222
    :goto_b
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ConstructorFunction;->constructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
